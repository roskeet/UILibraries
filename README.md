
# Roskeet UI Library

A lightweight UI library for creating customizable user interfaces in Roblox.

## Setup
```lua
local Library = require(<link>)
local window = Library:newWindow()
```

## API

### Window
```lua
local window = Library:newWindow()
```

### Tab
```lua
local tab = window:newTab({
    Icon = number, -- Roblox asset ID
    Name = string  -- Tab display name
})
```

### Section
```lua
local section = tab:newSection({
    Name = string, -- Section name
    Side = string  -- "Left" or "Right"
})
```

### Toggle
```lua
local toggle = section:newToggle({
    Name = string,                -- Toggle name
    Callback = function(state),   -- Called with boolean state
    Default = boolean,           -- Default state (optional, default: false)
    Bind = {boolean, Enum.KeyCode, string} -- {enabled, key, mode} (optional)
})
-- Methods: SetState(boolean), GetValue(), Destroy()
```

### Bind
```lua
local bind = section:newBind({
    Name = string,                -- Bind name
    Callback = function(state),   -- Called with boolean state
    Key = Enum.KeyCode,          -- Default key (optional, default: LeftAlt)
    Mode = string,               -- "On hotkey", "Always on", "Toggle", "Off hotkey" (optional)
    Bind = {boolean, Enum.KeyCode, string} -- (optional)
})
-- Methods: GetValue(), Destroy()
```

### Text
```lua
local text = section:newText({
    Name = string,                -- Text name
    Text = string,               -- Display text (optional, default: "Default Text")
    TextAlignment = Enum.TextXAlignment -- (optional, default: Left)
})
-- Methods: Destroy()
```

### Button
```lua
local button = section:newButton({
    Name = string,                -- Button name
    Text = string,               -- Button text (optional, default: "Button")
    Callback = function()        -- Called on click
})
-- Methods: Destroy()
```

### Slider
```lua
local slider = section:newSlider({
    Name = string,                -- Slider name
    Min = number,                -- Minimum value
    Max = number,                -- Maximum value
    Default = number,            -- Default value (optional, default: Min)
    Decimals = number,           -- Decimal places (optional, default: 0)
    Suffix = string,             -- Unit suffix (optional, default: "ms")
    Callback = function(value),  -- Called with value or {value, bind}
    Bind = {boolean, Enum.KeyCode, string} -- (optional)
})
-- Methods: SetValue(number), GetValue(), Destroy()
```

### Selectbox
```lua
local selectbox = section:newSelectbox({
    Name = string,                -- Selectbox name
    Options = {string},          -- Array of options
    Default = string or {string},-- Default selection (string for single, table for multi)
    Choice = string,             -- "single" or "multi" (optional, default: "single")
    Callback = function(value)   -- Called with selected value(s)
})
-- Methods: SetValue(string or table), GetValue(), Destroy()
```

### Searchbox
```lua
local searchbox = section:newSearchbox({
    Name = string,                -- Searchbox name
    Options = {string},          -- Array of options
    Default = string,            -- Default value (optional, default: "")
    Callback = function(value)   -- Called with selected value
})
-- Methods: SetValue(string), GetValue(), Destroy()
```