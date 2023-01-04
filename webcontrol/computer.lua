modem = peripheral.wrap("left")
modem.open(1)

local instruction = ""

function Retreive()
    instruction = http.get("http://84.7.122.8:8080/instruction").readAll()
    
end