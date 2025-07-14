local Library,Loader = {},{}
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

function Library:newWindow()
	local window = {}
	window.CurrentTab = nil
	
	window["ScreenGui"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	window["ScreenGui"]["Name"] = [[Roskeet]];
	window["ScreenGui"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	window["UIScale"] = Instance.new("UIScale", window["ScreenGui"]);

	window["UIBase"] = Instance.new("Frame", window["ScreenGui"]);
	window["UIBase"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
	window["UIBase"]["Size"] = UDim2.new(0, 656, 0, 560);
	window["UIBase"]["Position"] = UDim2.new(0.24769, 0, 0.05514, 0);
	window["UIBase"]["BorderColor3"] = Color3.fromRGB(14, 14, 14);
	window["UIBase"]["Name"] = [[UI]];

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		window["UIBase"].Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	window["UIBase"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = window["UIBase"].Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	window["UIBase"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	window["UIOutline"] = Instance.new("Frame", window["UIBase"]);
	window["UIOutline"]["BorderSizePixel"] = 0;
	window["UIOutline"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	window["UIOutline"]["Size"] = UDim2.new(0, 654, 0, 558);
	window["UIOutline"]["Position"] = UDim2.new(0, 1, 0, 1);
	window["UIOutline"]["BorderColor3"] = Color3.fromRGB(14, 14, 14);
	window["UIOutline"]["Name"] = [[Outline]];

	window["UIBorder"] = Instance.new("Frame", window["UIOutline"]);
	window["UIBorder"]["BorderSizePixel"] = 0;
	window["UIBorder"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 61);
	window["UIBorder"]["Size"] = UDim2.new(0, 648, 0, 552);
	window["UIBorder"]["Position"] = UDim2.new(0, 3, 0, 3);
	window["UIBorder"]["BorderColor3"] = Color3.fromRGB(14, 14, 14);
	window["UIBorder"]["Name"] = [[Border]];

	window["UIBaseHandler"] = Instance.new("Frame", window["UIBorder"]);
	window["UIBaseHandler"]["BorderSizePixel"] = 0;
	window["UIBaseHandler"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
	window["UIBaseHandler"]["Size"] = UDim2.new(0, 646, 0, 550);
	window["UIBaseHandler"]["Position"] = UDim2.new(0, 1, 0, 1);
	window["UIBaseHandler"]["BorderColor3"] = Color3.fromRGB(14, 14, 14);
	window["UIBaseHandler"]["Name"] = [[Base]];

	window["HandlerTopLine"] = Instance.new("Frame", window["UIBaseHandler"]);
	window["HandlerTopLine"]["BorderSizePixel"] = 0;
	window["HandlerTopLine"]["BackgroundColor3"] = Color3.fromRGB(221, 221, 221);
	window["HandlerTopLine"]["Size"] = UDim2.new(1, -2, 0, 2);
	window["HandlerTopLine"]["Position"] = UDim2.new(0, 1, 0, 1);
	window["HandlerTopLine"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window["HandlerTopLine"]["Name"] = [[TopLine]];

	window["HandlerTopLineGradient"] = Instance.new("UIGradient", window["HandlerTopLine"]);
	window["HandlerTopLineGradient"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(56, 178, 219)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(203, 74, 205)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(205, 228, 54))};

	window["HandlerSidebar"] = Instance.new("Frame", window["UIBaseHandler"]);
	window["HandlerSidebar"]["ZIndex"] = 3;
	window["HandlerSidebar"]["BorderSizePixel"] = 0;
	window["HandlerSidebar"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
	window["HandlerSidebar"]["Size"] = UDim2.new(0, 75, 1, 0);
	window["HandlerSidebar"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window["HandlerSidebar"]["Name"] = [[Sidebar]];
	window["HandlerSidebar"]["BackgroundTransparency"] = 1;
	
	window["SidebarLine"] = Instance.new("Frame", window["UIBaseHandler"]);
	window["SidebarLine"]["ZIndex"] = 2;
	window["SidebarLine"]["BorderSizePixel"] = 0;
	window["SidebarLine"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	window["SidebarLine"]["Size"] = UDim2.new(0, 1, 1, -3);
	window["SidebarLine"]["Position"] = UDim2.new(0, 74, 0, 3);
	window["SidebarLine"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window["SidebarLine"]["Name"] = [[SidebarLine]];

	window["SidebarUIListLayout"] = Instance.new("UIListLayout", window["HandlerSidebar"]);
	window["SidebarUIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	window["SidebarUIListLayout"]["Padding"] = UDim.new(0, 11);
	window["SidebarUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	window["SidebarUIPadding"] = Instance.new("UIPadding", window["HandlerSidebar"]);
	window["SidebarUIPadding"]["PaddingTop"] = UDim.new(0, 13);
	
	window["HandlerCenter"] = Instance.new("Frame", window["UIBaseHandler"]);
	window["HandlerCenter"]["BorderSizePixel"] = 0;
	window["HandlerCenter"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	window["HandlerCenter"]["Size"] = UDim2.new(1, -75, 1, -4);
	window["HandlerCenter"]["Position"] = UDim2.new(0, 75, 0, 4);
	window["HandlerCenter"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window["HandlerCenter"]["Name"] = [[Center]];
	window["HandlerCenter"]["LayoutOrder"] = -1;

	window["BaseBackground"] = Instance.new("ImageLabel", window["HandlerCenter"]);
	window["BaseBackground"]["ZIndex"] = 2;
	window["BaseBackground"]["BorderSizePixel"] = 0;
	window["BaseBackground"]["SliceScale"] = 10;
	window["BaseBackground"]["ScaleType"] = Enum.ScaleType.Tile;
	window["BaseBackground"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	window["BaseBackground"]["ImageColor3"] = Color3.fromRGB(13, 13, 13);
	window["BaseBackground"]["Image"] = [[rbxassetid://8547666218]];
	window["BaseBackground"]["TileSize"] = UDim2.new(0, 8, 0, 8);
	window["BaseBackground"]["Size"] = UDim2.new(1, 0, 1, 0);
	window["BaseBackground"]["BorderColor3"] = Color3.fromRGB(9, 9, 9);
	window["BaseBackground"]["Name"] = [[BackgroundImage]];
	
	function window:newTab(params)
		assert(type(params) == "table", "[roskeet] createTab requires a table as its parameter")

		local icon = params.Icon
		if not icon or type(icon) ~= "number" or icon <= 0 then
			error("[roskeet] Invalid or missing icon ID for tab. Must be a positive number. Provided: '" .. tostring(icon) .. "'")
		end

		local name = params.Name
		if not name or type(name) ~= "string" or name == "" then
			name = "Tab"
			warn("[roskeet] Invalid or missing tab name. Using default name: '" .. name .. "'. Please provide a valid string in params.Name")
		elseif Library[name] then
			error("[roskeet] Tab name already exists: '" .. name .. "'. Please provide a unique name in params.Name")
		end

		Library[name] = {
			Icon = icon,
			Name = name,
			Frame = {},
			Button = {}
		}

		do 
			Library[name].Frame["TabFrame"] = Instance.new("Frame", window["HandlerCenter"]);
			Library[name].Frame["TabFrame"]["ZIndex"] = 2;
			Library[name].Frame["TabFrame"]["BorderSizePixel"] = 0;
			Library[name].Frame["TabFrame"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Library[name].Frame["TabFrame"]["Size"] = UDim2.new(1, 0, 1, 0);
			Library[name].Frame["TabFrame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Frame["TabFrame"]["Name"] = [[Tab]];
			Library[name].Frame["TabFrame"]["BackgroundTransparency"] = 1;
			Library[name].Frame["TabFrame"]["Visible"] = false
			if window.CurrentTab == nil then
				Library[name].Frame["TabFrame"]["Visible"] = true
			end
			

			Library[name].Frame["LeftSideTab"] = Instance.new("Frame", Library[name].Frame["TabFrame"]);
			Library[name].Frame["LeftSideTab"]["ZIndex"] = 2;
			Library[name].Frame["LeftSideTab"]["BorderSizePixel"] = 0;
			Library[name].Frame["LeftSideTab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Library[name].Frame["LeftSideTab"]["Size"] = UDim2.new(0, 252, 1, -42);
			Library[name].Frame["LeftSideTab"]["Position"] = UDim2.new(0, 25, 0, 22);
			Library[name].Frame["LeftSideTab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Frame["LeftSideTab"]["Name"] = [[LeftSectionHandler]];
			Library[name].Frame["LeftSideTab"]["BackgroundTransparency"] = 1;

			Library[name].Frame["LeftSideUIListLayout"] = Instance.new("UIListLayout", Library[name].Frame["LeftSideTab"]);
			Library[name].Frame["LeftSideUIListLayout"]["Padding"] = UDim.new(0, 20);
			Library[name].Frame["LeftSideUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			Library[name].Frame["RightSideTab"] = Instance.new("Frame", Library[name].Frame["TabFrame"]);
			Library[name].Frame["RightSideTab"]["ZIndex"] = 2;
			Library[name].Frame["RightSideTab"]["BorderSizePixel"] = 0;
			Library[name].Frame["RightSideTab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Library[name].Frame["RightSideTab"]["Size"] = UDim2.new(0, 252, 1, -42);
			Library[name].Frame["RightSideTab"]["Position"] = UDim2.new(1, -277, 0, 22);
			Library[name].Frame["RightSideTab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Frame["RightSideTab"]["Name"] = [[RightSectionHandler]];
			Library[name].Frame["RightSideTab"]["BackgroundTransparency"] = 1;

			Library[name].Frame["RightSideUIListLayout"] = Instance.new("UIListLayout", Library[name].Frame["RightSideTab"]);
			Library[name].Frame["RightSideUIListLayout"]["Padding"] = UDim.new(0, 20);
			Library[name].Frame["RightSideUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		end
		
		do
			Library[name].Button[name.."_Button"] = Instance.new("Frame", window["HandlerSidebar"]);
			Library[name].Button[name.."_Button"]["BorderSizePixel"] = 0;
			Library[name].Button[name.."_Button"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button[name.."_Button"]["Size"] = UDim2.new(1, 0, 0, 72);
			Library[name].Button[name.."_Button"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button[name.."_Button"]["Name"] = [[Tab 1_Button]];
			Library[name].Button[name.."_Button"]["BackgroundTransparency"] = 1;


			Library[name].Button["SelectedBackground"] = Instance.new("Frame", Library[name].Button[name.."_Button"]);
			Library[name].Button["SelectedBackground"]["ZIndex"] = 2;
			Library[name].Button["SelectedBackground"]["BorderSizePixel"] = 0;
			Library[name].Button["SelectedBackground"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["SelectedBackground"]["Size"] = UDim2.new(1, 0, 1, 0);
			Library[name].Button["SelectedBackground"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["SelectedBackground"]["Name"] = [[SelectedBackground]];
			Library[name].Button["SelectedBackground"]["BackgroundTransparency"] = 1;
			Library[name].Button["SelectedBackground"]["Visible"] = false
			if window.CurrentTab == nil then
				Library[name].Button["SelectedBackground"]["Visible"] = true
			end
			

			Library[name].Button["BackgroundLine"] = Instance.new("Frame", Library[name].Button["SelectedBackground"]);
			Library[name].Button["BackgroundLine"]["ZIndex"] = 2;
			Library[name].Button["BackgroundLine"]["BorderSizePixel"] = 0;
			Library[name].Button["BackgroundLine"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
			Library[name].Button["BackgroundLine"]["Size"] = UDim2.new(1, 0, 1, 0);
			Library[name].Button["BackgroundLine"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["BackgroundLine"]["Name"] = [[Line]];


			Library[name].Button["BackgroundOverlay"] = Instance.new("Frame", Library[name].Button["BackgroundLine"]);
			Library[name].Button["BackgroundOverlay"]["ZIndex"] = 2;
			Library[name].Button["BackgroundOverlay"]["BorderSizePixel"] = 0;
			Library[name].Button["BackgroundOverlay"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
			Library[name].Button["BackgroundOverlay"]["Size"] = UDim2.new(1, 0, 1, -2);
			Library[name].Button["BackgroundOverlay"]["Position"] = UDim2.new(0, 0, 0, 1);
			Library[name].Button["BackgroundOverlay"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["BackgroundOverlay"]["Name"] = [[Overlay]];


			Library[name].Button["Background"] = Instance.new("ImageLabel", Library[name].Button["BackgroundOverlay"]);
			Library[name].Button["Background"]["ZIndex"] = 2;
			Library[name].Button["Background"]["BorderSizePixel"] = 0;
			Library[name].Button["Background"]["ScaleType"] = Enum.ScaleType.Tile;
			Library[name].Button["Background"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["Background"]["ImageColor3"] = Color3.fromRGB(13, 13, 13);
			Library[name].Button["Background"]["Image"] = [[rbxassetid://8509210785]];
			Library[name].Button["Background"]["TileSize"] = UDim2.new(0, 8, 0, 8);
			Library[name].Button["Background"]["Size"] = UDim2.new(0, 76, 1, 0);
			Library[name].Button["Background"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["Background"]["BackgroundTransparency"] = 1;
			Library[name].Button["Background"]["Name"] = [[Backgorund]];


			Library[name].Button["Icon"] = Instance.new("ImageLabel", Library[name].Button[name.."_Button"]);
			Library[name].Button["Icon"]["ZIndex"] = 2;
			Library[name].Button["Icon"]["BorderSizePixel"] = 0;
			Library[name].Button["Icon"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["Icon"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			Library[name].Button["Icon"]["Image"] = [[rbxassetid://]]..icon;
			Library[name].Button["Icon"]["Size"] = UDim2.new(0, 50, 0, 50);
			Library[name].Button["Icon"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["Icon"]["BackgroundTransparency"] = 1;
			Library[name].Button["Icon"]["Name"] = [[Icon]];
			Library[name].Button["Icon"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
			if window.CurrentTab == nil then
				Library[name].Button["Icon"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
			else
				Library[name].Button["Icon"]["ImageColor3"] = Color3.fromRGB(90, 90, 90);
			end

			Library[name].Button["Button"] = Instance.new("TextButton", Library[name].Button[name.."_Button"]);
			Library[name].Button["Button"]["BorderSizePixel"] = 0;
			Library[name].Button["Button"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["Button"]["BackgroundTransparency"] = 1;
			Library[name].Button["Button"]["Size"] = UDim2.new(1, 0, 1, 0);
			Library[name].Button["Button"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Library[name].Button["Button"]["Text"] = [[]];
			Library[name].Button["Button"].MouseButton1Click:Connect(function()
				if window.CurrentTab["Name"] == name then
					return
				end
				local button = window.CurrentTab
				Library[name].Button["SelectedBackground"]["Visible"] = true
				Library[name].Frame["TabFrame"]["Visible"] = true
				window.CurrentTab.Button["SelectedBackground"]["Visible"] = false
				window.CurrentTab.Frame["TabFrame"]["Visible"] = false
				window.CurrentTab.Button["Icon"]["ImageColor3"] = Color3.fromRGB(90, 90, 90);
				Library[name].Button["Icon"]["ImageColor3"] = Color3.fromRGB(255, 255, 255);
				
				window.CurrentTab = Library[name]
			end)
			
			Library[name].Button["Button"].MouseEnter:Connect(function()
				if window.CurrentTab["Name"] == name then
					return
				end
				Library[name].Button["Icon"]["ImageColor3"] = Color3.fromRGB(120,120,120);
			end)
			Library[name].Button["Button"].MouseLeave:Connect(function()
				if window.CurrentTab["Name"] == name then
					return
				end
				Library[name].Button["Icon"]["ImageColor3"] = Color3.fromRGB(90, 90, 90);
			end)
			
			
		end
		
		local tab = Library[name]
		local sectionCount = {
			Left = 0,
			Right = 0
		}
		function tab:newSection(params)
			local section = {}
			assert(type(params) == "table", "[roskeet] newSection requires a table as its parameter")
			local name = params.Name
			if not name or type(name) ~= "string" or name == "" then
				name = "Section"
				warn("[roskeet] Invalid or missing section name. Using default name: '" .. name .. "'. Please provide a valid string in params.Name")
			end
			local validSides = {["Left"] = true, ["Right"] = true}
			local side = params.Side
			if not side or not validSides[side] then
				error("[roskeet] Invalid or missing section side. Must be 'Left' or 'Right'. Provided: '" .. tostring(side) .. "'")
			end
			local currCount
			if side == "Left" then 
				side = tab.Frame["LeftSideTab"]
				sectionCount.Left = sectionCount.Left + 1
				currCount = sectionCount.Left
			else 
				side = tab.Frame["RightSideTab"]
				sectionCount.Right = sectionCount.Right + 1
				currCount = sectionCount.Right
			end
			if params.Side == "Left" and sectionCount.Left > 1 then
				for _, v in side:GetChildren() do
					if v:IsA("Frame") then
						v.Size = UDim2.new(1, 0, 0, (520/currCount)-20)
					end
				end
			end

			section["SectionBase"] = Instance.new("Frame", side);
			section["SectionBase"]["ZIndex"] = 2;
			section["SectionBase"]["BorderSizePixel"] = 2;
			section["SectionBase"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
			section["SectionBase"]["AutomaticSize"] = Enum.AutomaticSize.Y;
			section["SectionBase"]["Size"] = UDim2.new(1, 0, 0, (520/currCount)-20);
			section["SectionBase"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
			section["SectionBase"]["Name"] = name..[[_Section]];

			section["ElementHandler"] = Instance.new("ScrollingFrame", section["SectionBase"]);
			section["ElementHandler"]["Active"] = true;
			section["ElementHandler"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
			section["ElementHandler"]["ZIndex"] = 2;
			section["ElementHandler"]["BorderSizePixel"] = 0;
			section["ElementHandler"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
			section["ElementHandler"]["ElasticBehavior"] = Enum.ElasticBehavior.Always;
			section["ElementHandler"]["TopImage"] = [[rbxassetid://17256458146]];
			section["ElementHandler"]["MidImage"] = [[rbxassetid://17256458146]];
			section["ElementHandler"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
			section["ElementHandler"]["Name"] = [[ElementHandler]];
			section["ElementHandler"]["BottomImage"] = [[rbxassetid://17256458146]];
			section["ElementHandler"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
			section["ElementHandler"]["Size"] = UDim2.new(1, 0, 1, 0);
			section["ElementHandler"]["ScrollBarImageColor3"] = Color3.fromRGB(66, 66, 66);
			section["ElementHandler"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
			section["ElementHandler"]["ScrollBarThickness"] = 5;

			section["ElementHandlerUIListLayout"] = Instance.new("UIListLayout", section["ElementHandler"]);
			section["ElementHandlerUIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			section["ElementHandlerUIListLayout"]["Padding"] = UDim.new(0, 4);
			section["ElementHandlerUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


			section["ElementHandlerUIPadding"] = Instance.new("UIPadding", section["ElementHandler"]);
			section["ElementHandlerUIPadding"]["PaddingTop"] = UDim.new(0, 20);


			section["ElementHandlerUIStroke"] = Instance.new("UIStroke", section["SectionBase"]);
			section["ElementHandlerUIStroke"]["Color"] = Color3.fromRGB(41, 41, 41);


			section["SectionBase"] = Instance.new("Frame", section["SectionBase"]);
			section["SectionBase"]["ZIndex"] = 2;
			section["SectionBase"]["BorderSizePixel"] = 0;
			section["SectionBase"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			section["SectionBase"]["AutomaticSize"] = Enum.AutomaticSize.X;
			section["SectionBase"]["Size"] = UDim2.new(0, 0, 0, 24);
			section["SectionBase"]["Position"] = UDim2.new(0, 12, 0, -13);
			section["SectionBase"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			section["SectionBase"]["Name"] = [[LabelHandler]];
			section["SectionBase"]["BackgroundTransparency"] = 1;


			section["SectionLabel"] = Instance.new("TextLabel", section["SectionBase"]);
			section["SectionLabel"]["ZIndex"] = 2;
			section["SectionLabel"]["BorderSizePixel"] = 0;
			section["SectionLabel"]["TextSize"] = 12;
			section["SectionLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			section["SectionLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			section["SectionLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			section["SectionLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			section["SectionLabel"]["BackgroundTransparency"] = 1;
			section["SectionLabel"]["Size"] = UDim2.new(0, 0, 0, 24);
			section["SectionLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			section["SectionLabel"]["Text"] = tostring(name);
			section["SectionLabel"]["AutomaticSize"] = Enum.AutomaticSize.X;


			section["SectionBaseUIPadding"] = Instance.new("UIPadding", section["SectionBase"]);
			section["SectionBaseUIPadding"]["PaddingRight"] = UDim.new(0, 4);
			section["SectionBaseUIPadding"]["PaddingLeft"] = UDim.new(0, 4);


			section["CustomBackground"] = Instance.new("Frame", section["SectionBase"]);
			section["CustomBackground"]["BorderSizePixel"] = 0;
			section["CustomBackground"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
			section["CustomBackground"]["Size"] = UDim2.new(1, 8, 0, 2);
			section["CustomBackground"]["Position"] = UDim2.new(0, -4, 0, 11);
			section["CustomBackground"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			section["CustomBackground"]["Name"] = [[CustomBackground]];

			local Library = {}

			local keyNames = {
				[Enum.KeyCode.LeftShift] = "LShift",
				[Enum.KeyCode.RightShift] = "RShift",
				[Enum.KeyCode.LeftControl] = "LCtrl",
				[Enum.KeyCode.RightControl] = "RCtrl",
				[Enum.KeyCode.LeftAlt] = "LAlt",
				[Enum.KeyCode.RightAlt] = "RAlt",
				[Enum.KeyCode.LeftMeta] = "LMeta",
				[Enum.KeyCode.RightMeta] = "RMeta",
				[Enum.KeyCode.CapsLock] = "Caps",
				[Enum.KeyCode.Return] = "Enter",
				[Enum.KeyCode.Backspace] = "Back",
				[Enum.KeyCode.Space] = "Space",
				[Enum.KeyCode.Tab] = "Tab",
				[Enum.KeyCode.Escape] = "Esc",
				[Enum.KeyCode.Insert] = "Ins",
				[Enum.KeyCode.Delete] = "Del",
				[Enum.KeyCode.Home] = "Home",
				[Enum.KeyCode.End] = "End",
				[Enum.KeyCode.PageUp] = "PgUp",
				[Enum.KeyCode.PageDown] = "PgDn",
				[Enum.KeyCode.Up] = "Up",
				[Enum.KeyCode.Down] = "Down",
				[Enum.KeyCode.Left] = "Left",
				[Enum.KeyCode.Right] = "Right",
				[Enum.KeyCode.Semicolon] = ";",
				[Enum.KeyCode.Quote] = "'",
				[Enum.KeyCode.Comma] = ",",
				[Enum.KeyCode.Period] = ".",
				[Enum.KeyCode.Slash] = "/",
				[Enum.KeyCode.BackSlash] = "\\",
				[Enum.KeyCode.LeftBracket] = "[",
				[Enum.KeyCode.RightBracket] = "]",
				[Enum.KeyCode.Minus] = "-",
				[Enum.KeyCode.Equals] = "=",
				[Enum.KeyCode.Backquote] = "`",
				[Enum.KeyCode.One] = "1",
				[Enum.KeyCode.Two] = "2",
				[Enum.KeyCode.Three] = "3",
				[Enum.KeyCode.Four] = "4",
				[Enum.KeyCode.Five] = "5",
				[Enum.KeyCode.Six] = "6",
				[Enum.KeyCode.Seven] = "7",
				[Enum.KeyCode.Eight] = "8",
				[Enum.KeyCode.Nine] = "9",
				[Enum.KeyCode.Zero] = "0",
				[Enum.KeyCode.F1] = "F1",
				[Enum.KeyCode.F2] = "F2",
				[Enum.KeyCode.F3] = "F3",
				[Enum.KeyCode.F4] = "F4",
				[Enum.KeyCode.F5] = "F5",
				[Enum.KeyCode.F6] = "F6",
				[Enum.KeyCode.F7] = "F7",
				[Enum.KeyCode.F8] = "F8",
				[Enum.KeyCode.F9] = "F9",
				[Enum.KeyCode.F10] = "F10",
				[Enum.KeyCode.F11] = "F11",
				[Enum.KeyCode.F12] = "F12"
			}

			local function getShortKeyName(keyCode)
				return keyNames[keyCode] or tostring(keyCode):gsub("Enum.KeyCode.", "")
			end

			function section:newToggle(params)
				local toggle = {}

				assert(type(params) == "table", "[roskeet] newToggle requires a table as its parameter")
				local name = params.Name
				local callback = params.Callback
				local defaultValue = params.Default or false
				local bind = {false, nil, "On hotkey"}
				local keyToggleState = false 
				local baseZIndex = 2 

				if params.Bind and type(params.Bind) == "table" then
					bind = {params.Bind[1] or false, params.Bind[2] or nil}
					local validModes = {"On hotkey", "Always on", "Toggle", "Off hotkey"}
					local mode = params.Bind[3]
					if mode and table.find(validModes, mode) then
						table.insert(bind, mode)
					else
						table.insert(bind, "On hotkey")
						warn("[roskeet] Invalid bind mode. Using default: 'On hotkey'")
					end
				end

				if not name or type(name) ~= "string" or name == "" then
					name = "Toggle"
					warn("[roskeet] Invalid or missing toggle name. Using default name: '" .. name .. "'")
				end

				assert(type(callback) == "function", "[roskeet] Invalid or missing callback function for toggle: '" .. name .. "'")

				toggle.State = defaultValue
				local connections = {}

				function toggle:SetState(newState)
					if newState ~= toggle.State then
						toggle.State = newState
						toggle["UIGradient"]["Color"] = newState and 
							ColorSequence.new{
								ColorSequenceKeypoint.new(0, Color3.fromRGB(157, 200, 41)),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(123, 166, 7))
							} or 
							ColorSequence.new{
								ColorSequenceKeypoint.new(0, Color3.fromRGB(78, 78, 78)),
								ColorSequenceKeypoint.new(1, Color3.fromRGB(53, 53, 53))
							}
						callback(newState)
					end
				end

				toggle["ToggleFrame"] = Instance.new("Frame", section["ElementHandler"])
				toggle["ToggleFrame"]["ZIndex"] = baseZIndex
				toggle["ToggleFrame"]["BorderSizePixel"] = 0
				toggle["ToggleFrame"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				toggle["ToggleFrame"]["Size"] = UDim2.new(1, -40, 0, 16)
				toggle["ToggleFrame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				toggle["ToggleFrame"]["Name"] = [[Toggle]]
				toggle["ToggleFrame"]["BackgroundTransparency"] = 1

				toggle["Button"] = Instance.new("TextButton", toggle["ToggleFrame"])
				toggle["Button"]["TextSize"] = 14
				toggle["Button"]["AutoButtonColor"] = false
				toggle["Button"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
				toggle["Button"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				toggle["Button"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				toggle["Button"]["Size"] = UDim2.new(0, 6, 0, 6)
				toggle["Button"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
				toggle["Button"]["Text"] = [[]]
				toggle["Button"]["Name"] = [[ToggleButton]]
				toggle["Button"]["Position"] = UDim2.new(0, 0, 0.5, -3)

				toggle["Button"].MouseButton1Click:Connect(function()
					toggle:SetState(not toggle.State)
				end)

				toggle["Button"].MouseEnter:Connect(function()
					if not toggle.State then
						toggle["UIGradient"]["Color"] = ColorSequence.new{
							ColorSequenceKeypoint.new(0, Color3.fromRGB(98, 98, 98)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(68, 68, 68))
						}
					end
				end)

				toggle["Button"].MouseLeave:Connect(function()
					if not toggle.State then
						toggle["UIGradient"]["Color"] = ColorSequence.new{
							ColorSequenceKeypoint.new(0, Color3.fromRGB(78, 78, 78)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(53, 53, 53))
						}
					end
				end)

				toggle["UIGradient"] = Instance.new("UIGradient", toggle["Button"])
				toggle["UIGradient"]["Rotation"] = 90
				toggle["UIGradient"]["Color"] = defaultValue and 
					ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(157, 200, 41)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(123, 166, 7))
					} or 
					ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(78, 78, 78)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(53, 53, 53))
					}

				toggle["TextLabel"] = Instance.new("TextLabel", toggle["ToggleFrame"])
				toggle["TextLabel"]["BorderSizePixel"] = 0
				toggle["TextLabel"]["TextSize"] = 11
				toggle["TextLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
				toggle["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				toggle["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				toggle["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				toggle["TextLabel"]["BackgroundTransparency"] = 1
				toggle["TextLabel"]["Size"] = UDim2.new(0, 168, 0, 14)
				toggle["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				toggle["TextLabel"]["Text"] = params.Name
				toggle["TextLabel"]["Position"] = UDim2.new(0, 20, 0, 2)

				if bind[1] then
					toggle["BindButton"] = Instance.new("TextButton", toggle["ToggleFrame"])
					toggle["BindButton"]["TextStrokeTransparency"] = 0
					toggle["BindButton"]["TextXAlignment"] = Enum.TextXAlignment.Right
					toggle["BindButton"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14)
					toggle["BindButton"]["TextSize"] = 9
					toggle["BindButton"]["AutoButtonColor"] = false
					toggle["BindButton"]["TextColor3"] = Color3.fromRGB(142, 142, 142)
					toggle["BindButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
					toggle["BindButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
					toggle["BindButton"]["BackgroundTransparency"] = 1
					toggle["BindButton"]["Size"] = UDim2.new(0, 6, 0, 6)
					toggle["BindButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
					toggle["BindButton"]["Text"] = type(bind[2]) == "userdata" and "[ " .. getShortKeyName(bind[2]) .. " ]" or "[ - ]"
					toggle["BindButton"]["Name"] = [[BindButton]]
					toggle["BindButton"]["AnchorPoint"] = Vector2.new(1, 0)
					toggle["BindButton"]["AutomaticSize"] = Enum.AutomaticSize.X
					toggle["BindButton"]["Position"] = UDim2.new(1, 0, 0.5, -3)

					toggle["BindButton"].MouseButton1Click:Connect(function()
						toggle["BindButton"]["Text"] = "[...]"
						local inputConnection
						inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
							if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
								bind[2] = input.KeyCode
								toggle["BindButton"]["Text"] = "[ " .. getShortKeyName(input.KeyCode) .. " ]"
								inputConnection:Disconnect()
								if bind[3] == "Always on" then
									callback(true)
								elseif bind[3] == "Off hotkey" then
									callback(true)
								else
									callback(toggle.State)
								end
								keyToggleState = false
							end
						end)
					end)

					toggle["BindButton"].MouseButton2Click:Connect(function()
						for otherName, otherInstance in pairs(Library) do
							if otherName ~= name and otherInstance.BindVariantHandler then
								otherInstance.BindVariantHandler.Visible = false
								if otherInstance.ToggleFrame then
									otherInstance.ToggleFrame.ZIndex = baseZIndex + 1
								elseif otherInstance.Bind then
									otherInstance.Bind.ZIndex = baseZIndex + 1
								end
							end
						end
						local isVisible = not toggle["BindVariantHandler"]["Visible"]
						toggle["BindVariantHandler"]["Visible"] = isVisible
						toggle["ToggleFrame"]["ZIndex"] = isVisible and (baseZIndex + 3) or (baseZIndex + 1)
					end)

					toggle["BindVariantHandler"] = Instance.new("Frame", toggle["BindButton"])
					toggle["BindVariantHandler"]["Visible"] = false
					toggle["BindVariantHandler"]["ZIndex"] = 4
					toggle["BindVariantHandler"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
					toggle["BindVariantHandler"]["Size"] = UDim2.new(0, 98, 0, 80)
					toggle["BindVariantHandler"]["Position"] = UDim2.new(0, 12, 0, 12)
					toggle["BindVariantHandler"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)

					toggle["VariantHandlerUIListLayout"] = Instance.new("UIListLayout", toggle["BindVariantHandler"])
					toggle["VariantHandlerUIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
					toggle["VariantHandlerUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

					local variants = {"Always on", "On hotkey", "Toggle", "Off hotkey"}

					for i, variant in ipairs(variants) do
						toggle[variant] = Instance.new("TextButton", toggle["BindVariantHandler"])
						toggle[variant]["TextXAlignment"] = Enum.TextXAlignment.Left
						toggle[variant]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14)
						toggle[variant]["TextSize"] = 10
						toggle[variant]["TextColor3"] = bind[3] == variant and Color3.fromRGB(140, 175, 43) or Color3.fromRGB(209, 209, 209)
						toggle[variant]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
						toggle[variant]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
						toggle[variant]["BackgroundTransparency"] = 1
						toggle[variant]["Size"] = UDim2.new(1, -24, 0, 20)
						toggle[variant]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
						toggle[variant]["Text"] = variant
						toggle[variant]["Name"] = variant:gsub(" ", "")
						toggle[variant]["Position"] = UDim2.new(1, -3, 0.5, -3)

						table.insert(connections, toggle[variant].MouseButton1Click:Connect(function()
							bind[3] = variant
							for _, v in ipairs(variants) do
								toggle[v].TextColor3 = v == variant and Color3.fromRGB(140, 175, 43) or Color3.fromRGB(209, 209, 209)
							end
							toggle["BindVariantHandler"]["Visible"] = false
							toggle["ToggleFrame"]["ZIndex"] = baseZIndex + 1
							if bind[3] == "Always on" then
								callback(true)
							elseif bind[3] == "Off hotkey" then
								callback(true)
							else
								callback(toggle.State)
							end
							keyToggleState = false
						end))
					end

					table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
						if not gameProcessed and bind[2] and input.KeyCode == bind[2] and toggle.State then
							if bind[3] == "On hotkey" then
								callback(true)
							elseif bind[3] == "Off hotkey" then
								callback(false)
							elseif bind[3] == "Toggle" then
								keyToggleState = not keyToggleState
								callback(keyToggleState)
							elseif bind[3] == "Always on" then
								callback(true)
							end
						end
					end))

					table.insert(connections, UserInputService.InputEnded:Connect(function(input, gameProcessed)
						if not gameProcessed and bind[2] and input.KeyCode == bind[2] and toggle.State then
							if bind[3] == "On hotkey" then
								callback(false)
							elseif bind[3] == "Off hotkey" then
								callback(true)
							elseif bind[3] == "Always on" then
								callback(true)
							end
						end
					end))

					function toggle:Destroy()
						for _, connection in ipairs(connections) do
							connection:Disconnect()
						end
						Library[name] = nil 
						toggle.ToggleFrame:Destroy()
					end
				end

				function toggle:GetValue()
					return self.State
				end
				Library[name] = toggle

				return toggle
			end

			function section:newBind(params)
				local bindElement = {}

				assert(type(params) == "table", "[roskeet] newBind requires a table as its parameter")
				local name = params.Name
				local callback = params.Callback
				local defaultBind = {true, params.Key or Enum.KeyCode.LeftAlt, params.Mode or "On hotkey"} 
				local keyToggleState = false
				local baseZIndex = 2 

				if params.Bind and type(params.Bind) == "table" then
					defaultBind = {params.Bind[1] or true, params.Bind[2] or Enum.KeyCode.LeftAlt}
					local validModes = {"On hotkey", "Always on", "Toggle", "Off hotkey"}
					local mode = params.Bind[3]
					if mode and table.find(validModes, mode) then
						table.insert(defaultBind, mode)
					else
						table.insert(defaultBind, "On hotkey")
						warn("[roskeet] Invalid bind mode. Using default: 'On hotkey'")
					end
				end

				if not name or type(name) ~= "string" or name == "" then
					name = "Bind"
					warn("[roskeet] Invalid or missing bind name. Using default name: '" .. name .. "'")
				end

				assert(type(callback) == "function", "[roskeet] Invalid or missing callback function for bind: '" .. name .. "'")

				local bind = defaultBind
				local connections = {}

				bindElement["Bind"] = Instance.new("Frame", section["ElementHandler"])
				bindElement["Bind"]["ZIndex"] = baseZIndex
				bindElement["Bind"]["BorderSizePixel"] = 0
				bindElement["Bind"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				bindElement["Bind"]["Size"] = UDim2.new(1, -40, 0, 16)
				bindElement["Bind"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				bindElement["Bind"]["Name"] = [[Bind]]
				bindElement["Bind"]["BackgroundTransparency"] = 1

				bindElement["TextLabel"] = Instance.new("TextLabel", bindElement["Bind"])
				bindElement["TextLabel"]["BorderSizePixel"] = 0
				bindElement["TextLabel"]["TextSize"] = 11
				bindElement["TextLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
				bindElement["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				bindElement["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				bindElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				bindElement["TextLabel"]["BackgroundTransparency"] = 1
				bindElement["TextLabel"]["Size"] = UDim2.new(0, 168, 0, 14)
				bindElement["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				bindElement["TextLabel"]["Text"] = name
				bindElement["TextLabel"]["Position"] = UDim2.new(0, 20, 0, 2)

				bindElement["BindButton"] = Instance.new("TextButton", bindElement["Bind"])
				bindElement["BindButton"]["TextStrokeTransparency"] = 0
				bindElement["BindButton"]["TextXAlignment"] = Enum.TextXAlignment.Right
				bindElement["BindButton"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14)
				bindElement["BindButton"]["TextSize"] = 9
				bindElement["BindButton"]["AutoButtonColor"] = false
				bindElement["BindButton"]["TextColor3"] = Color3.fromRGB(142, 142, 142)
				bindElement["BindButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				bindElement["BindButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				bindElement["BindButton"]["BackgroundTransparency"] = 1
				bindElement["BindButton"]["Size"] = UDim2.new(0, 6, 0, 6)
				bindElement["BindButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
				bindElement["BindButton"]["Text"] = type(bind[2]) == "userdata" and "[ " .. getShortKeyName(bind[2]) .. " ]" or "[ - ]"
				bindElement["BindButton"]["Name"] = [[BindButton]]
				bindElement["BindButton"]["AnchorPoint"] = Vector2.new(1, 0)
				bindElement["BindButton"]["AutomaticSize"] = Enum.AutomaticSize.X
				bindElement["BindButton"]["Position"] = UDim2.new(1, 0, 0.5, -3)
				

				bindElement["BindButton"].MouseButton1Click:Connect(function()
					bindElement["BindButton"]["Text"] = "[ ... ]"
					local inputConnection
					inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
						if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
							bind[2] = input.KeyCode
							bindElement["BindButton"]["Text"] = "[ " .. getShortKeyName(input.KeyCode) .. " ]"
							inputConnection:Disconnect()
							if bind[3] == "Always on" then
								callback(true)
							elseif bind[3] == "Off hotkey" then
								callback(true)
							else
								callback(false)
							end
							keyToggleState = false
						end
					end)
				end)

				bindElement["BindButton"].MouseButton2Click:Connect(function()
					for otherName, otherInstance in pairs(Library) do
						if otherName ~= name and otherInstance.BindVariantHandler then
							otherInstance.BindVariantHandler.Visible = false
							if otherInstance.ToggleFrame then
								otherInstance.ToggleFrame.ZIndex = baseZIndex + 1
							elseif otherInstance.Bind then
								otherInstance.Bind.ZIndex = baseZIndex + 1
							end
						end
					end
					local isVisible = not bindElement["BindVariantHandler"]["Visible"]
					bindElement["BindVariantHandler"]["Visible"] = isVisible
					bindElement["Bind"]["ZIndex"] = isVisible and (baseZIndex + 3) or (baseZIndex + 1)
				end)

				bindElement["BindVariantHandler"] = Instance.new("Frame", bindElement["BindButton"])
				bindElement["BindVariantHandler"]["Visible"] = false
				bindElement["BindVariantHandler"]["ZIndex"] = 4
				bindElement["BindVariantHandler"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
				bindElement["BindVariantHandler"]["Size"] = UDim2.new(0, 98, 0, 80)
				bindElement["BindVariantHandler"]["Position"] = UDim2.new(0, 12, 0, 12)
				bindElement["BindVariantHandler"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)

				bindElement["VariantHandlerUIListLayout"] = Instance.new("UIListLayout", bindElement["BindVariantHandler"])
				bindElement["VariantHandlerUIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
				bindElement["VariantHandlerUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

				local variants = {"Always on", "On hotkey", "Toggle", "Off hotkey"}

				for i, variant in ipairs(variants) do
					bindElement[variant] = Instance.new("TextButton", bindElement["BindVariantHandler"])
					bindElement[variant]["TextXAlignment"] = Enum.TextXAlignment.Left
					bindElement[variant]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14)
					bindElement[variant]["TextSize"] = 10
					bindElement[variant]["TextColor3"] = bind[3] == variant and Color3.fromRGB(140, 175, 43) or Color3.fromRGB(209, 209, 209)
					bindElement[variant]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
					bindElement[variant]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
					bindElement[variant]["BackgroundTransparency"] = 1
					bindElement[variant]["Size"] = UDim2.new(1, -24, 0, 20)
					bindElement[variant]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
					bindElement[variant]["Text"] = variant
					bindElement[variant]["Name"] = variant:gsub(" ", "")
					bindElement[variant]["Position"] = UDim2.new(1, -3, 0.5, -3)
					bindElement[variant]["LayoutOrder"] = i - 1

					table.insert(connections, bindElement[variant].MouseButton1Click:Connect(function()
						bind[3] = variant
						for _, v in ipairs(variants) do
							bindElement[v].TextColor3 = v == variant and Color3.fromRGB(140, 175, 43) or Color3.fromRGB(209, 209, 209)
						end
						bindElement["BindVariantHandler"]["Visible"] = false
						bindElement["Bind"]["ZIndex"] = baseZIndex + 1
						if bind[3] == "Always on" then
							callback(true)
						elseif bind[3] == "Off hotkey" then
							callback(true)
						else
							callback(false)
						end
						keyToggleState = false
					end))
				end

				table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if not gameProcessed and bind[2] and input.KeyCode == bind[2] then
						if bind[3] == "On hotkey" then
							callback(true)
						elseif bind[3] == "Off hotkey" then
							callback(false)
						elseif bind[3] == "Toggle" then
							keyToggleState = not keyToggleState
							callback(keyToggleState)
						elseif bind[3] == "Always on" then
							callback(true)
						end
					end
				end))

				table.insert(connections, UserInputService.InputEnded:Connect(function(input, gameProcessed)
					if not gameProcessed and bind[2] and input.KeyCode == bind[2] then
						if bind[3] == "On hotkey" then
							callback(false)
						elseif bind[3] == "Off hotkey" then
							callback(true)
						elseif bind[3] == "Always on" then
							callback(true)
						end
					end
				end))

				-- Handle outside clicks to close BindVariantHandler
				table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if not gameProcessed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2) then
						if bindElement["BindVariantHandler"]["Visible"] then
							local mousePos = UserInputService:GetMouseLocation()
							local guiObjects = GuiService:GetGuiObjectsAtPosition(mousePos.X, mousePos.Y)
							local isClickOutside = true
							for _, obj in ipairs(guiObjects) do
								if obj == bindElement["BindVariantHandler"] or obj:IsDescendantOf(bindElement["BindVariantHandler"]) then
									isClickOutside = false
									break
								end
							end
							if isClickOutside then
								bindElement["BindVariantHandler"]["Visible"] = false
								bindElement["Bind"]["ZIndex"] = baseZIndex + 1
							end
						end
					end
				end))

				function bindElement:Destroy()
					for _, connection in ipairs(connections) do
						connection:Disconnect()
					end
					Library[name] = nil
					bindElement.Bind:Destroy()
				end
				
				function bindElement:GetValue()
					return {enabled = bind[1], key = bind[2], mode = bind[3]}
				end
				
				Library[name] = bindElement

				return bindElement
			end
			
			function section:newText(params)
				local textElement = {}

				assert(type(params) == "table", "[roskeet] newText requires a table as its parameter")

				local name = params.Name or "Text"
				local textContent = params.Text or "Default Text"
				local textAlignment = params.TextAlignment or Enum.TextXAlignment.Left

				if type(name) ~= "string" or name == "" then
					name = "Text"
					warn("[roskeet] Invalid or missing text name. Using default name: '" .. name .. "'")
				end

				if type(textContent) ~= "string" or textContent == "" then
					textContent = "Default Text"
					warn("[roskeet] Invalid or missing text content for: '" .. name .. "'. Using default text: '" .. textContent .. "'")
				end

				textElement["Text"] = Instance.new("Frame", section["ElementHandler"])
				textElement["Text"]["BorderSizePixel"] = 0
				textElement["Text"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				textElement["Text"]["AutomaticSize"] = Enum.AutomaticSize.Y
				textElement["Text"]["Size"] = UDim2.new(1, -40, 0, 20)
				textElement["Text"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				textElement["Text"]["Name"] = name
				textElement["Text"]["BackgroundTransparency"] = 1

				textElement["TextLabel"] = Instance.new("TextLabel", textElement["Text"])
				textElement["TextLabel"]["LineHeight"] = 1.5
				textElement["TextLabel"]["BorderSizePixel"] = 0
				textElement["TextLabel"]["TextSize"] = 12
				textElement["TextLabel"]["TextXAlignment"] = textAlignment
				textElement["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				textElement["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				textElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				textElement["TextLabel"]["BackgroundTransparency"] = 1
				textElement["TextLabel"]["RichText"] = true
				textElement["TextLabel"]["Size"] = UDim2.new(1, -40, 0, 20)
				textElement["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				textElement["TextLabel"]["Text"] = textContent
				textElement["TextLabel"]["AutomaticSize"] = Enum.AutomaticSize.Y
				textElement["TextLabel"]["Position"] = UDim2.new(0,20,0,0)

				textElement["UIPadding"] = Instance.new("UIPadding", textElement["Text"])
				textElement["UIPadding"]["PaddingTop"] = UDim.new(0, 4)
				textElement["UIPadding"]["PaddingBottom"] = UDim.new(0, 4)

				function textElement:Destroy()
					Library[name] = nil 
					textElement.Text:Destroy()
				end

				Library[name] = textElement

				return textElement
			end
			
			function section:newButton(params)
				local buttonElement = {}

				assert(type(params) == "table", "[roskeet] newButton requires a table as its parameter")

				local name = params.Name or "Button"
				local text = params.Text or "Button"
				local callback = params.Callback or function() end

				if type(name) ~= "string" or name == "" then
					name = "Button"
					warn("[roskeet] Invalid or missing button name. Using default name: '" .. name .. "'")
				end

				if type(text) ~= "string" or text == "" then
					text = "Button"
					warn("[roskeet] Invalid or missing button text for: '" .. name .. "'. Using default text: '" .. text .. "'")
				end

				assert(type(callback) == "function", "[roskeet] Invalid or missing callback function for button: '" .. name .. "'")

				buttonElement["Button"] = Instance.new("Frame", section["ElementHandler"])
				buttonElement["Button"]["BorderSizePixel"] = 0
				buttonElement["Button"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				buttonElement["Button"]["Size"] = UDim2.new(0, 169, 0, 28)
				buttonElement["Button"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				buttonElement["Button"]["Name"] = name
				buttonElement["Button"]["BackgroundTransparency"] = 1

				buttonElement["TextButton"] = Instance.new("TextButton", buttonElement["Button"])
				buttonElement["TextButton"]["TextStrokeTransparency"] = 0
				buttonElement["TextButton"]["BorderSizePixel"] = 2
				buttonElement["TextButton"]["TextSize"] = 14
				buttonElement["TextButton"]["AutoButtonColor"] = false
				buttonElement["TextButton"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				buttonElement["TextButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				buttonElement["TextButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				buttonElement["TextButton"]["Size"] = UDim2.new(1, -15, 0, 21)
				buttonElement["TextButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
				buttonElement["TextButton"]["Text"] = ""
				buttonElement["TextButton"]["Position"] = UDim2.new(0, 0, 0, 4)
				buttonElement["TextButton"].MouseEnter:Connect(function()
					buttonElement["TextLabel"]["TextColor3"] = Color3.fromHex("#8fb726")
					buttonElement["UIGradient"]["Color"] = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(43, 43, 43)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 31, 31))
					}
				end)
				buttonElement["TextButton"].MouseLeave:Connect(function()
					buttonElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255,255,255)
					buttonElement["UIGradient"]["Color"] = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 31, 31))
					}
				end)
					
				buttonElement["UIGradient"] = Instance.new("UIGradient", buttonElement["TextButton"])
				buttonElement["UIGradient"]["Rotation"] = 90
				buttonElement["UIGradient"]["Color"] = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 31, 31))
				}

				buttonElement["UIStroke"] = Instance.new("UIStroke", buttonElement["TextButton"])
				buttonElement["UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
				buttonElement["UIStroke"]["Color"] = Color3.fromRGB(51, 51, 51)

				buttonElement["TextLabel"] = Instance.new("TextLabel", buttonElement["TextButton"])
				buttonElement["TextLabel"]["ZIndex"] = 0
				buttonElement["TextLabel"]["BorderSizePixel"] = 0
				buttonElement["TextLabel"]["TextSize"] = 11
				buttonElement["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				buttonElement["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				buttonElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				buttonElement["TextLabel"]["BackgroundTransparency"] = 1
				buttonElement["TextLabel"]["Size"] = UDim2.new(1, 0, 1, 0)
				buttonElement["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				buttonElement["TextLabel"]["Text"] = text

				local connections = {}

				table.insert(connections, buttonElement["TextButton"].MouseButton1Click:Connect(function()
					callback()
					buttonElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255,255,255)
					buttonElement["UIGradient"]["Color"] = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 31, 31))
					}
				end))

				function buttonElement:Destroy()
					for _, connection in ipairs(connections) do
						connection:Disconnect()
					end
					Library[name] = nil
					buttonElement.Button:Destroy()
				end

				Library[name] = buttonElement

				return buttonElement
			end
			
			function section:newSlider(params)
				local sliderElement = {}

				assert(type(params) == "table", "[roskeet] newSlider requires a table as its parameter")

				local name = params.Name or "Slider"
				local minValue = params.Min or 0
				local maxValue = params.Max or 100
				local defaultValue = params.Default or minValue
				local decimals = params.Decimals or 0
				local suffix = params.Suffix or "ms"
				local callback = params.Callback or function() end
				local defaultBind = params.Bind and type(params.Bind) == "table" and params.Bind[1] and {true, params.Bind[2] or Enum.KeyCode.LeftAlt, params.Bind[3] or "On hotkey"} or nil

				if type(name) ~= "string" or name == "" then
					name = "Slider"
					warn("[roskeet] Invalid or missing slider name. Using default name: '" .. name .. "'")
				end

				assert(type(minValue) == "number" and type(maxValue) == "number" and minValue < maxValue, "[roskeet] Invalid min/max values for slider: '" .. name .. "'")

				if type(defaultValue) ~= "number" or defaultValue < minValue or defaultValue > maxValue then
					defaultValue = minValue
					warn("[roskeet] Invalid default value for slider: '" .. name .. "'. Using min value: " .. minValue)
				end

				if type(decimals) ~= "number" or decimals < 0 or math.floor(decimals) ~= decimals then
					decimals = 0
					warn("[roskeet] Invalid decimals value for slider: '" .. name .. "'. Using default: 0")
				end

				if type(suffix) ~= "string" then
					suffix = "ms"
					warn("[roskeet] Invalid suffix for slider: '" .. name .. "'. Using default: 'ms'")
				end

				assert(type(callback) == "function", "[roskeet] Invalid or missing callback function for slider: '" .. name .. "'")

				local bind = defaultBind
				if bind then
					local validModes = {"On hotkey", "Always on", "Toggle", "Off hotkey"}
					local mode = bind[3]
					if not mode or not table.find(validModes, mode) then
						bind[3] = "On hotkey"
						warn("[roskeet] Invalid bind mode for slider: '" .. name .. "'. Using default: 'On hotkey'")
					end
				end

				local keyToggleState = false
				local currentValue = defaultValue
				local connections = {}
				local baseZIndex = 2

				sliderElement["Slider"] = Instance.new("Frame", section["ElementHandler"])
				sliderElement["Slider"]["ZIndex"] = baseZIndex
				sliderElement["Slider"]["BorderSizePixel"] = 0
				sliderElement["Slider"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["Slider"]["Size"] = UDim2.new(1, -40, 0, 32)
				sliderElement["Slider"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				sliderElement["Slider"]["Name"] = "Slider"
				sliderElement["Slider"]["BackgroundTransparency"] = 1

				sliderElement["Update interval"] = Instance.new("TextLabel", sliderElement["Slider"])
				sliderElement["Update interval"]["BorderSizePixel"] = 0
				sliderElement["Update interval"]["TextSize"] = 11
				sliderElement["Update interval"]["TextXAlignment"] = Enum.TextXAlignment.Left
				sliderElement["Update interval"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["Update interval"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				sliderElement["Update interval"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["Update interval"]["BackgroundTransparency"] = 1
				sliderElement["Update interval"]["Size"] = UDim2.new(0, 168, 0, 14)
				sliderElement["Update interval"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				sliderElement["Update interval"]["Text"] = name
				sliderElement["Update interval"]["Name"] = "Update RESPONSIVEinterval"
				sliderElement["Update interval"]["Position"] = UDim2.new(0, 20, 0, 2)

				sliderElement["TextButton"] = Instance.new("TextButton", sliderElement["Slider"])
				sliderElement["TextButton"]["TextXAlignment"] = Enum.TextXAlignment.Left
				sliderElement["TextButton"]["TextSize"] = 14
				sliderElement["TextButton"]["AutoButtonColor"] = false
				sliderElement["TextButton"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["TextButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["TextButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				sliderElement["TextButton"]["Size"] = UDim2.new(0, 156, 0, 5)
				sliderElement["TextButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
				sliderElement["TextButton"]["Text"] = ""
				sliderElement["TextButton"]["Position"] = UDim2.new(0, 20, 0, 19)

				sliderElement["UIGradient"] = Instance.new("UIGradient", sliderElement["TextButton"])
				sliderElement["UIGradient"]["Rotation"] = 90
				sliderElement["UIGradient"]["Color"] = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(51, 51, 51)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(57, 57, 57))
				}

				sliderElement["Frame"] = Instance.new("Frame", sliderElement["TextButton"])
				sliderElement["Frame"]["ZIndex"] = 0
				sliderElement["Frame"]["BorderSizePixel"] = 0
				sliderElement["Frame"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["Frame"]["Size"] = UDim2.new((currentValue - minValue) / (maxValue - minValue), 0, 0, 5)
				sliderElement["Frame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

				sliderElement["FrameUIGradient"] = Instance.new("UIGradient", sliderElement["Frame"])
				sliderElement["FrameUIGradient"]["Rotation"] = 90
				sliderElement["FrameUIGradient"]["Color"] = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(144, 184, 39)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(83, 115, 10))
				}

				sliderElement["ValueLabel"] = Instance.new("TextLabel", sliderElement["Frame"])
				sliderElement["ValueLabel"]["TextStrokeTransparency"] = 0
				sliderElement["ValueLabel"]["ZIndex"] = 0
				sliderElement["ValueLabel"]["BorderSizePixel"] = 0
				sliderElement["ValueLabel"]["TextSize"] = 11
				sliderElement["ValueLabel"]["TextStrokeColor3"] = Color3.fromRGB(20, 20, 20)
				sliderElement["ValueLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				sliderElement["ValueLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				sliderElement["ValueLabel"]["TextColor3"] = Color3.fromRGB(200, 200, 200)
				sliderElement["ValueLabel"]["BackgroundTransparency"] = 1
				sliderElement["ValueLabel"]["Size"] = UDim2.new(0, 24, 0, 12)
				sliderElement["ValueLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				sliderElement["ValueLabel"]["Text"] = string.format("%." .. decimals .. "f" .. suffix, currentValue)
				sliderElement["ValueLabel"]["Position"] = UDim2.new(1, -12, 0, 1)

				if bind then
					sliderElement["BindButton"] = Instance.new("TextButton", sliderElement["Slider"])
					sliderElement["BindButton"]["TextStrokeTransparency"] = 0
					sliderElement["BindButton"]["TextXAlignment"] = Enum.TextXAlignment.Right
					sliderElement["BindButton"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14)
					sliderElement["BindButton"]["TextSize"] = 9
					sliderElement["BindButton"]["AutoButtonColor"] = false
					sliderElement["BindButton"]["TextColor3"] = Color3.fromRGB(142, 142, 142)
					sliderElement["BindButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
					sliderElement["BindButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
					sliderElement["BindButton"]["BackgroundTransparency"] = 1
					sliderElement["BindButton"]["Size"] = UDim2.new(0, 6, 0, 6)
					sliderElement["BindButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
					sliderElement["BindButton"]["Text"] = type(bind[2]) == "userdata" and "[ " .. getShortKeyName(bind[2]) .. " ]" or "[ - ]"
					sliderElement["BindButton"]["Name"] = "BindButton"
					sliderElement["BindButton"]["AnchorPoint"] = Vector2.new(1, 0)
					sliderElement["BindButton"]["AutomaticSize"] = Enum.AutomaticSize.X
					sliderElement["BindButton"]["Position"] = UDim2.new(1, 0, 0.5, -3)

					sliderElement["BindVariantHandler"] = Instance.new("Frame", sliderElement["BindButton"])
					sliderElement["BindVariantHandler"]["ZIndex"] = 4
					sliderElement["BindVariantHandler"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
					sliderElement["BindVariantHandler"]["Size"] = UDim2.new(0, 98, 0, 80)
					sliderElement["BindVariantHandler"]["Position"] = UDim2.new(0, -84, 0, 12)
					sliderElement["BindVariantHandler"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
					sliderElement["BindVariantHandler"]["Visible"] = false

					sliderElement["VariantHandlerUIListLayout"] = Instance.new("UIListLayout", sliderElement["BindVariantHandler"])
					sliderElement["VariantHandlerUIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
					sliderElement["VariantHandlerUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

					local variants = {"Always on", "On hotkey", "Toggle", "Off hotkey"}
					for i, variant in ipairs(variants) do
						local variantName = variant:gsub(" ", "")
						sliderElement[variantName] = Instance.new("TextButton", sliderElement["BindVariantHandler"])
						sliderElement[variantName]["TextXAlignment"] = Enum.TextXAlignment.Left
						sliderElement[variantName]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14)
						sliderElement[variantName]["TextSize"] = 10
						sliderElement[variantName]["TextColor3"] = bind[3] == variant and Color3.fromRGB(140, 175, 43) or Color3.fromRGB(209, 209, 209)
						sliderElement[variantName]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
						sliderElement[variantName]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
						sliderElement[variantName]["BackgroundTransparency"] = 1
						sliderElement[variantName]["Size"] = UDim2.new(1, -24, 0, 20)
						sliderElement[variantName]["LayoutOrder"] = i - 1
						sliderElement[variantName]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
						sliderElement[variantName]["Text"] = variant
						sliderElement[variantName]["Name"] = variantName
						sliderElement[variantName]["Position"] = UDim2.new(1, -3, 0.5, -3)

						table.insert(connections, sliderElement[variantName].MouseButton1Click:Connect(function()
							bind[3] = variant
							for _, v in ipairs(variants) do
								sliderElement[v:gsub(" ", "")].TextColor3 = v == variant and Color3.fromRGB(140, 175, 43) or Color3.fromRGB(209, 209, 209)
							end
							sliderElement["BindVariantHandler"]["Visible"] = false
							sliderElement["Slider"]["ZIndex"] = baseZIndex + 1
							if bind[3] == "Always on" then
								callback({value = currentValue, bind = true})
							elseif bind[3] == "Off hotkey" then
								callback({value = currentValue, bind = true})
							else
								callback({value = 0, bind = false})
							end
							keyToggleState = false
						end))
					end
				end

				local function updateSlider(input)
					local sliderWidth = sliderElement["TextButton"].AbsoluteSize.X
					local sliderPos = sliderElement["TextButton"].AbsolutePosition.X
					local mouseX = input.Position.X
					local relativeX = math.clamp(mouseX - sliderPos, 0, sliderWidth)
					local ratio = relativeX / sliderWidth
					currentValue = minValue + (maxValue - minValue) * ratio
					currentValue = tonumber(string.format("%." .. decimals .. "f", currentValue))
					sliderElement["Frame"]["Size"] = UDim2.new(ratio, 0, 0, 5)
					sliderElement["ValueLabel"]["Text"] = string.format("%." .. decimals .. "f" .. suffix, currentValue)
					if bind then
						if bind[3] == "Always on" or (bind[3] == "Toggle" and keyToggleState) or bind[3] == "On hotkey" then
							callback({value = currentValue, bind = true})
						end
					else
						callback(currentValue)
					end
				end

				table.insert(connections, sliderElement["TextButton"].InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						updateSlider(input)
						local connection
						connection = UserInputService.InputChanged:Connect(function(inputChanged)
							if inputChanged.UserInputType == Enum.UserInputType.MouseMovement then
								updateSlider(inputChanged)
							end
						end)
						table.insert(connections, UserInputService.InputEnded:Connect(function(inputEnded)
							if inputEnded.UserInputType == Enum.UserInputType.MouseButton1 then
								connection:Disconnect()
							end
						end))
					end
				end))

				if bind then
					table.insert(connections, sliderElement["BindButton"].MouseButton1Click:Connect(function()
						sliderElement["BindButton"]["Text"] = "[ ... ]"
						local inputConnection
						inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
							if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
								bind[2] = input.KeyCode
								sliderElement["BindButton"]["Text"] = "[ " .. getShortKeyName(input.KeyCode) .. " ]"
								inputConnection:Disconnect()
								if bind[3] == "Always on" then
									callback({value = currentValue, bind = true})
								elseif bind[3] == "Off hotkey" then
									callback({value = currentValue, bind = true})
								else
									callback({value = 0, bind = false})
								end
								keyToggleState = false
							end
						end)
					end))

					table.insert(connections, sliderElement["BindButton"].MouseButton2Click:Connect(function()
						for otherName, otherInstance in pairs(Library) do
							if otherName ~= name and otherInstance.BindVariantHandler then
								otherInstance.BindVariantHandler.Visible = false
								if otherInstance.Slider then
									otherInstance.Slider.ZIndex = baseZIndex + 1
								end
							end
						end
						local isVisible = not sliderElement["BindVariantHandler"]["Visible"]
						sliderElement["BindVariantHandler"]["Visible"] = isVisible
						sliderElement["Slider"]["ZIndex"] = isVisible and (baseZIndex + 3) or (baseZIndex + 1)
					end))

					-- Keybind input handling
					table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
						if not gameProcessed and bind[2] and input.KeyCode == bind[2] then
							if bind[3] == "On hotkey" then
								callback({value = currentValue, bind = true})
							elseif bind[3] == "Off hotkey" then
								callback({value = 0, bind = false})
							elseif bind[3] == "Toggle" then
								keyToggleState = not keyToggleState
								callback({value = keyToggleState and currentValue or 0, bind = keyToggleState})
							elseif bind[3] == "Always on" then
								callback({value = currentValue, bind = true})
							end
						end
					end))

					table.insert(connections, UserInputService.InputEnded:Connect(function(input, gameProcessed)
						if not gameProcessed and bind[2] and input.KeyCode == bind[2] then
							if bind[3] == "On hotkey" then
								callback({value = 0, bind = false})
							elseif bind[3] == "Off hotkey" then
								callback({value = currentValue, bind = true})
							elseif bind[3] == "Always on" then
								callback({value = currentValue, bind = true})
							end
						end
					end))
				end

				function sliderElement:Destroy()
					for _, connection in ipairs(connections) do
						connection:Disconnect()
					end
					Library[name] = nil
					sliderElement.Slider:Destroy()
				end
				
				function sliderElement:SetValue(value)
					if type(value) == "number" and value >= minValue and value <= maxValue then
						currentValue = tonumber(string.format("%." .. decimals .. "f", value))
						local ratio = (currentValue - minValue) / (maxValue - minValue)
						self["Frame"]["Size"] = UDim2.new(ratio, 0, 0, 5)
						self["ValueLabel"]["Text"] = string.format("%." .. decimals .. "f" .. suffix, currentValue)
						if bind then
							if bind[3] == "Always on" or (bind[3] == "Toggle" and keyToggleState) or bind[3] == "On hotkey" then
								callback({value = currentValue, bind = true})
							end
						else
							callback(currentValue)
						end
					else
						warn("[roskeet] Invalid value for slider: '" .. name .. "'. Value must be a number between " .. minValue .. " and " .. maxValue)
					end
				end
				
				function sliderElement:GetValue()
					return currentValue
				end

				Library[name] = sliderElement

				if bind and bind[3] == "Always on" then
					callback({value = currentValue, bind = true})
				elseif not bind then
					callback(currentValue)
				end

				return sliderElement
			end
			
			function section:newSelectbox(params)
				local selectboxElement = {}

				assert(type(params) == "table", "[roskeet] newSelectbox requires a table as its parameter")

				local name = params.Name or "Selectbox"
				local options = params.Options or {"Variant"}
				local defaultValue = params.Default or (params.Choice == "multi" and {} or options[1])
				local choice = params.Choice or "single" -- single or multi selection
				local callback = params.Callback or function() end

				if type(name) ~= "string" or name == "" then
					name = "Selectbox"
					warn("[roskeet] Invalid or missing selectbox name. Using default name: '" .. name .. "'")
				end

				assert(type(options) == "table" and #options > 0, "[roskeet] Invalid or empty options table for selectbox: '" .. name .. "'")
				for i, option in ipairs(options) do
					assert(type(option) == "string" and option ~= "", "[roskeet] Invalid option at index " .. i .. " for selectbox: '" .. name .. "'")
				end

				if choice ~= "single" and choice ~= "multi" then
					choice = "single"
					warn("[roskeet] Invalid choice mode for selectbox: '" .. name .. "'. Using default: 'single'")
				end

				if choice == "single" then
					if type(defaultValue) ~= "string" or not table.find(options, defaultValue) then
						defaultValue = options[1]
						warn("[roskeet] Invalid default value for single selectbox: '" .. name .. "'. Using first option: '" .. defaultValue .. "'")
					end
				else
					if type(defaultValue) ~= "table" then
						defaultValue = {}
						warn("[roskeet] Invalid default value for multi selectbox: '" .. name .. "'. Using empty table")
					else
						for i, value in ipairs(defaultValue) do
							if type(value) ~= "string" or not table.find(options, value) then
								defaultValue = {}
								warn("[roskeet] Invalid default value at index " .. i .. " for multi selectbox: '" .. name .. "'. Using empty table")
								break
							end
						end
					end
				end

				assert(type(callback) == "function", "[roskeet] Invalid or missing callback function for selectbox: '" .. name .. "'")

				local selectedValues = choice == "multi" and {} or defaultValue
				if choice == "multi" then
					for _, value in ipairs(defaultValue) do
						table.insert(selectedValues, value)
					end
				end
				local connections = {}
				local baseZIndex = 3

				selectboxElement["Selectbox"] = Instance.new("Frame", section["ElementHandler"])
				selectboxElement["Selectbox"]["ZIndex"] = baseZIndex
				selectboxElement["Selectbox"]["BorderSizePixel"] = 0
				selectboxElement["Selectbox"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				selectboxElement["Selectbox"]["Size"] = UDim2.new(1, -40, 0, 36)
				selectboxElement["Selectbox"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				selectboxElement["Selectbox"]["Name"] = "Selectbox"
				selectboxElement["Selectbox"]["BackgroundTransparency"] = 1

				selectboxElement["TextLabel"] = Instance.new("TextLabel", selectboxElement["Selectbox"])
				selectboxElement["TextLabel"]["BorderSizePixel"] = 0
				selectboxElement["TextLabel"]["TextSize"] = 11
				selectboxElement["TextLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
				selectboxElement["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				selectboxElement["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				selectboxElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				selectboxElement["TextLabel"]["BackgroundTransparency"] = 1
				selectboxElement["TextLabel"]["Size"] = UDim2.new(0, 168, 0, 14)
				selectboxElement["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				selectboxElement["TextLabel"]["Text"] = name
				selectboxElement["TextLabel"]["Position"] = UDim2.new(0, 20, 0, 2)

				selectboxElement["TextButton"] = Instance.new("TextButton", selectboxElement["Selectbox"])
				selectboxElement["TextButton"]["TextXAlignment"] = Enum.TextXAlignment.Left
				selectboxElement["TextButton"]["TextSize"] = 14
				selectboxElement["TextButton"]["AutoButtonColor"] = false
				selectboxElement["TextButton"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				selectboxElement["TextButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				selectboxElement["TextButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				selectboxElement["TextButton"]["ZIndex"] = baseZIndex
				selectboxElement["TextButton"]["Size"] = UDim2.new(0, 156, 0, 18)
				selectboxElement["TextButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
				selectboxElement["TextButton"]["Text"] = ""
				selectboxElement["TextButton"]["Position"] = UDim2.new(0, 20, 0, 17)

				selectboxElement["UIGradient"] = Instance.new("UIGradient", selectboxElement["TextButton"])
				selectboxElement["UIGradient"]["Rotation"] = 90
				selectboxElement["UIGradient"]["Color"] = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 32, 32)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(37, 37, 37))
				}

				selectboxElement["SelectedLabel"] = Instance.new("TextLabel", selectboxElement["TextButton"])
				selectboxElement["SelectedLabel"]["TextTruncate"] = Enum.TextTruncate.AtEnd
				selectboxElement["SelectedLabel"]["BorderSizePixel"] = 0
				selectboxElement["SelectedLabel"]["TextSize"] = 12
				selectboxElement["SelectedLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
				selectboxElement["SelectedLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				selectboxElement["SelectedLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				selectboxElement["SelectedLabel"]["TextColor3"] = Color3.fromRGB(153, 153, 153)
				selectboxElement["SelectedLabel"]["BackgroundTransparency"] = 1
				selectboxElement["SelectedLabel"]["Size"] = UDim2.new(1, -16, 1, 0)
				selectboxElement["SelectedLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				selectboxElement["SelectedLabel"]["Text"] = choice == "multi" and table.concat(selectedValues, ", ") or selectedValues
				selectboxElement["SelectedLabel"]["Position"] = UDim2.new(0, 8, 0, 0)

				selectboxElement["Dropdown"] = Instance.new("Frame", selectboxElement["TextButton"])
				selectboxElement["Dropdown"]["Visible"] = false
				selectboxElement["Dropdown"]["ZIndex"] = baseZIndex + 1
				selectboxElement["Dropdown"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
				selectboxElement["Dropdown"]["AutomaticSize"] = Enum.AutomaticSize.Y
				selectboxElement["Dropdown"]["Size"] = UDim2.new(0, 156, 0, 0)
				selectboxElement["Dropdown"]["Position"] = UDim2.new(0, 0, 1, 3)
				selectboxElement["Dropdown"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)

				selectboxElement["DropdownUIListLayout"] = Instance.new("UIListLayout", selectboxElement["Dropdown"])
				selectboxElement["DropdownUIListLayout"]["Padding"] = UDim.new(0, 2)
				selectboxElement["DropdownUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

				local optionButtons = {}
				for i, option in ipairs(options) do
					local button = Instance.new("TextButton", selectboxElement["Dropdown"])
					button["BorderSizePixel"] = 0
					button["TextXAlignment"] = Enum.TextXAlignment.Left
					button["TextSize"] = 12
					button["AutoButtonColor"] = false
					button["TextColor3"] = (choice == "multi" and table.find(selectedValues, option) or selectedValues == option) and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
					button["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
					button["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					button["ZIndex"] = baseZIndex + 1
					button["Size"] = UDim2.new(1, 0, 0, 18)
					button["BorderColor3"] = Color3.fromRGB(0, 0, 0)
					button["Text"] = "   " .. option
					optionButtons[option] = button

					table.insert(connections, button.MouseButton1Click:Connect(function()
						if choice == "single" then
							selectedValues = option
							for opt, btn in pairs(optionButtons) do
								btn.TextColor3 = opt == option and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
								btn["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
							end
							selectboxElement["SelectedLabel"]["Text"] = option
							selectboxElement["Dropdown"]["Visible"] = false
							selectboxElement["Selectbox"]["ZIndex"] = baseZIndex
							button["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
							callback(selectedValues)
						else
							if table.find(selectedValues, option) then
								table.remove(selectedValues, table.find(selectedValues, option))
								button.TextColor3 = Color3.fromRGB(255, 255, 255)
							else
								table.insert(selectedValues, option)
								button.TextColor3 = Color3.fromRGB(160, 203, 44)
							end
							selectboxElement["SelectedLabel"]["Text"] = table.concat(selectedValues, ", ") or ""
							button["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
							callback(selectedValues)
						end
					end))

					table.insert(connections, button.MouseEnter:Connect(function()
						button["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
					end))
					table.insert(connections, button.MouseLeave:Connect(function()
						button["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
					end))
				end

				table.insert(connections, selectboxElement["TextButton"].MouseButton1Click:Connect(function()
					for otherName, otherInstance in pairs(Library) do
						if otherName ~= name then
							if otherInstance.Dropdown then
								otherInstance.Dropdown.Visible = false
							end
							if otherInstance.BindVariantHandler then
								otherInstance.BindVariantHandler.Visible = false
							end
							if otherInstance.Selectbox then
								otherInstance.Selectbox.ZIndex = baseZIndex
							end
							if otherInstance.ToggleFrame then
								otherInstance.ToggleFrame.ZIndex = baseZIndex + 1
							elseif otherInstance.Bind then
								otherInstance.Bind.ZIndex = baseZIndex + 1
							end
						end
					end
					local isVisible = not selectboxElement["Dropdown"]["Visible"]
					selectboxElement["Dropdown"]["Visible"] = isVisible
					selectboxElement["Selectbox"]["ZIndex"] = isVisible and (baseZIndex + 3) or baseZIndex
				end))

				table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if not gameProcessed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2) then
						if selectboxElement["Dropdown"]["Visible"] then
							local mousePos = UserInputService:GetMouseLocation()
							local guiObjects = GuiService:GetGuiObjectsAtPosition(mousePos.X, mousePos.Y)
							local isClickOutside = true
							for _, obj in ipairs(guiObjects) do
								if obj == selectboxElement["Dropdown"] or obj:IsDescendantOf(selectboxElement["Dropdown"]) or obj == selectboxElement["TextButton"] or obj:IsDescendantOf(selectboxElement["TextButton"]) then
									isClickOutside = false
									break
								end
							end
							if isClickOutside then
								selectboxElement["Dropdown"]["Visible"] = false
								selectboxElement["Selectbox"]["ZIndex"] = baseZIndex
							end
						end
					end
				end))

				function selectboxElement:SetValue(value)
					if choice == "single" then
						if type(value) == "string" and table.find(options, value) then
							selectedValues = value
							selectboxElement["SelectedLabel"]["Text"] = value
							for opt, btn in pairs(optionButtons) do
								btn.TextColor3 = opt == value and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
								btn["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
							end
							callback(selectedValues)
						else
							warn("[roskeet] Invalid value for single selectbox: '" .. name .. "'. Value must be a valid option string")
						end
					else
						if type(value) == "table" then
							local validValues = {}
							for _, val in ipairs(value) do
								if type(val) == "string" and table.find(options, val) then
									table.insert(validValues, val)
								end
							end
							if #validValues > 0 then
								selectedValues = validValues
								selectboxElement["SelectedLabel"]["Text"] = table.concat(selectedValues, ", ") or ""
								for opt, btn in pairs(optionButtons) do
									btn.TextColor3 = table.find(selectedValues, opt) and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
									btn["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
								end
								callback(selectedValues)
							else
								warn("[roskeet] Invalid value table for multi selectbox: '" .. name .. "'. All values must be valid option strings")
							end
						else
							warn("[roskeet] Invalid value for multi selectbox: '" .. name .. "'. Value must be a table of valid option strings")
						end
					end
				end

				function selectboxElement:Destroy()
					for _, connection in ipairs(connections) do
						connection:Disconnect()
					end
					Library[name] = nil
					selectboxElement.Selectbox:Destroy()
				end
				
				function selectboxElement:GetValue()
					return selectedValues
				end

				Library[name] = selectboxElement

				callback(selectedValues)

				return selectboxElement
			end

			function section:newSearchbox(params)
				local searchboxElement = {}

				-- Validate parameters
				assert(type(params) == "table", "[roskeet] newSearchbox requires a table as its parameter")

				local name = params.Name or "Searchbox"
				local options = params.Options or {"Variant 1", "Variant 2"}
				local defaultValue = params.Default or ""
				local callback = params.Callback or function() end

				-- Validate name
				if type(name) ~= "string" or name == "" then
					name = "Searchbox"
					warn("[roskeet] Invalid or missing searchbox name. Using default name: '" .. name .. "'")
				end

				-- Validate options
				assert(type(options) == "table" and #options > 0, "[roskeet] Invalid or empty options table for searchbox: '" .. name .. "'")
				for i, option in ipairs(options) do
					assert(type(option) == "string" and option ~= "", "[roskeet] Invalid option at index " .. i .. " for searchbox: '" .. name .. "'")
				end

				-- Validate default value
				if type(defaultValue) ~= "string" then
					defaultValue = ""
					warn("[roskeet] Invalid default value for searchbox: '" .. name .. "'. Using empty string")
				end

				-- Validate callback
				assert(type(callback) == "function", "[roskeet] Invalid or missing callback function for searchbox: '" .. name .. "'")

				local selectedValue = defaultValue
				local connections = {}
				local baseZIndex = 3
				local variantButtons = {}

				-- Create searchbox frame
				searchboxElement["SearchList"] = Instance.new("Frame", section["ElementHandler"])
				searchboxElement["SearchList"]["BorderSizePixel"] = 0
				searchboxElement["SearchList"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				searchboxElement["SearchList"]["Size"] = UDim2.new(1, -40, 0, 130)
				searchboxElement["SearchList"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				searchboxElement["SearchList"]["Name"] = "SearchList"
				searchboxElement["SearchList"]["BackgroundTransparency"] = 1
				searchboxElement["SearchList"]["ZIndex"] = baseZIndex

				-- Create title label
				searchboxElement["TextLabel"] = Instance.new("TextLabel", searchboxElement["SearchList"])
				searchboxElement["TextLabel"]["BorderSizePixel"] = 0
				searchboxElement["TextLabel"]["TextSize"] = 11
				searchboxElement["TextLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left
				searchboxElement["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				searchboxElement["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				searchboxElement["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				searchboxElement["TextLabel"]["BackgroundTransparency"] = 1
				searchboxElement["TextLabel"]["Size"] = UDim2.new(0, 168, 0, 14)
				searchboxElement["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				searchboxElement["TextLabel"]["Text"] = name
				searchboxElement["TextLabel"]["Position"] = UDim2.new(0, 20, 0, 2)

				-- Create search handler frame
				searchboxElement["SearchHandler"] = Instance.new("Frame", searchboxElement["SearchList"])
				searchboxElement["SearchHandler"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
				searchboxElement["SearchHandler"]["Size"] = UDim2.new(0, 156, 0, 18)
				searchboxElement["SearchHandler"]["Position"] = UDim2.new(0, 20, 0, 17)
				searchboxElement["SearchHandler"]["BorderColor3"] = Color3.fromRGB(13, 13, 13)
				searchboxElement["SearchHandler"]["Name"] = "SearchHandler"

				-- Create outline frame
				searchboxElement["Outline"] = Instance.new("Frame", searchboxElement["SearchHandler"])
				searchboxElement["Outline"]["BorderSizePixel"] = 0
				searchboxElement["Outline"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
				searchboxElement["Outline"]["Size"] = UDim2.new(0, 156, 0, 18)
				searchboxElement["Outline"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				searchboxElement["Outline"]["Name"] = "Outline"
				searchboxElement["Outline"]["LayoutOrder"] = -999

				-- Create text box
				searchboxElement["TextBox"] = Instance.new("TextBox", searchboxElement["Outline"])
				searchboxElement["TextBox"]["CursorPosition"] = -1
				searchboxElement["TextBox"]["TextXAlignment"] = Enum.TextXAlignment.Left
				searchboxElement["TextBox"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255)
				searchboxElement["TextBox"]["ZIndex"] = baseZIndex + 1
				searchboxElement["TextBox"]["BorderSizePixel"] = 0
				searchboxElement["TextBox"]["TextSize"] = 11
				searchboxElement["TextBox"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
				searchboxElement["TextBox"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
				searchboxElement["TextBox"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				searchboxElement["TextBox"]["PlaceholderText"] = "Search..."
				searchboxElement["TextBox"]["Size"] = UDim2.new(0, 144, 0, 12)
				searchboxElement["TextBox"]["Position"] = UDim2.new(0, 6, 0, 4)
				searchboxElement["TextBox"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				searchboxElement["TextBox"]["Text"] = selectedValue
				searchboxElement["TextBox"]["BackgroundTransparency"] = 1

				-- Create background frame
				searchboxElement["Background"] = Instance.new("Frame", searchboxElement["Outline"])
				searchboxElement["Background"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
				searchboxElement["Background"]["Size"] = UDim2.new(0, 152, 0, 14)
				searchboxElement["Background"]["Position"] = UDim2.new(0, 2, 0, 2)
				searchboxElement["Background"]["BorderColor3"] = Color3.fromRGB(17, 17, 17)
				searchboxElement["Background"]["Name"] = "Background"

				-- Create scrolling frame
				searchboxElement["ScrollingFrame"] = Instance.new("ScrollingFrame", searchboxElement["SearchList"])
				searchboxElement["ScrollingFrame"]["Active"] = true
				searchboxElement["ScrollingFrame"]["TopImage"] = [[rbxassetid://17256458146]]
				searchboxElement["ScrollingFrame"]["MidImage"] = [[rbxassetid://17256458146]]
				searchboxElement["ScrollingFrame"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
				searchboxElement["ScrollingFrame"]["BottomImage"] = [[rbxassetid://17256458146]]
				searchboxElement["ScrollingFrame"]["Size"] = UDim2.new(0, 156, 0, 88)
				searchboxElement["ScrollingFrame"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
				searchboxElement["ScrollingFrame"]["Position"] = UDim2.new(0, 20, 0, 36)
				searchboxElement["ScrollingFrame"]["BorderColor3"] = Color3.fromRGB(17, 17, 17)
				searchboxElement["ScrollingFrame"]["ScrollBarThickness"] = 5
				searchboxElement["ScrollingFrame"]["Visible"] = false
				searchboxElement["ScrollingFrame"]["ZIndex"] = baseZIndex + 1

				-- Add UIListLayout to scrolling frame
				searchboxElement["UIListLayout"] = Instance.new("UIListLayout", searchboxElement["ScrollingFrame"])
				searchboxElement["UIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
				searchboxElement["UIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

				-- Function to update variant list
				local function updateVariantList(filter)
					-- Clear existing buttons
					for _, button in pairs(variantButtons) do
						button:Destroy()
					end
					variantButtons = {}

					-- Add buttons for matching variants
					local filteredOptions = {}
					if filter == "" then
						filteredOptions = options
					else
						for _, option in ipairs(options) do
							if string.find(string.lower(option), string.lower(filter), 1, true) then
								table.insert(filteredOptions, option)
							end
						end
					end

					for i, option in ipairs(filteredOptions) do
						local button = Instance.new("TextButton", searchboxElement["ScrollingFrame"])
						button["BorderSizePixel"] = 0
						button["TextXAlignment"] = Enum.TextXAlignment.Left
						button["TextSize"] = 12
						button["AutoButtonColor"] = false
						button["TextColor3"] = selectedValue == option and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
						button["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
						button["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
						button["ZIndex"] = baseZIndex + 1
						button["Size"] = UDim2.new(1, 0, 0, 18)
						button["BorderColor3"] = Color3.fromRGB(0, 0, 0)
						button["Text"] = "   " .. option
						button["LayoutOrder"] = i
						variantButtons[option] = button

						table.insert(connections, button.MouseButton1Click:Connect(function()
							selectedValue = option
							for opt, btn in pairs(variantButtons) do
								btn.TextColor3 = opt == option and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
								btn.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
							end
							searchboxElement["TextBox"].Text = option
							searchboxElement["ScrollingFrame"].Visible = false
							searchboxElement["SearchList"].ZIndex = baseZIndex
							button.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
							callback(selectedValue)
						end))

						table.insert(connections, button.MouseEnter:Connect(function()
							button.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
						end))
						table.insert(connections, button.MouseLeave:Connect(function()
							button.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						end))
					end

					-- Update CanvasSize
					searchboxElement["ScrollingFrame"].CanvasSize = UDim2.new(0, 0, 0, #filteredOptions * 18 + (#filteredOptions > 0 and 2 or 0))
				end

				-- Initialize variant list
				updateVariantList("")

				-- Toggle scrolling frame visibility
				table.insert(connections, searchboxElement["TextBox"].FocusLost:Connect(function(enterPressed)
					if enterPressed then
						local firstOption = nil
						for _, option in ipairs(options) do
							if string.find(string.lower(option), string.lower(searchboxElement["TextBox"].Text), 1, true) then
								firstOption = option
								break
							end
						end
						if firstOption then
							selectedValue = firstOption
							searchboxElement["TextBox"].Text = firstOption
							for opt, btn in pairs(variantButtons) do
								btn.TextColor3 = opt == firstOption and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
							end
							callback(selectedValue)
						end
						searchboxElement["ScrollingFrame"].Visible = false
						searchboxElement["SearchList"].ZIndex = baseZIndex
					end
				end))

				table.insert(connections, searchboxElement["TextBox"].Focused:Connect(function()
					for otherName, otherInstance in pairs(Library) do
						if otherName ~= name and type(otherInstance) == "table" then
							if otherInstance.Dropdown and otherInstance.Dropdown:IsA("GuiObject") then
								otherInstance.Dropdown.Visible = false
							end
							if otherInstance.ScrollingFrame and otherInstance.ScrollingFrame:IsA("GuiObject") then
								otherInstance.ScrollingFrame.Visible = false
							end
							if otherInstance.BindVariantHandler and otherInstance.BindVariantHandler:IsA("GuiObject") then
								otherInstance.BindVariantHandler.Visible = false
							end
							if otherInstance.Selectbox and otherInstance.Selectbox:IsA("GuiObject") then
								otherInstance.Selectbox.ZIndex = baseZIndex
							end
							if otherInstance.SearchList and otherInstance.SearchList:IsA("GuiObject") then
								otherInstance.SearchList.ZIndex = baseZIndex
							end
							if otherInstance.ToggleFrame and otherInstance.ToggleFrame:IsA("GuiObject") then
								otherInstance.ToggleFrame.ZIndex = baseZIndex + 1
							end
							if otherInstance.Slider and otherInstance.Slider:IsA("GuiObject") then
								otherInstance.Slider.ZIndex = baseZIndex + 1
							end
							if otherInstance.Bind and otherInstance.Bind:IsA("GuiObject") then
								otherInstance.Bind.ZIndex = baseZIndex + 1
							end
						end
					end
					searchboxElement["ScrollingFrame"].Visible = true
					searchboxElement["SearchList"].ZIndex = baseZIndex + 3
					updateVariantList(searchboxElement["TextBox"].Text)
				end))

				-- Update variant list on text change
				table.insert(connections, searchboxElement["TextBox"].Changed:Connect(function(property)
					if property == "Text" then
						updateVariantList(searchboxElement["TextBox"].Text)
					end
				end))

				-- Handle outside clicks to close scrolling frame
				table.insert(connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if not gameProcessed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2) then
						if searchboxElement["ScrollingFrame"]["Visible"] and not searchboxElement["TextBox"]:IsFocused() then
							local mousePos = UserInputService:GetMouseLocation()
							local guiObjects = GuiService:GetGuiObjectsAtPosition(mousePos.X, mousePos.Y)
							local isClickOutside = true
							for _, obj in ipairs(guiObjects) do
								if obj == searchboxElement["ScrollingFrame"] or obj:IsDescendantOf(searchboxElement["ScrollingFrame"]) or obj == searchboxElement["SearchHandler"] or obj:IsDescendantOf(searchboxElement["SearchHandler"]) then
									isClickOutside = false
									break
								end
							end
							if isClickOutside then
								searchboxElement["ScrollingFrame"]["Visible"] = false
								searchboxElement["SearchList"]["ZIndex"] = baseZIndex
							end
						end
					end
				end))

				-- SetValue function
				function searchboxElement:SetValue(value)
					if type(value) == "string" and (value == "" or table.find(options, value)) then
						selectedValue = value
						searchboxElement["TextBox"].Text = value
						for opt, btn in pairs(variantButtons) do
							btn.TextColor3 = opt == value and Color3.fromRGB(160, 203, 44) or Color3.fromRGB(255, 255, 255)
							btn.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						end
						updateVariantList(value)
						callback(selectedValue)
					else
						warn("[roskeet] Invalid value for searchbox: '" .. name .. "'. Value must be an empty string or a valid option")
					end
				end

				-- Destroy function to clean up
				function searchboxElement:Destroy()
					for _, connection in ipairs(connections) do
						connection:Disconnect()
					end
					Library[name] = nil
					searchboxElement.SearchList:Destroy()
				end
				
				function searchboxElement:GetValue()
					return selectedValue
				end
				
				-- Store searchbox element in Library
				Library[name] = searchboxElement

				-- Initialize callback
				callback(selectedValue)

				return searchboxElement
			end
			
			return section
		end

		if window.CurrentTab == nil then
			window.CurrentTab = Library[name]
		end
		
		return tab
	end
	return window
end

return Library