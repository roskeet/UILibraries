local Library = require(script.Parent.UI)
local window = Library:newWindow()

local Misc = window:newTab({Icon=8547256547,Name="Misc"})
local Players = window:newTab({Icon=8547269749,Name="Players"})

local Extra = Misc:newSection({Name="Extra",Side="Left"})

local ChangeFOV = Extra:newToggle({Name="Change FOV",Callback=function(val)print(val)end})