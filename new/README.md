# roskeet ui library

## overview

fuckass code nigger fuck u
**last updated:** october 10, 2025

## features

gaysex

## usage

### prepare to anal

copy the entire Lua script into your vsc or exp. only pc support.

```lua
-- example: Load and create a new instance
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/roskeet/UILibraries/refs/heads/main/new/source.lua'))()
local window = library:newInstance("roskeet", "build")
```

### Creating the UI Structure

1. **create a Window Instance:**
   ```lua
   local window = library:newInstance(name, build)
   ```
   - `name`: string for the window name (e.g., "roskeet").
   - `build`: string for the build version (e.g., "beta").
   - returns: a window object and a tree table (for internal use).

2. **add a Tab:**
   ```lua
   local tab = window:newTab(name)
   ```
   - `name`: tab name (string).
   - returns: a tab object.

3. **add a section to a tab:**
   ```lua
   local section = tab:newSection(name)
   ```
   - `name`: section name (string).
   - returns: a section object.

4. **add a subsection to a Section:**
   ```lua
   local subsection = section:newSubsection(title, side)
   ```
   - `title`: sbsection title (string).
   - `side`: "left" or "right" (defaults to "left").
   - returns: a subsection object.

### adding elements to subsections

1. **selectbox:**
   ```lua
   local selectbox = subsection:newSelectbox(labelText, items, defaultValue, onChange)
   ```
   - `labelText`: label (string, default: "Selectbox").
   - `items`: table of options (e.g., {"One", "Two"}).
   - `defaultValue`: string or table (for multi-select).
   - `onChange`: function callback (e.g., `function(value) print(value) end`).
   - returns: Selectbox element with methods: `GetValue()`, `SetValue(v)`, `SetCallback(cb)`.

2. **сolorpicker:**
   ```lua
   local colorpicker = subsection:newColorpicker(labelText, defaultColor, onChange)
   ```
   - `labelText`: label (string, default: "Colorpicker").
   - `defaultColor`: Color3 (default: Color3.fromRGB(158, 48, 48)).
   - `onChange`: function callback (e.g., `function(color) print(color) end`).
   - returns: colorpicker element with methods: `GetValue()`, `SetValue(color)`, `SetCallback(cb)`.

3. **bind (Keybind):**
   ```lua
   local bind = subsection:newBind(labelText, defaultKeyCode, onChange)
   ```
   - `labelText`: label (string, default: "Bind").
   - `defaultKeyCode`: Enum.KeyCode (default: Enum.KeyCode.RightShift).
   - `onChange`: function callback (e.g., `function(active) print(active) end`).
   - returns: bind element with methods: `GetValue()`, `SetValue(v)`, `SetCallback(cb)`.
   - supports modes: hold, toggle, always on (right-click to change).

4. **toggle:**
   ```lua
   local toggle = subsection:newToggle(labelText, defaultEnabled, onChange)
   ```
   - `labelText`: label (string, default: "Toggle").
   - `defaultEnabled`: boolean (default: false).
   - `onChange`: function callback (e.g., `function(enabled) print(enabled) end`).
   - returns: toggle element with methods: `GetValue()`, `SetValue(v)`, `SetCallback(cb)`.

5. **slider:**
   ```lua
   local slider = subsection:newSlider(labelText, defaultValue, minValue, maxValue, onChange)
   ```
   - `labelText`: Label (string, default: "Slider").
   - `defaultValue`: Number (clamped between min and max).
   - `minValue`: Number (default: 0).
   - `maxValue`: Number (default: 100).
   - `onChange`: Function callback (e.g., `function(value) print(value) end`).
   - Returns: Slider element with methods: `GetValue()`, `SetValue(v)`, `SetCallback(cb)`.

### Element Methods

all elements share common methods:
- `GetValue()`: Returns the current value.
- `SetValue(v)`: Sets the value (triggers callback if set).
- `SetCallback(cb)`: Sets or updates the callback function.
- `Show()` / `Hide()`: Shows or hides the element.

### txample

```lua
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/roskeet/UILibraries/refs/heads/main/new/source.lua'))()

local a = library:newInstance("roskeet", "beta")
local tab = a:newTab("Tab 1")
local sec = tab:newSection("Section 1")
local sub = sec:newSubsection("Uhhh", "left")

local pick = sub:newColorpicker("Colorpicker", nil, function(color)
    print("[example] Colorpicker changed:", color)
end)
local box = sub:newSelectbox("Selectbox", {"One", "Two"}, "One", function(value)
    print("[example] Selectbox picked:", value)
end)
local toggle = sub:newToggle("Toggle", false, function(enabled)
    print("[example] Toggle state:", enabled)
end)
local slider = sub:newSlider("Slider", 30, 0, 100, function(value)
    print("[example] Slider value:", value)
end)
local bind = sub:newBind("Toggle UI", Enum.KeyCode.RightShift, function(active)
    print("[example] Bind active:", active)
end)

-- Programmatic changes
toggle:SetValue(true)
slider:SetValue(75)
```

## contributing

if u read this FIX ALL CODE PLS I BEGGIN

## license

MIT License - free to use, modify, and distribute