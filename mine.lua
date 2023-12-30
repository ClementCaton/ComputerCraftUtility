function main()
    turtle.select(1)
    success, itemName = turtle.getItemDetail().name
    if success == false or itemName ~= "enderchests:ender_chest" then
        print("Please place the ender chest in the 1st slot of the turtle inventory")
        print("Otherwise, the program will not start")
        while true do
            turtle.select(1)
            itemName = turtle.getItemDetail().name
            if itemName == "enderchests:ender_chest" then
                break
            end
        end
    end


    print("Starting the mining process")
    while true do
        success, data = turtle.inspectDown()
        if success then
            if data.name == "minecraft:bedrock" then
                break
            end
        end
        for i = 1, 16, 2 do
                -- Row 1
            onward(15)
            turtle.turnLeft()
            onward(1)
            turtle.turnLeft()
            throwJunk()
                -- Row 2
            onward(15)
            turtle.turnRight()
            onward(1)
            turtle.turnRight()
            throwJunk()
                -- Checking fuel level
            print(turtle.getFuelLevel())
        end
        -- Go back to the original position
        turtle.turnRight()
        onward(16)
        turtle.turnLeft()
        floorBelow()
    end
end

function floorBelow()
    for i = 1, 3, 1 do
        turtle.digDown()
        turtle.down()
    end
end

function throwJunk()
    -- List of useless blocks
    uselessList = {"minecraft:cobblestone", "minecraft:stone", "minecraft:gravel", "minecraft:dirt", "minecraft:flint", "minecraft:cobbled_deepslate", "minecraft:slate"}
    -- List of usable fuel
    fuelList = {"minecraft:coal", "minecraft:charcoal"}
    -- Ensure that the block below is dug out
    turtle.digDown()
    -- Select the first slot where the ender chest is
    turtle.select(1)
    -- Place the ender chest
    turtle.placeDown()
    -- Throw all the junk on the ground and the rest in the ender chest
    for i = 1, 16, 1 do
        -- Iterate through all the slots
        turtle.select(i)
        -- Check if the slot is empty
        if turtle.getItemCount() > 0 then
            X = turtle.getItemDetail().name
            -- If not, then check if the item is in the useless list
            for j = 1, #uselessList, 1 do
                -- If it is, then throw it on the ground
                if X == uselessList[j] then
                    turtle.drop()
                end
            end
            -- If the turtle is "low" on fuel and has fuel, then use it
            if turtle.getFuelLevel() < 3200 then
                for j = 1, #fuelList, 1 do
                    -- If it is, then throw it on the ground
                    if X == fuelList[j] then
                        turtle.refuel()
                    end
                end
            end
            -- If it is not, then throw it in the ender chest
            turtle.dropDown()
        end
    end
    -- Pick up the ender chest on the first slot
    turtle.select(1)
    turtle.dropDown()
    turtle.digDown()
end

function onward(block)
    for i = 1, block, 1 do
        turtle.dig()
        turtle.digUp()
        turtle.digDown()
        while turtle.forward() == false do
            turtle.dig()
        end
    end
end

main()
