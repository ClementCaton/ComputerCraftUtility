Go = true

function AwaitMature()
    _,data = turtle.inspect()
    if data.state.age < 7 then
        Go = false
    else
        Go = true
    end
end

function DigIfMature()
    block,data = turtle.inspect()
    if data.state.age == 7 then
        turtle.dig()
        turtle.place()
        turtle.drop(turtle.getItemCount()-1)
    end
end

function TurnIfBlock()
    block,data = turtle.inspect()
    if block then
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