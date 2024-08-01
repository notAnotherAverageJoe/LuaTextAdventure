dofile("Helper.lua")

function Raiding(adventurer)
    print("Orcs quickly surround you and attack you! LOOK OUT " .. adventurer.name .. " What will you do?")
    choice = getUserInput("1: Will you stand and fight? | 2: Or will you try and escape for now? ")
end
