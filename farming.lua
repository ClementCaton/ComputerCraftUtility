Go = true

function AwaitMature()
    _,Data = turtle.inspect()
    if Data.state.age < 7 then
        Go = false
    else
        Go = true
    end
end

function DigIfMature()
    _,Data = turtle.inspect()
    if Data.state.age == 7 then
        turtle.dig()
        turtle.place()
        turtle.drop(turtle.getItemCount()-1)
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
    if Go then
        DigIfMature()
        turtle.turnRight()
        TurnIfBlock()
    else
        AwaitMature()
    end
end

while true do
    Routine()
end