function FullRefuel()
      for i = 1, 16, 1 do
            turtle.select(i)
            turtle.refuel(64)
        end
    turtle.select(1)
end

function AwaitMature()
    _,Data = turtle.inspect()
    if Data.state.age < 7 then
        return false
    else
        return true
    end
end

function DigIfMature()
    _,Data = turtle.inspect()
    if Data.state.age == 7 then
        turtle.dig()
        turtle.place()
        if turtle.getItemCount() > 0 then
            turtle.dropDown(turtle.getItemCount()-1)
        end
    end
end

function TurnIfBlock()
    Block,_ = turtle.inspect()
    if Block then
        turtle.turnRight()
    else
        turtle.forward()
        turtle.turnLeft()
    end 
end

function Routine()
    if AwaitMature() then
        DigIfMature()
        turtle.turnRight()
        TurnIfBlock()
    end
end

FullRefuel()
while true do
    Routine()
end