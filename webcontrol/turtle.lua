modem = peripheral.wrap("left")
local Id = os.getComputerID()
modem.open(Id)

modem.transmit(1, Id, "Turtle "..Id.." online")