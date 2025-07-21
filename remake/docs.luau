local Library = require(script.Parent.UI)

local window = Library:newWindow()

local Misc = window:newTab({Icon=8547256547,Name="Misc"})

local Extra = Misc:newSection({Name="Extra",Side="Left"})
local Menu = Misc:newSection({Name="UI Settings",Side="Right"})

local ChangeFOV = Extra:newToggle({ 
	Name = "Change FOV",
	Callback=function(val)
		print("changing fov")
	end,
	Default=true,
	Bind = {
		true,
		Enum.KeyCode.Q, 
		"On hotkey"
	}
})

local CRCInfo = Extra:newText({ 
	Name = "About CRC",
	Text = [[If game starting to <font color="rgb(255,100,100)">lag</font>,
do <font color="#8fb726">clear</font> on bind!]],
	TextAlignment = Enum.TextXAlignment.Center
})

local clown = Extra:newButton({
	Name = "🤡🤡",
	Text = ":clown:",
	Callback = function()
		print("clown 🤡🤡")
	end,
})

local Predict = Extra:newSlider({
	Name = "Predict",
	Min = 0,
	Max = 3,
	Decimals = 3,
	Default = 1.750,
	Suffix = " units",
	Bind = {
		true, 
		Enum.KeyCode.R,
	"On hotkey"
	},
	Callback = function(val)
		print(val)
	end,
})

local selectbox = Extra:newSelectbox({
	Name = "Resort Method",
	Options = {"Bubble Sort", "Quick Sort", "Merge Sort"},
	Default = "Quick Sort",
	Choice = "multi",
	Callback = function(value)
		print("Selected method:", value)
	end,
})

local selectbox = Extra:newSearchbox({
	Name = "Unsort Method",
	Options = {"1 Sort", "2 Sort", "Merge","3 Sort","Sort"},
	Default = "Quick Sort",
	Callback = function(value)
		print("Selected method:", value)
	end,
})

local CallMenu = Menu:newBind({ 
	Name = "Menu bind",
	Callback = function()
		window:ToggleVisibility()
	end,
	Key = Enum.KeyCode.Insert,
	Mode = "Toggle"
})

local UIScaling = Menu:newSelectbox({
	Name = "UI Scale",
	Options = {"Small (0.75)", "Default (1)", "Big (1.5)"},
	Default = "Default (1)",
	Choice = "single",
	Callback = function(value)
		local scale = tonumber(value:match("%((%d%.?%d*)%)"))
		if scale then
			window["UIScale"].Scale = scale
		end
	end,
})
	
local TextBox = Menu:newTextbox({
	Name = "PLS FUCK U",
	Callback = function(value)
		print(value)
	end,
})
	
local Colorpicker = Menu:newColorpicker({
	Name = "Penis color",
	Default = Color3.fromRGB(255, 139, 255),
	Callback = function(value)
		print(value)
	end,
})