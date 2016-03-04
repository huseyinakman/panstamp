  * [Introduction](LowLevelLibrary#Introduction.md)
  * [CC1101 class](LowLevelLibrary#CC1101_class.md)
    * [receiveData method](LowLevelLibrary#receiveData_method.md)
    * [sendData method](LowLevelLibrary#sendData_method.md)
  * [Basic example](LowLevelLibrary#Basic_example.md)
  * [Some other examples](LowLevelLibrary#Some_examples.md)
  * [Power management](LowLevelLibrary#Power_management.md)

# Introduction #

As said in other documentation pages, the PANSTAMP class, available from our Arduino library, is the preferred way to develop new applications for panStamps. However, some users will still prefer to write their own transmission/reception functions in order to get more control over the wireless communications. This is mainly the case for the following scenarios:

  1. Developments that don't need to interoperate via SWAP with other devices
  1. Applications already developed for other wireless solutions (ex: XBees) which need to be quickly ported to panStamp with no support for SWAP.

# CC1101 class #

The [CC1101 class](CC1101class.md) contained in the panstamp library provides simple mechanisms to send and receive wireless packets. The most interesting methods are _receiveData_ and _sendData_.

## receiveData method ##

From cc1101.h:

```
/**
 * receiveData
 * 
 * Read data packet from RX FIFO
 *
 * 'packet'	Container for the packet received
 * 
 * Return:
 * 	Amount of bytes received
 */
byte receiveData(CCPACKET * packet);
```

_receiveData_ takes a pointer to the CCPACKET received as argument. In order to detect incoming packets, developers have to interrupt their application whenever Atmega's INT0 pin goes to low:

```
attachInterrupt(0, myCallbackFunct, FALLING);
```

Then, _receiveData_ has to be called from _myCallbackFunct_:

```
void myCallbackFunct(void)
{
  CCPACKET ccPacket;

  // Read incoming wireless packet (if any)
  if (cc1101.receiveData(&ccPacket) > 0)
  {
    // If CRC is OK
    if (ccPacket.crc_ok)
    {
      // status->value.data : data bytes
      // status->value.length: data length
    }
  }
}
```

## sendData method ##

From cc1101.h:

```
/**
 * sendData
 * 
 * Send data packet via RF
 * 
 * 'packet'	Packet to be transmitted. First byte is the destination address
 *
 *  Return:
 *    True if the transmission succeeds
 *    False otherwise
 */
boolean sendData(CCPACKET packet);
```

_sendData_ is a simple method which takes the packet to be sent as argument. The first data byte needs to be the destination address of the wireless packet. Leave this byte to 0 if you want to broadcast your transmission. The following example sends one byte (100) to the address 5:

```
  CCPACKET packet;

  packet.length=2;
  packet.data[0] = 5;    // destination address
  packet.data[1] = 100;  // data byte

  if(cc1101.sendData(packet))
  {
    // Transmission completed
  }
```

# Basic example #

The following example can be programmed in any number of panStamps. Any node running this application will act as transmitter and receiver and will toggle an LED connected to digital pin 4 upon recepit of a wireless packet. This sketch has address check disabled so packets are received by all nodes in the same network.

basicradio.ino
```
#include "EEPROM.h"
#include "cc1101.h"

#define LEDOUTPUT        4       // Connect led to digital pin 4
#define RFCHANNEL        0       // Let's use channel 0
#define SYNCWORD1        0xB5    // Synchronization word, high byte
#define SYNCWORD0        0x47    // Synchronization word, low byte
#define SOURCE_ADDR      4       // Sender address
#define DESTINATION_ADDR 5       // Receiver address

CC1101 cc1101;      // radio object
CCPACKET txPacket;  // packet object
byte count = 0;

/**
 * This function is called whenever a wireless packet is received
 */
void rfPacketReceived(void)
{
  CCPACKET packet;
    
  // Disable wireless reception interrupt
  detachInterrupt(0);
  if(cc1101.receiveData(&packet) > 0)
  {
    
    if (packet.crc_ok/* && packet.length > 1*/)
    {
      // The LED will toggle when a new packet is received
      digitalWrite(LEDOUTPUT, !digitalRead(LEDOUTPUT));

      // packet.data[0];   // Our source address
      // packet.data[1];   // Self-incrementing value generated by the sender
      // packet.data[2];   // Self-incrementing value generated by the sender
      // ...
    }
  }

  // Enable wireless reception interrupt
  attachInterrupt(0, rfPacketReceived, FALLING);
}

void setup()
{
  // Setup LED output pin
  pinMode(LEDOUTPUT, OUTPUT);
  digitalWrite(LEDOUTPUT, LOW);

  // Init RF IC
  cc1101.init();
  cc1101.setChannel(RFCHANNEL, false);
  cc1101.setSyncWord(SYNCWORD1, SYNCWORD0, false);
  cc1101.setDevAddress(SOURCE_ADDR, false);

  // Let's disable address check for the current project so that our device
  // will receive packets even not addressed to it.
  cc1101.disableAddressCheck();

  attachInterrupt(0, rfPacketReceived, FALLING);
}

void loop()
{
  txPacket.length = 6;  // Let's send a single data byte plus the destination address

  // Data payload:
  txPacket.data[0] = DESTINATION_ADDR;   // First data byte has to be the destination address
  txPacket.data[1] = count++;            // Self-incrementing value 
  txPacket.data[2] = count++;            // Self-incrementing value
  txPacket.data[3] = count++;            // Self-incrementing value
  txPacket.data[4] = count++;            // Self-incrementing value
  txPacket.data[5] = count++;            // Self-incrementing value
  cc1101.sendData(txPacket);             // Transmit packet
   
  delay(5000);                           // Transmit every 5 seconds
  // For low-power applications replace "delay" by "panstamp.sleepWd(WDTO_8S)" for example
}
```

# Some other examples #

Matthias Stolt has provided [in the forum](http://www.panstamp.org/forum/showthread.php?tid=22) some good examples about the use of the CC1101 class. We have included these examples here for clarity:

The following is a sender application which transmits a counter value every two seconds:

```
#include "EEPROM.h"
#include "cc1101.h"

#define LEDOUTPUT 4  // Arduino's digital pin 4 = panStamp's pin 19

// The syncWord of sender and receiver must be the same
byte syncWord[] = {19, 9};
byte senderAddress = 4;
byte receiverAddress = 5;

// The connection to the hardware chip CC1101 the RF Chip
CC1101 cc1101;

// counter to get increment in each loop
byte counter;

/**
* Let the LED Output blink one time.
* 
* With small pause after the blink to see two consecutive blinks. 
*/
void blinker(){
      digitalWrite(LEDOUTPUT, HIGH);
      delay(100);
      digitalWrite(LEDOUTPUT, LOW);
      delay(100);
}

/**
* The setup method gets called on start of the system.
*/
void setup()
{
  Serial.begin(38400);
  Serial.println("start");

  // setup the blinker output
  pinMode(LEDOUTPUT, OUTPUT);
  digitalWrite(LEDOUTPUT, LOW);

  // blink once to signal the setup
  blinker();
  
  // reset the counter
  counter=0;
  
  // initialize the RF Chip
  cc1101.init();
  cc1101.setSyncWord(syncWord, false);
  cc1101.setDevAddress(senderAddress, false);
  Serial.println("device initialized");

  Serial.print("set sender address to ");
  Serial.println(senderAddress);
  Serial.println("done");
}

/**
* The loop method gets called on and on after the start of the system.
*/
void loop()
{
  Serial.println("loop");
  
  CCPACKET data;
  data.length=2;
  byte blinkCount=counter++;
  // the first byte in the data is the destination address
  // it must match the device address of the receiver
  Serial.println("set address to ");
  data.data[0]=receiverAddress;
  data.data[1]=blinkCount;
  if(cc1101.sendData(data)){
    Serial.print("ok ");
    Serial.println(blinkCount);
    for(int j=0; j<blinkCount; j++){
      blinker();
    }
  }else{
    Serial.print("failed ");
    Serial.println(blinkCount);    
    blinker();
    blinker();
  }  
  Serial.println("loop done");    
  delay(2000);
}
```

And this is the code of the receiver application:

```
#include "EEPROM.h"
#include "cc1101.h"

// The LED is wired to the Arduino Output 4 (physical panStamp pin 19)
#define LEDOUTPUT 4
// The syncWord of sender and receiver must be the same
byte syncWord[] = {19, 9};
byte receiverAddress = 5;

// The connection to the hardware chip CC1101 the RF Chip
CC1101 cc1101;

// a flag that a wireless packet has been received 
boolean packetAvailable = false;         

/**
* Let the LED Output blink one time.
* 
* With small pause after the blink to see two consecutive blinks. 
*/
void blinker(){
      digitalWrite(LEDOUTPUT, HIGH);
      delay(100);
      digitalWrite(LEDOUTPUT, LOW);
      delay(100);
}

/**
* Handle interrupt from CC1101 (INT0)
*/
void cc1101signalsInterrupt(void){
  // set the flag that a package is available
  packetAvailable = true;
}

/**
* The setup method gets called on start of the system.
*/
void setup()
{
  Serial.begin(38400);
  Serial.println("start");

  // setup the blinker output
  pinMode(LEDOUTPUT, OUTPUT);
  digitalWrite(LEDOUTPUT, LOW);

  // blink once to signal the setup
  blinker();
  
  // initialize the RF Chip
  cc1101.init();
  cc1101.setSyncWord(syncWord, false);
  
  // this device address need to match the target address in the sender
  cc1101.setDevAddress(receiverAddress, false);
  cc1101.enableAddressCheck(); // you can skip this line, because the default is to have the address check enabled
  cc1101.setRxState();
  // Enable wireless reception interrupt
  attachInterrupt(0, cc1101signalsInterrupt, FALLING);
  Serial.println("device initialized");

  Serial.println("setup done");
}

/**
* The loop method gets called on and on after the start of the system.
*/
void loop()
{
  if(packetAvailable){
    // clear the flag
    packetAvailable = false;
    
    CCPACKET packet;
    
    // Disable wireless reception interrupt
    detachInterrupt(0);
    
    if(cc1101.receiveData(&packet) > 0){
      if (packet.crc_ok && packet.length > 1){
        Serial.print("packet: len");
        Serial.print(packet.length);
        Serial.print(" data1: ");
        Serial.println(packet.data[1]);
        for(int j=0; j<packet.data[1]; j++){
          blinker();
        }
      }
    }
    
    // Enable wireless reception interrupt
    attachInterrupt(0, cc1101signalsInterrupt, FALLING);
  }
}
```

# Power management #

The CC1101 class only lets us set the power state of the CC1101 IC. However, we need to control the power consumption of the complete panStamp board. In order to achieve this, we can borrow some of the power management methods from the panStamp class. For example, _sleepWd_ is a basic method that lets us put the panStamp into deep sleep for some seconds.

From panstamp.h:

```
/**
 * sleepWd
 * 
 * Put panStamp into Power-down state during "time".
 * This function uses the internal watchdog timer in order to exit (interrupt)
 * from the power-doen state
 * 
 * 'time'	Sleeping time:
 *  WDTO_15MS  = 15 ms
 *  WDTO_30MS  = 30 ms
 *  WDTO_60MS  = 60 ms
 *  WDTO_120MS  = 120 ms
 *  WDTO_250MS  = 250 ms
 *  WDTO_500MS  = 500 ms
 *  WDTO_1S = 1 s
 *  WDTO_2S = 2 s
 *  WDTO_4S = 4 s
 *  WDTO_8S = 8 s
 */
void sleepWd(byte time);
```

You can easily call this method from your application loop as follows:

```
void loop()
{
  // Run here your tasks...

  panstamp.sleepWd(WDTO_8S);
}
```

Running the above code will let your application run the necessary tasks, then go to sleep for eight seconds and then wake up again to restart the job.