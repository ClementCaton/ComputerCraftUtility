while true do
    Monitor = peripheral.wrap("right")
    Data = http.get("http://78.112.232.26/data.txt")
    Monitor.clear()
    Monitor.setCursorPos(1,1)
    Monitor.write(Data.readAll())
end