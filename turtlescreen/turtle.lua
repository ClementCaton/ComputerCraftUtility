local mined = 0

local junk = {
    "minecraft:cobblestone",
    "minecraft:stone",
    "minecraft:gravel",
    "minecraft:dirt",
    "minecraft:flint",
    "minecraft:cobbled_deepslate",
    "minecraft:slate"
}

modem = peripheral.wrap("left")
modem.open(1)

function Main()
    while true do
        IsLowOnFuel()
        Onward(10)
        turtle.turnLeft()
        Onward(0)
        turtle.turnLeft()
        Onward(10)
        ThrowJunk()
        turtle.turnRight()
        Onward(0)
        turtle.turnRight()
        print(turtle.getFuelLevel())
    end
end

function updateFuelLevel()
    modem.transmit(3, 1, "I mined "..mined.." blocks and have "..turtle.getFuelLevel().." fuel left.")
end

function ThrowJunk()
    for i = 1, 16, 1 do
        turtle.select(i)
        if turtle.getItemCount() > 0 then
            X = turtle.getItemDetail().name
            for _,value in ipairs(junk) do -- Iterate over the junk table and drop the item if it matches
                if X == value then
                    turtle.drop()
                end
            end
        end
    end
    turtle.select(1)
end

function IsLowOnFuel()
    if turtle.getFuelLevel() < 64 then
        for i = 1, 16, 1 do
            turtle.select(i)
            turtle.refuel(64)
        end
    end
    turtle.select(1)
end

function Onward(block)
    for i = 0, block, 1 do
        turtle.dig()
        turtle.digUp()
        turtle.digDown()
        mined = mined + 3
        while turtle.forward() == false do
            turtle.dig()
            mined = mined + 1
        end
    end
end

Main()
