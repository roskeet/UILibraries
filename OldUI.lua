--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 140 | Scripts: 0 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Gui - Start
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = true;
G2L["1"]["Name"] = [[Gui - Start]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.Gui - Start.UI
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 480, 0, 320);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[UI]];


-- StarterGui.Gui - Start.UI.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Gui - Start.UI.Title
G2L["4"] = Instance.new("TextLabel", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 14;
G2L["4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["RichText"] = true;
G2L["4"]["Size"] = UDim2.new(0, 120, 0, 32);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[<font color="rgb(152, 176, 52)">rojunkies</font> <font color="#656565">|</font> <font color="#999999">beta</font>]];
G2L["4"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["4"]["Name"] = [[Title]];
G2L["4"]["Position"] = UDim2.new(0, 8, 0, 0);


-- StarterGui.Gui - Start.UI.Title.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["4"]);
G2L["5"]["Rotation"] = 90;
G2L["5"]["Offset"] = Vector2.new(0, 0.25);
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(15, 15, 15))};


-- StarterGui.Gui - Start.UI.TabList
G2L["6"] = Instance.new("Frame", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["Size"] = UDim2.new(0, 279, 0, 32);
G2L["6"]["Position"] = UDim2.new(0.53854, 0, 0, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[TabList]];
G2L["6"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.TabList.UIListLayout
G2L["7"] = Instance.new("UIListLayout", G2L["6"]);
G2L["7"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["7"]["Padding"] = UDim.new(0, 8);
G2L["7"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["7"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Gui - Start.UI.TabList.Tab - Enabled
G2L["8"] = Instance.new("TextButton", G2L["6"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextColor3"] = Color3.fromRGB(48, 48, 48);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["8"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["8"]["Size"] = UDim2.new(0, 34, 0, 18);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[  Visual  ]];
G2L["8"]["Name"] = [[Tab - Enabled]];
G2L["8"]["Position"] = UDim2.new(0.38685, 0, 0.21875, 0);


-- StarterGui.Gui - Start.UI.TabList.Tab - Enabled.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.TabList.Tab - Enabled.UIGradient
G2L["a"] = Instance.new("UIGradient", G2L["8"]);
G2L["a"]["Rotation"] = 90;
G2L["a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(92, 116, 25))};


-- StarterGui.Gui - Start.UI.TabList.Tab - Enabled.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["8"]);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b"]["Color"] = Color3.fromRGB(144, 184, 39);


-- StarterGui.Gui - Start.UI.TabList.Tab- Disbled
G2L["c"] = Instance.new("TextButton", G2L["6"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["c"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c"]["Size"] = UDim2.new(0, 0, 0, 18);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[  Settings  ]];
G2L["c"]["Name"] = [[Tab- Disbled]];


-- StarterGui.Gui - Start.UI.TabList.Tab- Disbled.UICorner
G2L["d"] = Instance.new("UICorner", G2L["c"]);
G2L["d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.TabList.Tab- Disbled.UIGradient
G2L["e"] = Instance.new("UIGradient", G2L["c"]);
G2L["e"]["Enabled"] = false;
G2L["e"]["Rotation"] = 90;
G2L["e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.TabList.Tab- Disbled.UIStroke
G2L["f"] = Instance.new("UIStroke", G2L["c"]);
G2L["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["f"]["Color"] = Color3.fromRGB(144, 184, 39);


-- StarterGui.Gui - Start.UI.Container
G2L["10"] = Instance.new("Frame", G2L["2"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["10"]["Size"] = UDim2.new(0, 480, 0, 256);
G2L["10"]["Position"] = UDim2.new(0, 0, 0.1, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[Container]];


-- StarterGui.Gui - Start.UI.Container.Visual
G2L["11"] = Instance.new("Frame", G2L["10"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Size"] = UDim2.new(0, 480, 0, 256);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[Visual]];
G2L["11"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft
G2L["12"] = Instance.new("ScrollingFrame", G2L["11"]);
G2L["12"]["Active"] = true;
G2L["12"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Name"] = [[LayoutLeft]];
G2L["12"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["12"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["12"]["ScrollBarImageColor3"] = Color3.fromRGB(48, 48, 48);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["ScrollBarThickness"] = 4;
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.UIListLayout
G2L["13"] = Instance.new("UIListLayout", G2L["12"]);
G2L["13"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["13"]["Padding"] = UDim.new(0, 4);
G2L["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["12"]);
G2L["14"]["PaddingTop"] = UDim.new(0, 8);
G2L["14"]["PaddingRight"] = UDim.new(0, 8);
G2L["14"]["PaddingLeft"] = UDim.new(0, 8);
G2L["14"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Section
G2L["15"] = Instance.new("TextLabel", G2L["12"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 16;
G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxassetid://12187607287]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(0, 200, 0, 24);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[World]];
G2L["15"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15"]["Name"] = [[Section]];
G2L["15"]["Position"] = UDim2.new(0.05357, 0, 0, 0);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements
G2L["16"] = Instance.new("Frame", G2L["12"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["16"]["Size"] = UDim2.new(0, 200, 0, 0);
G2L["16"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[Elements]];
G2L["16"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.UIListLayout
G2L["17"] = Instance.new("UIListLayout", G2L["16"]);
G2L["17"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["17"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle
G2L["18"] = Instance.new("TextLabel", G2L["16"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Enabled]];
G2L["18"]["Name"] = [[Toggle]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button
G2L["19"] = Instance.new("TextButton", G2L["18"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 14;
G2L["19"]["AutoButtonColor"] = false;
G2L["19"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[]];
G2L["19"]["Name"] = [[Button]];
G2L["19"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);
G2L["1a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.UIStroke
G2L["1b"] = Instance.new("UIStroke", G2L["19"]);
G2L["1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1b"]["Color"] = Color3.fromRGB(144, 184, 39);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.UIGradient
G2L["1c"] = Instance.new("UIGradient", G2L["19"]);
G2L["1c"]["Rotation"] = 90;
G2L["1c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 127, 27))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.CheckMark
G2L["1d"] = Instance.new("ImageLabel", G2L["19"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1d"]["Image"] = [[rbxassetid://10709790644]];
G2L["1d"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Name"] = [[CheckMark]];
G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 1);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team
G2L["1e"] = Instance.new("TextLabel", G2L["16"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[Team]];
G2L["1e"]["Name"] = [[Team]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton
G2L["1f"] = Instance.new("TextButton", G2L["1e"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["AutoButtonColor"] = false;
G2L["1f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[]];
G2L["1f"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);
G2L["20"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton.UIStroke
G2L["21"] = Instance.new("UIStroke", G2L["1f"]);
G2L["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["21"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton.UIGradient
G2L["22"] = Instance.new("UIGradient", G2L["1f"]);
G2L["22"]["Rotation"] = 90;
G2L["22"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind
G2L["23"] = Instance.new("TextLabel", G2L["16"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["TextSize"] = 14;
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Text"] = [[Reload button]];
G2L["23"]["Name"] = [[Keybind]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button
G2L["24"] = Instance.new("TextButton", G2L["23"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 14;
G2L["24"]["AutoButtonColor"] = false;
G2L["24"]["TextColor3"] = Color3.fromRGB(154, 154, 154);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
G2L["24"]["FontFace"] = Font.new([[rbxassetid://12187607287]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["24"]["Size"] = UDim2.new(0, 176, 0, 16);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[LCtrl]];
G2L["24"]["Name"] = [[Button]];
G2L["24"]["Position"] = UDim2.new(0.13043, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button.UICorner
G2L["25"] = Instance.new("UICorner", G2L["24"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button.UIStroke
G2L["26"] = Instance.new("UIStroke", G2L["24"]);
G2L["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["26"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button.UIGradient
G2L["27"] = Instance.new("UIGradient", G2L["24"]);
G2L["27"]["Rotation"] = 90;
G2L["27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section
G2L["28"] = Instance.new("Frame", G2L["16"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["28"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[Removals_Section]];
G2L["28"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.UIListLayout
G2L["29"] = Instance.new("UIListLayout", G2L["28"]);
G2L["29"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["29"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.Label
G2L["2a"] = Instance.new("TextLabel", G2L["28"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 14;
G2L["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["2a"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[Removals]];
G2L["2a"]["Name"] = [[Label]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List
G2L["2b"] = Instance.new("Frame", G2L["28"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2b"]["Size"] = UDim2.new(0, 154, 0, 100);
G2L["2b"]["Position"] = UDim2.new(0.09239, 0, 0.28571, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Name"] = [[List]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UIGradient
G2L["2c"] = Instance.new("UIGradient", G2L["2b"]);
G2L["2c"]["Rotation"] = 90;
G2L["2c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(40, 40, 40)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(25, 25, 25))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2b"]);
G2L["2d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UIListLayout
G2L["2e"] = Instance.new("UIListLayout", G2L["2b"]);
G2L["2e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["2e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Fog
G2L["2f"] = Instance.new("TextButton", G2L["2b"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["2f"]["BackgroundTransparency"] = 0.95;
G2L["2f"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[  Fog]];
G2L["2f"]["Name"] = [[Fog]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Particles
G2L["30"] = Instance.new("TextButton", G2L["2b"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30"]["TextSize"] = 14;
G2L["30"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[  Parcticles]];
G2L["30"]["Name"] = [[Particles]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Ads
G2L["31"] = Instance.new("TextButton", G2L["2b"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["31"]["BackgroundTransparency"] = 0.95;
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[  Ads]];
G2L["31"]["Name"] = [[Ads]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Surface
G2L["32"] = Instance.new("TextButton", G2L["2b"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32"]["TextSize"] = 14;
G2L["32"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["32"]["BackgroundTransparency"] = 0.95;
G2L["32"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[  SurfaceGUI]];
G2L["32"]["Name"] = [[Surface]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UIStroke
G2L["33"] = Instance.new("UIStroke", G2L["2b"]);
G2L["33"]["Color"] = Color3.fromRGB(41, 41, 41);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world
G2L["34"] = Instance.new("TextLabel", G2L["16"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 14;
G2L["34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["34"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = [[Optimize world]];
G2L["34"]["Name"] = [[Optimize world]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button
G2L["35"] = Instance.new("TextButton", G2L["34"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["AutoButtonColor"] = false;
G2L["35"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[]];
G2L["35"]["Name"] = [[Button]];
G2L["35"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.UICorner
G2L["36"] = Instance.new("UICorner", G2L["35"]);
G2L["36"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.UIStroke
G2L["37"] = Instance.new("UIStroke", G2L["35"]);
G2L["37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["37"]["Color"] = Color3.fromRGB(144, 184, 39);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.UIGradient
G2L["38"] = Instance.new("UIGradient", G2L["35"]);
G2L["38"]["Rotation"] = 90;
G2L["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 127, 27))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.CheckMark
G2L["39"] = Instance.new("ImageLabel", G2L["35"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["39"]["Image"] = [[rbxassetid://10709790644]];
G2L["39"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Name"] = [[CheckMark]];
G2L["39"]["Position"] = UDim2.new(0.5, 0, 0.5, 1);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures
G2L["3a"] = Instance.new("TextLabel", G2L["16"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextSize"] = 14;
G2L["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["3a"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[LQ Textures]];
G2L["3a"]["Name"] = [[Textures]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton
G2L["3b"] = Instance.new("TextButton", G2L["3a"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["AutoButtonColor"] = false;
G2L["3b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[]];
G2L["3b"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton.UIStroke
G2L["3d"] = Instance.new("UIStroke", G2L["3b"]);
G2L["3d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["3d"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton.UIGradient
G2L["3e"] = Instance.new("UIGradient", G2L["3b"]);
G2L["3e"]["Rotation"] = 90;
G2L["3e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider
G2L["3f"] = Instance.new("Frame", G2L["16"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["Size"] = UDim2.new(0, 184, 0, 48);
G2L["3f"]["Position"] = UDim2.new(0.04, 0, 0.71429, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Slider]];
G2L["3f"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.SliderTitle
G2L["40"] = Instance.new("TextLabel", G2L["3f"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextSize"] = 14;
G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["40"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Text"] = [[Distance]];
G2L["40"]["Name"] = [[SliderTitle]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar
G2L["41"] = Instance.new("Frame", G2L["3f"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["Size"] = UDim2.new(1, -16, 0, 16);
G2L["41"]["Position"] = UDim2.new(0, 8, 0.429, 5);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Name"] = [[Bar]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.UIGradient
G2L["42"] = Instance.new("UIGradient", G2L["41"]);
G2L["42"]["Rotation"] = 90;
G2L["42"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.UIStroke
G2L["43"] = Instance.new("UIStroke", G2L["41"]);
G2L["43"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.UICorner
G2L["44"] = Instance.new("UICorner", G2L["41"]);
G2L["44"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Progress
G2L["45"] = Instance.new("TextButton", G2L["41"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextSize"] = 14;
G2L["45"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["45"]["Size"] = UDim2.new(0.49405, 0, 1, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[]];
G2L["45"]["Name"] = [[Progress]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Progress.UICorner
G2L["46"] = Instance.new("UICorner", G2L["45"]);
G2L["46"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Progress.UIGradient
G2L["47"] = Instance.new("UIGradient", G2L["45"]);
G2L["47"]["Rotation"] = 90;
G2L["47"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(92, 116, 25))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Value
G2L["48"] = Instance.new("TextLabel", G2L["41"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextSize"] = 14;
G2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["Size"] = UDim2.new(0.46429, 0, 1, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Text"] = [[61.57183]];
G2L["48"]["Name"] = [[Value]];
G2L["48"]["Position"] = UDim2.new(0.49405, 0, 0, 0);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft
G2L["49"] = Instance.new("ScrollingFrame", G2L["11"]);
G2L["49"]["Active"] = true;
G2L["49"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["Name"] = [[LayoutLeft]];
G2L["49"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["49"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["49"]["ScrollBarImageColor3"] = Color3.fromRGB(48, 48, 48);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["ScrollBarThickness"] = 4;
G2L["49"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.UIListLayout
G2L["4a"] = Instance.new("UIListLayout", G2L["49"]);
G2L["4a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["4a"]["Padding"] = UDim.new(0, 4);
G2L["4a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.UIPadding
G2L["4b"] = Instance.new("UIPadding", G2L["49"]);
G2L["4b"]["PaddingTop"] = UDim.new(0, 8);
G2L["4b"]["PaddingRight"] = UDim.new(0, 8);
G2L["4b"]["PaddingLeft"] = UDim.new(0, 8);
G2L["4b"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Section
G2L["4c"] = Instance.new("TextLabel", G2L["49"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 16;
G2L["4c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["FontFace"] = Font.new([[rbxassetid://12187607287]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["4c"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["Size"] = UDim2.new(0, 200, 0, 24);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[World]];
G2L["4c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["4c"]["Name"] = [[Section]];
G2L["4c"]["Position"] = UDim2.new(0.05357, 0, 0, 0);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements
G2L["4d"] = Instance.new("Frame", G2L["49"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["4d"]["Size"] = UDim2.new(0, 200, 0, 0);
G2L["4d"]["Position"] = UDim2.new(0, 0, 0, 20);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Name"] = [[Elements]];
G2L["4d"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.UIListLayout
G2L["4e"] = Instance.new("UIListLayout", G2L["4d"]);
G2L["4e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["4e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle
G2L["4f"] = Instance.new("TextLabel", G2L["4d"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextSize"] = 14;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Text"] = [[Enabled]];
G2L["4f"]["Name"] = [[Toggle]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button
G2L["50"] = Instance.new("TextButton", G2L["4f"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextSize"] = 14;
G2L["50"]["AutoButtonColor"] = false;
G2L["50"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Text"] = [[]];
G2L["50"]["Name"] = [[Button]];
G2L["50"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);
G2L["51"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.UIStroke
G2L["52"] = Instance.new("UIStroke", G2L["50"]);
G2L["52"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["52"]["Color"] = Color3.fromRGB(144, 184, 39);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.UIGradient
G2L["53"] = Instance.new("UIGradient", G2L["50"]);
G2L["53"]["Rotation"] = 90;
G2L["53"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 127, 27))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Toggle.Button.CheckMark
G2L["54"] = Instance.new("ImageLabel", G2L["50"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["54"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["54"]["Image"] = [[rbxassetid://10709790644]];
G2L["54"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["BackgroundTransparency"] = 1;
G2L["54"]["Name"] = [[CheckMark]];
G2L["54"]["Position"] = UDim2.new(0.5, 0, 0.5, 1);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team
G2L["55"] = Instance.new("TextLabel", G2L["4d"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["55"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[Team]];
G2L["55"]["Name"] = [[Team]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton
G2L["56"] = Instance.new("TextButton", G2L["55"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["AutoButtonColor"] = false;
G2L["56"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[]];
G2L["56"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);
G2L["57"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton.UIStroke
G2L["58"] = Instance.new("UIStroke", G2L["56"]);
G2L["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["58"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Team.TextButton.UIGradient
G2L["59"] = Instance.new("UIGradient", G2L["56"]);
G2L["59"]["Rotation"] = 90;
G2L["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind
G2L["5a"] = Instance.new("TextLabel", G2L["4d"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["TextSize"] = 14;
G2L["5a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Text"] = [[Reload button]];
G2L["5a"]["Name"] = [[Keybind]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button
G2L["5b"] = Instance.new("TextButton", G2L["5a"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 14;
G2L["5b"]["AutoButtonColor"] = false;
G2L["5b"]["TextColor3"] = Color3.fromRGB(154, 154, 154);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(48, 48, 48);
G2L["5b"]["FontFace"] = Font.new([[rbxassetid://12187607287]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["5b"]["Size"] = UDim2.new(0, 176, 0, 16);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[LCtrl]];
G2L["5b"]["Name"] = [[Button]];
G2L["5b"]["Position"] = UDim2.new(0.13043, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button.UIStroke
G2L["5d"] = Instance.new("UIStroke", G2L["5b"]);
G2L["5d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["5d"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Keybind.Button.UIGradient
G2L["5e"] = Instance.new("UIGradient", G2L["5b"]);
G2L["5e"]["Rotation"] = 90;
G2L["5e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(182, 182, 182))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section
G2L["5f"] = Instance.new("Frame", G2L["4d"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["5f"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Name"] = [[Removals_Section]];
G2L["5f"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.UIListLayout
G2L["60"] = Instance.new("UIListLayout", G2L["5f"]);
G2L["60"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["60"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.Label
G2L["61"] = Instance.new("TextLabel", G2L["5f"]);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["61"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[Removals]];
G2L["61"]["Name"] = [[Label]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List
G2L["62"] = Instance.new("Frame", G2L["5f"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["62"]["Size"] = UDim2.new(0, 154, 0, 100);
G2L["62"]["Position"] = UDim2.new(0.09239, 0, 0.28571, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Name"] = [[List]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UIGradient
G2L["63"] = Instance.new("UIGradient", G2L["62"]);
G2L["63"]["Rotation"] = 90;
G2L["63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(40, 40, 40)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(25, 25, 25))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UICorner
G2L["64"] = Instance.new("UICorner", G2L["62"]);
G2L["64"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UIListLayout
G2L["65"] = Instance.new("UIListLayout", G2L["62"]);
G2L["65"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["65"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Fog
G2L["66"] = Instance.new("TextButton", G2L["62"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["66"]["TextSize"] = 14;
G2L["66"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["66"]["BackgroundTransparency"] = 0.95;
G2L["66"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Text"] = [[  Fog]];
G2L["66"]["Name"] = [[Fog]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Particles
G2L["67"] = Instance.new("TextButton", G2L["62"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[  Parcticles]];
G2L["67"]["Name"] = [[Particles]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Ads
G2L["68"] = Instance.new("TextButton", G2L["62"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["68"]["BackgroundTransparency"] = 0.95;
G2L["68"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[  Ads]];
G2L["68"]["Name"] = [[Ads]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.Surface
G2L["69"] = Instance.new("TextButton", G2L["62"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["69"]["TextSize"] = 14;
G2L["69"]["TextColor3"] = Color3.fromRGB(144, 184, 39);
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["69"]["BackgroundTransparency"] = 0.95;
G2L["69"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Text"] = [[  SurfaceGUI]];
G2L["69"]["Name"] = [[Surface]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Removals_Section.List.UIStroke
G2L["6a"] = Instance.new("UIStroke", G2L["62"]);
G2L["6a"]["Color"] = Color3.fromRGB(41, 41, 41);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world
G2L["6b"] = Instance.new("TextLabel", G2L["4d"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextSize"] = 14;
G2L["6b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["6b"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[Optimize world]];
G2L["6b"]["Name"] = [[Optimize world]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button
G2L["6c"] = Instance.new("TextButton", G2L["6b"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextSize"] = 14;
G2L["6c"]["AutoButtonColor"] = false;
G2L["6c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[]];
G2L["6c"]["Name"] = [[Button]];
G2L["6c"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.UICorner
G2L["6d"] = Instance.new("UICorner", G2L["6c"]);
G2L["6d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.UIStroke
G2L["6e"] = Instance.new("UIStroke", G2L["6c"]);
G2L["6e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["6e"]["Color"] = Color3.fromRGB(144, 184, 39);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.UIGradient
G2L["6f"] = Instance.new("UIGradient", G2L["6c"]);
G2L["6f"]["Rotation"] = 90;
G2L["6f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(100, 127, 27))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Optimize world.Button.CheckMark
G2L["70"] = Instance.new("ImageLabel", G2L["6c"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["70"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["70"]["Image"] = [[rbxassetid://10709790644]];
G2L["70"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Name"] = [[CheckMark]];
G2L["70"]["Position"] = UDim2.new(0.5, 0, 0.5, 1);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures
G2L["71"] = Instance.new("TextLabel", G2L["4d"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextSize"] = 14;
G2L["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[LQ Textures]];
G2L["71"]["Name"] = [[Textures]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton
G2L["72"] = Instance.new("TextButton", G2L["71"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextSize"] = 14;
G2L["72"]["AutoButtonColor"] = false;
G2L["72"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[]];
G2L["72"]["Position"] = UDim2.new(1, -24, 0.04167, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton.UICorner
G2L["73"] = Instance.new("UICorner", G2L["72"]);
G2L["73"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton.UIStroke
G2L["74"] = Instance.new("UIStroke", G2L["72"]);
G2L["74"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["74"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Textures.TextButton.UIGradient
G2L["75"] = Instance.new("UIGradient", G2L["72"]);
G2L["75"]["Rotation"] = 90;
G2L["75"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider
G2L["76"] = Instance.new("Frame", G2L["4d"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Size"] = UDim2.new(0, 184, 0, 48);
G2L["76"]["Position"] = UDim2.new(0.04, 0, 0.71429, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[Slider]];
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.SliderTitle
G2L["77"] = Instance.new("TextLabel", G2L["76"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["TextSize"] = 14;
G2L["77"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["77"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["77"]["BackgroundTransparency"] = 1;
G2L["77"]["Size"] = UDim2.new(0, 184, 0, 24);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[Distance]];
G2L["77"]["Name"] = [[SliderTitle]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar
G2L["78"] = Instance.new("Frame", G2L["76"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(1, -16, 0, 16);
G2L["78"]["Position"] = UDim2.new(0, 8, 0.429, 5);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[Bar]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.UIGradient
G2L["79"] = Instance.new("UIGradient", G2L["78"]);
G2L["79"]["Rotation"] = 90;
G2L["79"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.UIStroke
G2L["7a"] = Instance.new("UIStroke", G2L["78"]);
G2L["7a"]["Color"] = Color3.fromRGB(48, 48, 48);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.UICorner
G2L["7b"] = Instance.new("UICorner", G2L["78"]);
G2L["7b"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Progress
G2L["7c"] = Instance.new("TextButton", G2L["78"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["Size"] = UDim2.new(0.49405, 0, 1, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Text"] = [[]];
G2L["7c"]["Name"] = [[Progress]];


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Progress.UICorner
G2L["7d"] = Instance.new("UICorner", G2L["7c"]);
G2L["7d"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Progress.UIGradient
G2L["7e"] = Instance.new("UIGradient", G2L["7c"]);
G2L["7e"]["Rotation"] = 90;
G2L["7e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(144, 184, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(92, 116, 25))};


-- StarterGui.Gui - Start.UI.Container.Visual.LayoutLeft.Elements.Slider.Bar.Value
G2L["7f"] = Instance.new("TextLabel", G2L["78"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextSize"] = 14;
G2L["7f"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["7f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["Size"] = UDim2.new(0.46429, 0, 1, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Text"] = [[61.57183]];
G2L["7f"]["Name"] = [[Value]];
G2L["7f"]["Position"] = UDim2.new(0.49405, 0, 0, 0);


-- StarterGui.Gui - Start.UI.Container.Visual.UIListLayout
G2L["80"] = Instance.new("UIListLayout", G2L["11"]);
G2L["80"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["80"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Gui - Start.UI.Container.Line
G2L["81"] = Instance.new("Frame", G2L["10"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["81"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Name"] = [[Line]];


-- StarterGui.Gui - Start.UI.Container.Line
G2L["82"] = Instance.new("Frame", G2L["10"]);
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
G2L["82"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["82"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["82"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Name"] = [[Line]];


-- StarterGui.Gui - Start.UI.Info
G2L["83"] = Instance.new("TextLabel", G2L["2"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 14;
G2L["83"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["Size"] = UDim2.new(0, 120, 0, 32);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[kittendna - Baseplate - until: 01.01.2026]];
G2L["83"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["83"]["Name"] = [[Info]];
G2L["83"]["Position"] = UDim2.new(0, 8, 1, -32);


-- StarterGui.Gui - Start.UI.Info.UIGradient
G2L["84"] = Instance.new("UIGradient", G2L["83"]);
G2L["84"]["Rotation"] = 90;
G2L["84"]["Offset"] = Vector2.new(0, 0.25);
G2L["84"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(153, 177, 53)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 15, 15))};


-- StarterGui.Gui - Start.UI.UIStroke
G2L["85"] = Instance.new("UIStroke", G2L["2"]);
G2L["85"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.Gui - Start.Watermark
G2L["86"] = Instance.new("Frame", G2L["1"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["86"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["86"]["Size"] = UDim2.new(0, 0, 0, 24);
G2L["86"]["Position"] = UDim2.new(0.5, 0, 0.26, 0);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Name"] = [[Watermark]];


-- StarterGui.Gui - Start.Watermark.label
G2L["87"] = Instance.new("TextLabel", G2L["86"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxassetid://11702779409]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["87"]["TextColor3"] = Color3.fromRGB(154, 154, 154);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["RichText"] = true;
G2L["87"]["Size"] = UDim2.new(0, 0, 0, 24);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[<font color="rgb(152, 176, 52)">rojunkies</font> | Laera is gay | Laera dickrides me]];
G2L["87"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["87"]["Name"] = [[label]];


-- StarterGui.Gui - Start.Watermark.label.UIGradient
G2L["88"] = Instance.new("UIGradient", G2L["87"]);
G2L["88"]["Rotation"] = 90;
G2L["88"]["Offset"] = Vector2.new(0, 0.25);
G2L["88"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(144, 144, 144))};


-- StarterGui.Gui - Start.Watermark.UICorner
G2L["89"] = Instance.new("UICorner", G2L["86"]);
G2L["89"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Gui - Start.Watermark.UIPadding
G2L["8a"] = Instance.new("UIPadding", G2L["86"]);
G2L["8a"]["PaddingRight"] = UDim.new(0, 8);
G2L["8a"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Gui - Start.Watermark.UIGradient
G2L["8b"] = Instance.new("UIGradient", G2L["86"]);
G2L["8b"]["Rotation"] = 90;
G2L["8b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(48, 48, 48)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(31, 31, 31))};


-- StarterGui.Gui - Start.Watermark.UIStroke
G2L["8c"] = Instance.new("UIStroke", G2L["86"]);
G2L["8c"]["Color"] = Color3.fromRGB(61, 61, 61);



return G2L["1"], require;
