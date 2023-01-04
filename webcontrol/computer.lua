modem = peripheral.wrap("left")
modem.open(1)

screen = peripheral.wrap("right")
screen.setTextScale(0.5)

local instruction = ""

while true do
    local event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message")
    screen.setCursorPos(1,12)
    screen.write(message)
    screen.scroll(1)
end