
local window = Library:newWindow()
local Misc = window:newTab({
    Icon = 8547256547, -- Roblox asset ID for the tab icon
    Name = "Misc"      -- Name displayed for the tab
})

local Extra = Misc:newSection({
    Name = "Extra", -- Name displayed for the section
    Side = "Left"   -- Placement of section (Left or Right)
})

local toggle = Extra:newToggle({
    Name = "Example Toggle",
    Callback = function(state) print("Toggle state:", state) end,
    Default = false,
    Bind = {true, Enum.KeyCode.T, "Toggle"}
})

local bind = Extra:newBind({
    Name = "Example Bind",
    Callback = function(state) print("Bind state:", state) end,
    Key = Enum.KeyCode.LeftAlt,
    Mode = "On hotkey"
})

local text = Extra:newText({
    Name = "Example Text",
    Text = "Sample Text Content",
    TextAlignment = Enum.TextXAlignment.Center
})

local button = Extra:newButton({
    Name = "Example Button",
    Text = "Click Me",
    Callback = function() print("Button clicked") end
})

local slider = Extra:newSlider({
    Name = "Example Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Decimals = 1,
    Suffix = "%",
    Callback = function(value) print("Slider value:", value) end,
    Bind = {true, Enum.KeyCode.P, "Toggle"}
})

local selectbox = Extra:newSelectbox({
    Name = "Example Selectbox",
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Choice = "single",
    Callback = function(value) print("Selected:", value) end
})

local searchbox = Extra:newSearchbox({
    Name = "Example Searchbox",
    Options = {"Apple", "Banana", "Cherry"},
    Default = "",
    Callback = function(value) print("Search selected:", value) end
})