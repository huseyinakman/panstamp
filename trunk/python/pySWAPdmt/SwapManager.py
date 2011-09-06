#########################################################################
#
# SwapManager
#
# Copyright (c) 2011 Daniel Berenguer <dberenguer@usapiens.com>
#
# This file is part of the panStamp project.
#
# panStamp  is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# panStamp is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with panLoader; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301
# USA
#
#########################################################################
__author__="Daniel Berenguer"
__date__ ="$Aug 21, 2011 4:30:47 PM$"
#########################################################################

from swap.SwapServer import SwapServer
from swap.SwapDefs import SwapState, SwapType

class SwapManager:
    """ SWAP Management Tool """
    def newMoteDetected(self, mote):
        """ New mote detected by SWAP server """
        if self._printSWAP == True:
            print "New mote with address " + str(mote.address) + " : " + mote.definition.product + \
            " (by " + mote.definition.manufacturer + ")"


    def newEndpointDetected(self, endpoint):
        """ New endpoint detected by SWAP server """
        if self._printSWAP == True:
            print "New endpoint with Reg ID = " + str(endpoint.getRegId()) + " : " + endpoint.description


    def moteStateChanged(self, mote):
        """ Mote state changed """
        if self._printSWAP == True:
            print "Mote with address " + str(mote.address) + " switched to \"" + \
            SwapState.toString(mote.state) + "\""
        # SYNC mode entered?
        if mote.state == SwapState.SYNC:
            self._addrInSyncMode = mote.address


    def moteAddressChanged(self, mote):
        """ Mote address changed """
        if self._printSWAP == True:
            print "Mote changed address to " + str(mote.address)


    def endpointValueChanged(self, endpoint):
        """ Endpoint value changed """
        if self._printSWAP == True:
            if endpoint.type == SwapType.NUMBER:
                strVal = str(endpoint.value.toInteger())
            else:
                strVal = endpoint.value.toAscii()
            print endpoint.description + " in address " + str(endpoint.getRegAddress()) + " changed to " + strVal


    def getAddressInSync(self):
        """ Return the address of the mote currently in SYNC mode """
        return self._addrInSyncMode


    def resetAddressInSync(self):
        """ Reset _addrInSyncMode variable """
        self._addrInSyncMode = None


    def getNbOfMotes(self):
        """ Return the amounf of motes available in the list"""
        return self.server.getNbOfMotes()


    def getNbOfEndpoints(self):
        """ Return the amount of endpoints available in the list"""
        return self.server.getNbOfEndpoints()


    def getMote(self, index=None, address=None):
        """ Return mote from list"""
        return self.server.getMote(index, address)


    def getEndpoint(self, index=None):
        """ Return endpoint from list"""
        return self.server.getEndpoint(index)


    def setMoteRegister(self, mote, regId, value):
        """ Set new register value on wireless mote
        Return True if the command is correctly ack'ed. Return False otherwise """
        return server.setMoteRegister(mote, regId, value)


    def queryMoteRegister(self, mote, regId):
        """ Query mote register, wait for response and return value
        Non re-entrant method!! """
        return server.queryMoteRegister(mote, regId)


    def stop(self):
        """ Stop SWAP server """
        self.server.stop()


    def __init__(self, verbose=False, monitor=False):
        # Print SWAP activity
        self._printSWAP = monitor
        # Mote address in SYNC mode
        self._addrInSyncMode = None
        # Start SWAP server
        print "SWAP server starting... "
        self.server = SwapServer(self, verbose)
        print "SWAP server is now running... "