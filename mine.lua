function Main()
    while true do
        IsLowOnFuel()
        Onward(50)
        turtle.turnLeft()
        Onward(1)
        turtle.turnLeft()
        Onward(50)
        ThrowJunk()
        turtle.turnRight()
        Onward(1)
        turtle.turnRight()
        print(turtle.getFuelLevel())
    end
end

function ThrowJunk()
    for i = 1, 16, 1 do
        turtle.select(i)
        if turtle.getItemCount() > 0 then
            X = turtle.getItemDetail().name
            if X == "minecraft:cobblestone" or X == "minecraft:stone" or X == "minecraft:gravel" or X == "minecraft:dirt" or X == "minecraft:flint" or X == "minecraft:cobbled_deepslate" or X == "minecraft:slate" then
                turtle.drop()
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
    for i = 1, block, 1 do
        turtle.dig()
        turtle.digUp()
        turtle.digDown()
        while turtle.forward() == false do
            turtle.dig()
        end
    end
end

Main()
