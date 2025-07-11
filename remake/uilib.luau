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
		local icon = params.Icon or 0
		local name = params.Name or "Tab"
		
		if icon == 0 or nil then
			assert(false,"[roskeet] invalid icon id for tab: "..name..". set it in function('rbxassetid://exampleid',name)")
			return
		end
		if name == "Tab" or Library[name] ~= nil then
			assert(false,"[roskeet] tab name not setted, named as: "..name..". set it in function(id,'Example Tab')")
			return
		end
		
		Library[name] = {
			Icon = icon,
			Name = name,
		}
		
		
		
		Library[name].Button = {}
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
				window.CurrentTab.Button["SelectedBackground"]["Visible"] = false
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

		if window.CurrentTab == nil then
			window.CurrentTab = Library[name]
		end
	end
	return window
end

return Library