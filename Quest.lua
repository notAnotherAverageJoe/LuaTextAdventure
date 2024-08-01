dofile("Helper.lua")

function Raiding(adventurer)
    print("Goblins quickly surround you and attack you! LOOK OUT " .. adventurer.name .. " What will you do?")
    choice = getUserInput("1: Will you stand and fight? | 2: Or will you try and escape for now? ")

    if (choice == "1") then
        print("You are a strong adventurer and no amount Goblins are going to stop you!")
        --add more
    else
        print(adventurer.name ..
            " You have opted to escape for now, a smart move...perhaps..or the first signs of a coward.... we shall see.")
    end
end
