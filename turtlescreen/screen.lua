-- This code goes in a computer that is connected to a monitor on it's rigth and a wireless modem on it's left.

monitor = peripheral.wrap("right")
monitor.setTextScale(0.5)
monitor.clear()

modem = peripheral.wrap("left")
modem.open(3)

while true do
    monitor.setCursorPos(1,1)
    monitor.write("Turtle Fuel Level: ")
    monitor.setCursorPos(1,2)
    local event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
    monitor.write(message)
end