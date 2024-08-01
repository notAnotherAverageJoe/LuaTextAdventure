dofile("Quest.lua")
dofile("Helper.lua")


local term = require("term")
local colors = term.colors

print(colors.red .. "This text is red" .. term.colors.reset)






local Adventurer = {}
Adventurer.__index = Adventurer

-- Constructor for Adventurer
function Adventurer:new(name, age, class)
    local self = setmetatable({}, Adventurer)
    self.name = name or "Unknown"
    self.age = tonumber(age) or 100
    self.class = class or "Unknown"
    self.health = 100
    return self
end

-- Print the adventurer's info
function Adventurer:Display()
    print(colors.green .. "Adventurer created!" .. term.colors.reset)
    print("Name:", self.name)
    print("Age:", self.age)
    print("Class:", self.class)
    print("Health:", self.health)
end

-- Get user input for name, age, and class
local name = getUserInput("Enter adventurer's name")
local age = getUserInput("Enter adventurer's age")
local class = getUserInput("What class are you")

-- Create a new adventurer
local MyAdventurer = Adventurer:new(name, age, class)

-- Display the adventurer's information
print("A new hero arises!")
MyAdventurer:Display()
choice = getUserInput(MyAdventurer.name .. " Are you ready? 'y' or 'n' ")
if choice == 'y' then
    Raiding(MyAdventurer)
else
    print("Goodbye friend.")
end
