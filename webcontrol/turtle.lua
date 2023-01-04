modem = peripheral.wrap("left")
local Id = os.getComputerID()
modem.open(Id)

modem.transmit(1, Id, "Turtle "..Id.." online")
modem.transmit(1, Id, "Turtle "..Id.." has "..turtle.getFuelLevel().." fuel")
modem.transmit(1, Id, "Turtle "..Id.." is ready to receive instructions")
while true do

end