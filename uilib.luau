local Library,Loader = {},{}
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

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

		-- tab freme
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
		
		-- tab button
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
			section["SectionLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
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
			
			function section:newToggle(params)
				local toggle = {}
				
				toggle["ToggleFrame"] = Instance.new("Frame", section["ElementHandler"]);
				toggle["ToggleFrame"]["ZIndex"] = 2;
				toggle["ToggleFrame"]["BorderSizePixel"] = 0;
				toggle["ToggleFrame"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["ToggleFrame"]["Size"] = UDim2.new(1, -40, 0, 16);
				toggle["ToggleFrame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["ToggleFrame"]["Name"] = [[Toggle]];
				toggle["ToggleFrame"]["BackgroundTransparency"] = 1;

				toggle["Button"] = Instance.new("TextButton", toggle["ToggleFrame"]);
				toggle["Button"]["TextSize"] = 14;
				toggle["Button"]["AutoButtonColor"] = false;
				toggle["Button"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["Button"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["Button"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				toggle["Button"]["Size"] = UDim2.new(0, 6, 0, 6);
				toggle["Button"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
				toggle["Button"]["Text"] = [[]];
				toggle["Button"]["Name"] = [[ToggleButton]];
				toggle["Button"]["Position"] = UDim2.new(0, 0, 0.5, -3);

				toggle["UIGradient"] = Instance.new("UIGradient", toggle["Button"]);
				toggle["UIGradient"]["Rotation"] = 90;
				toggle["UIGradient"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(78, 78, 78)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 53, 53))};

				toggle["TextLabel"] = Instance.new("TextLabel", toggle["ToggleFrame"]);
				toggle["TextLabel"]["BorderSizePixel"] = 0;
				toggle["TextLabel"]["TextSize"] = 11;
				toggle["TextLabel"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				toggle["TextLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["TextLabel"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				toggle["TextLabel"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["TextLabel"]["BackgroundTransparency"] = 1;
				toggle["TextLabel"]["Size"] = UDim2.new(0, 168, 0, 14);
				toggle["TextLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				toggle["TextLabel"]["Text"] = params.Name;
				toggle["TextLabel"]["Position"] = UDim2.new(0, 20, 0, 2);

				toggle["BindButton"] = Instance.new("TextButton", toggle["ToggleFrame"]);
				toggle["BindButton"]["TextStrokeTransparency"] = 0;
				toggle["BindButton"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				toggle["BindButton"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14);
				toggle["BindButton"]["TextSize"] = 9;
				toggle["BindButton"]["AutoButtonColor"] = false;
				toggle["BindButton"]["TextColor3"] = Color3.fromRGB(142, 142, 142);
				toggle["BindButton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["BindButton"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				toggle["BindButton"]["BackgroundTransparency"] = 1;
				toggle["BindButton"]["Size"] = UDim2.new(0, 6, 0, 6);
				toggle["BindButton"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
				toggle["BindButton"]["Text"] = "[ - ]";
				toggle["BindButton"]["Name"] = [[BindButon]];
				toggle["BindButton"]["Position"] = UDim2.new(1, -3, 0.5, -3);

				toggle["BindVariantHandler"] = Instance.new("Frame", toggle["BindButton"]);
				toggle["BindVariantHandler"]["Visible"] = false;
				toggle["BindVariantHandler"]["ZIndex"] = 4;
				toggle["BindVariantHandler"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
				toggle["BindVariantHandler"]["Size"] = UDim2.new(0, 98, 0, 80);
				toggle["BindVariantHandler"]["Position"] = UDim2.new(-18, -3, 1, 1);
				toggle["BindVariantHandler"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);

				toggle["VariantHandlerUIListLayout"] = Instance.new("UIListLayout", toggle["BindVariantHandler"]);
				toggle["VariantHandlerUIListLayout"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
				toggle["VariantHandlerUIListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


				toggle["Always on"] = Instance.new("TextButton", toggle["BindVariantHandler"]);
				toggle["Always on"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				toggle["Always on"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14);
				toggle["Always on"]["TextSize"] = 10;
				toggle["Always on"]["TextColor3"] = Color3.fromRGB(209, 209, 209);
				toggle["Always on"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["Always on"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				toggle["Always on"]["BackgroundTransparency"] = 1;
				toggle["Always on"]["Size"] = UDim2.new(1, -24, 0, 20);
				toggle["Always on"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
				toggle["Always on"]["Text"] = [[Always on]];
				toggle["Always on"]["Name"] = [[AlwaysOn]];
				toggle["Always on"]["Position"] = UDim2.new(1, -3, 0.5, -3);


				-- ServerStorage.ScreenGui.Toggle.BindButon.Frame.On hotkey
				toggle["On hotkey"] = Instance.new("TextButton", toggle["BindVariantHandler"]);
				toggle["On hotkey"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				toggle["On hotkey"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14);
				toggle["On hotkey"]["TextSize"] = 10;
				toggle["On hotkey"]["TextColor3"] = Color3.fromRGB(140, 175, 43);
				toggle["On hotkey"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["On hotkey"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				toggle["On hotkey"]["BackgroundTransparency"] = 1;
				toggle["On hotkey"]["Size"] = UDim2.new(1, -24, 0, 20);
				toggle["On hotkey"]["LayoutOrder"] = 1;
				toggle["On hotkey"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
				toggle["On hotkey"]["Text"] = [[On hotkey]];
				toggle["On hotkey"]["Name"] = [[On hotkey]];
				toggle["On hotkey"]["Position"] = UDim2.new(1, -3, 0.5, -3);


				-- ServerStorage.ScreenGui.Toggle.BindButon.Frame.Toggle
				toggle["Toggle"] = Instance.new("TextButton", toggle["BindVariantHandler"]);
				toggle["Toggle"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				toggle["Toggle"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14);
				toggle["Toggle"]["TextSize"] = 10;
				toggle["Toggle"]["TextColor3"] = Color3.fromRGB(209, 209, 209);
				toggle["Toggle"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["Toggle"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				toggle["Toggle"]["BackgroundTransparency"] = 1;
				toggle["Toggle"]["Size"] = UDim2.new(1, -24, 0, 20);
				toggle["Toggle"]["LayoutOrder"] = 2;
				toggle["Toggle"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
				toggle["Toggle"]["Text"] = [[Toggle]];
				toggle["Toggle"]["Name"] = [[Toggle]];
				toggle["Toggle"]["Position"] = UDim2.new(1, -3, 0.5, -3);


				-- ServerStorage.ScreenGui.Toggle.BindButon.Frame.Off hotkey
				toggle["Off hotkey"] = Instance.new("TextButton", toggle["BindVariantHandler"]);
				toggle["Off hotkey"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				toggle["Off hotkey"]["TextStrokeColor3"] = Color3.fromRGB(14, 14, 14);
				toggle["Off hotkey"]["TextSize"] = 10;
				toggle["Off hotkey"]["TextColor3"] = Color3.fromRGB(209, 209, 209);
				toggle["Off hotkey"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				toggle["Off hotkey"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				toggle["Off hotkey"]["BackgroundTransparency"] = 1;
				toggle["Off hotkey"]["Size"] = UDim2.new(1, -24, 0, 20);
				toggle["Off hotkey"]["LayoutOrder"] = 4;
				toggle["Off hotkey"]["BorderColor3"] = Color3.fromRGB(13, 13, 13);
				toggle["Off hotkey"]["Text"] = [[Off hotkey]];
				toggle["Off hotkey"]["Name"] = [[Off hotkey]];
				toggle["Off hotkey"]["Position"] = UDim2.new(1, -3, 0.5, -3);
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