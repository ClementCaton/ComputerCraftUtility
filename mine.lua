---@diagnostic disable: undefined-global
function main()
    while true do
        IsLowOnFuel()
        Onward(10)
        turtle.turnLeft()
        turtle.onward(1)
        turtle.turnLeft()
        Onward(10)
        turtle.turnRight()
        turtle.onward(1)
        turtle.turnRight()
    end
end

function ThrowJunk()
    for i = 1, 16, 1 do
        turtle.select(i)
        if turtle.getItemDetail().name == "minecraft:cobblestone" then
            for i = 0, turtle.getItemDetail().count , 1 do
                turtle.dropDown()
            end            
        end
        if turtle.getItemDetail().name == "minecraft:stone" then
            for i = 0, turtle.getItemDetail().count , 1 do
                turtle.dropDown()
            end            
        end
        if turtle.getItemDetail().name == "minecraft:gravel" then
            for i = 0, turtle.getItemDetail().count , 1 do
                turtle.dropDown()
            end            
        end
        if turtle.getItemDetail().name == "minecraft:dirt" then
            for i = 0, turtle.getItemDetail().count , 1 do
                turtle.dropDown()
            end            
        end
    end
end

function IsLowOnFuel()
    if turtle.getFuelLevel() < 64 then
        for i = 1, 16, 1 do
            turtle.select(i)
            turtle.refuel(64)
        end
    end
end

function Onward(block)
    for i = 0, block, 1 do
        turtle.dig()
        turtle.digUp()
        turtle.digDown()
        turtle.forward()
    end
end
