-- still in beta, except bugs.
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/thesigmacorex/Lumware-Library/refs/heads/main/library.lua"))()

-- 1. CREATE WINDOW
local Window = Library:CreateWindow({
    Name = "Lumware Library",
    Subtitle = "v1.0 (made by corex btw)"
})

-- 2. CREATE TAB
local ChangeTabNameIfUWant = Window:CreateTab({
    Name = "Test Tab Bro",
    Icon = "🔥" -- any emoji or text
})

-- 3. SEND NOTIFICATION
Window:Notify({
    Title = "Notification Title",
    Content = "Notification message here",
    Duration = 3, -- seconds
    Type = "Success" -- "Success", "Warning", "Error", or "Info"
})



-- 1. BUTTON
ChangeTabNameIfUWant:AddButton({
    Name = "Button Name",
    Description = "Optional description text",
    Callback = function()
        print("Button clicked!")
    end
})

-- 2. TOGGLE -- WORKS
local Toggle = ChangeTabNameIfUWant:AddToggle({
    Name = "Toggle Name",
    Description = "Optional description",
    Default = false,
    Flag = "MyToggle",
    Callback = function(value)
        print("Toggle is now:", value)
    end
})

-- 3. SLIDER -- WORKS
local Slider = ChangeTabNameIfUWant:AddSlider({
    Name = "Slider Name",
    Min = 0,
    Max = 100,
    Default = 50,
    Increment = 1,
    Flag = "MySlider",
    Callback = function(value)
        print("Slider value:", value)
    end
})

-- 4. INPUT / TEXTBOX
local Input = ChangeTabNameIfUWant:AddInput({
    Name = "Input Name",
    Placeholder = "Type here...",
    Default = "",
    Flag = "MyInput",
    Callback = function(text)
        print("Input text:", text)
    end
})

--[[ 5. DROPDOWN -- BUGGY, PLEASE DONT USE IT FOR NOW.
local Dropdown = ChangeTabNameIfUWant:AddDropdown({
    Name = "Dropdown Name",
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Flag = "MyDropdown",
    Callback = function(option)
        print("Selected:", option)
    end
})
--]]

local Label = ChangeTabNameIfUWant:AddLabel("This is just some text")

ChangeTabNameIfUWant:AddSection("Section Title Here")
