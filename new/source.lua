local RunService, Stats, TweenService, UserInputService, GuiService, HttpService = game:GetService("RunService"), game:GetService("Stats"), game:GetService("TweenService"), game:GetService("UserInputService"), game:GetService("GuiService"), game:GetService("HttpService")

local library, tree, tween = {}, {}, {
	info = TweenInfo.new(0.15,Enum.EasingStyle.Sine,Enum.EasingDirection.In),
	infoFast = TweenInfo.new(0.05,Enum.EasingStyle.Sine,Enum.EasingDirection.Out)
}

function library:newInstance(name,build)
	assert(type(name) == "string", [[[roskeet] newInstance: requires string in first parameter - name]])
	assert(type(build) == "string", [[[roskeet] newInstance: requires string in second parameter - build]])

	local window = {top={},center={}}
	window.CurrentTab = nil
	tree[name]={}

	-- StarterGui.roskeet
	window["1"] = Instance.new("ScreenGui", game:GetService("CoreGui").RobloxGui);
	window["1"]["IgnoreGuiInset"] = true;
	window["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
	window["1"]["Name"] = [[roskeet ui]];
	window["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	-- StarterGui.roskeet.UI
	window["2"] = Instance.new("Frame", window["1"]);
	window["2"]["BorderSizePixel"] = 0;
	window["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	window["2"]["Size"] = UDim2.new(0, 600, 0, 368);
	window["2"]["Position"] = UDim2.new(0.24769, 0, 0.21865, 0);
	window["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window["2"]["Name"] = [[UI]];
	window["2"]["BackgroundTransparency"] = 0.05;

	-- StarterGui.roskeet.UI.UICorner
	window["3"] = Instance.new("UICorner", window["2"]);
	window["3"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.roskeet.UI.UIStroke
	window["4"] = Instance.new("UIStroke", window["2"]);
	window["4"]["Color"] = Color3.fromRGB(61, 61, 61);

	window["5"]= Instance.new("UIScale", window["1"]);

	-- StarterGui.roskeet.UI.Top
	window.top["1"] = Instance.new("Frame", window["2"]);
	window.top["1"]["BorderSizePixel"] = 0;
	window.top["1"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	window.top["1"]["Size"] = UDim2.new(0, 584, 0, 32);
	window.top["1"]["Position"] = UDim2.new(0, 8, 0, 8);
	window.top["1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window.top["1"]["Name"] = [[Top]];
	window.top["1"]["BackgroundTransparency"] = 0.1;

	-- StarterGui.roskeet.UI.Top.UIListLayout
	window.top["2"] = Instance.new("UIListLayout", window.top["1"]);
	window.top["2"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	window.top["2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	window.top["2"]["FillDirection"] = Enum.FillDirection.Horizontal;

	-- StarterGui.roskeet.UI.Top.TextLabel
	window.top["3"] = Instance.new("TextLabel", window.top["1"]);
	window.top["3"]["BorderSizePixel"] = 0;
	window.top["3"]["TextSize"] = 14;
	window.top["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	window.top["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	window.top["3"]["TextColor3"] = Color3.fromRGB(205, 228, 54);
	window.top["3"]["BackgroundTransparency"] = 1;
	window.top["3"]["Size"] = UDim2.new(0.08185, 56, 1, 0);
	window.top["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window.top["3"]["Text"] = [[roskeet]];
	window.top["3"]["LayoutOrder"] = -1;
	window.top["3"]["AutomaticSize"] = Enum.AutomaticSize.X;

	-- StarterGui.roskeet.UI.Top.TextLabel.UIPadding
	window.top["4"] = Instance.new("UIPadding", window.top["3"]);

	-- StarterGui.roskeet.UI.Top.Container
	window.top["5"] = Instance.new("Frame", window.top["1"]);
	window.top["5"]["BorderSizePixel"] = 0;
	window.top["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	window.top["5"]["AutomaticSize"] = Enum.AutomaticSize.X;
	window.top["5"]["Size"] = UDim2.new(0, 0, 1, 0);
	window.top["5"]["Position"] = UDim2.new(0.17774, 0, 0, 0);
	window.top["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window.top["5"]["Name"] = [[Container]];
	window.top["5"]["BackgroundTransparency"] = 1;

	-- StarterGui.roskeet.UI.Top.Container.Frame
	window.top["6"] = Instance.new("Frame", window.top["5"]);
	window.top["6"]["BorderSizePixel"] = 0;
	window.top["6"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	window.top["6"]["AutomaticSize"] = Enum.AutomaticSize.X;
	window.top["6"]["Size"] = UDim2.new(0, 0, 1, -8);
	window.top["6"]["Position"] = UDim2.new(0, 0, 0, 4);
	window.top["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window.top["6"]["BackgroundTransparency"] = 1;

	window.top["9"] = Instance.new("UIPadding", window.top["6"]);
	window.top["9"]["PaddingRight"] = UDim.new(0, 4);
	window.top["9"]["PaddingLeft"] = UDim.new(0, 4);

	-- StarterGui.roskeet.UI.Top.Container.Frame.UICorner
	window.top["10"] = Instance.new("UICorner", window.top["6"]);
	window.top["10"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.roskeet.UI.Top.Container.Frame.UIStroke
	window.top["1a"] = Instance.new("UIStroke", window.top["6"]);
	window.top["1a"]["Color"] = Color3.fromRGB(62, 62, 62);

	-- StarterGui.roskeet.UI.Top.UIStroke
	window.top["7"] = Instance.new("UIStroke", window.top["1"]);
	window.top["7"]["Color"] = Color3.fromRGB(61, 61, 61);

	-- StarterGui.roskeet.UI.Top.UICorner
	window.top["8"] = Instance.new("UICorner", window.top["1"]);
	window.top["8"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.roskeet.UI.Center
	window.center["1"] = Instance.new("Frame", window["2"]);
	window.center["1"]["BorderSizePixel"] = 0;
	window.center["1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	window.center["1"]["Size"] = UDim2.new(0, 584, 0, 311);
	window.center["1"]["Position"] = UDim2.new(0.013, 0, 0.109, 8);
	window.center["1"]["BorderColor3"] = Color3.fromRGB(21, 21, 21);
	window.center["1"]["Name"] = [[Center]];
	window.center["1"]["BackgroundTransparency"] = 1;

	-- StarterGui.roskeet.UI.Center.TabSections
	window.center["2"] = Instance.new("Frame", window.center["1"]);
	window.center["2"]["BorderSizePixel"] = 0;
	window.center["2"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	window.center["2"]["Size"] = UDim2.new(0, 96, 1, 0);
	window.center["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window.center["2"]["Name"] = [[TabSections]];
	window.center["2"]["BackgroundTransparency"] = 0.1;

	-- StarterGui.roskeet.UI.Center.TabSections.UICorner
	window.center["3"] = Instance.new("UICorner", window.center["2"]);
	window.center["3"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.roskeet.UI.Center.TabSections.UIStroke
	window.center["4"] = Instance.new("UIStroke", window.center["2"]);
	window.center["4"]["Color"] = Color3.fromRGB(61, 61, 61);

	-- StarterGui.roskeet.UI.Center.TabFrames
	window.center["5"] = Instance.new("Frame", window.center["1"]);
	window.center["5"]["BorderSizePixel"] = 0;
	window.center["5"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	window.center["5"]["Size"] = UDim2.new(0, 480, 0, 311);
	window.center["5"]["Position"] = UDim2.new(0, 104, 0, 0);
	window.center["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	window.center["5"]["Name"] = [[TabFrames]];
	window.center["5"]["BackgroundTransparency"] = 0.1;

	-- StarterGui.roskeet.UI.Center.TabFrames.UIStroke
	window.center["6"] = Instance.new("UIStroke", window.center["5"]);
	window.center["6"]["Color"] = Color3.fromRGB(61, 61, 61);

	-- StarterGui.roskeet.UI.Center.TabFrames.UICorner
	window.center["7"] = Instance.new("UICorner", window.center["5"]);
	window.center["7"]["CornerRadius"] = UDim.new(0, 4);

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		window["2"].Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	window["2"].InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = window["2"].Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	window["2"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	-- tween helpers
	local function tweenProperty(target, property, to, info)
		local tweenInfo = info or tween.info
		local t = TweenService:Create(target, tweenInfo, {[property] = to})
		t:Play()
		return t
	end

	local function tweenTransparencyDeep(root, to, info)
		for _, descendant in ipairs(root:GetDescendants()) do
			if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
				if descendant.TextTransparency ~= nil then
					TweenService:Create(descendant, info or tween.info, {TextTransparency = to}):Play()
				end
			elseif descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
				if descendant.ImageTransparency ~= nil then
					TweenService:Create(descendant, info or tween.info, {ImageTransparency = to}):Play()
				end
			end
		end
	end

	-- input helpers
	local function getMouseGuiPosition()
		local pos = UserInputService:GetMouseLocation()
		local inset = GuiService:GetGuiInset()
		return Vector2.new(pos.X - inset.X, pos.Y - inset.Y)
	end

	-- manage popover activity (ensure only one open at a time)
	local activePopovers = {}
	local function closeAllPopoversExcept(skip)
		for element, closer in pairs(activePopovers) do
			if element ~= skip and type(closer) == "function" then
				closer()
			end
		end
	end

	local function markPopoverActive(element, closer)
		activePopovers[element] = closer
	end

	local function markPopoverInactive(element)
		activePopovers[element] = nil
	end

	-- ensure tab button container has a layout
	do
		local hasLayout = false
		for _, child in ipairs(window.top["6"]:GetChildren()) do
			if child:IsA("UIListLayout") then
				hasLayout = true
				break
			end
		end
		if not hasLayout then
			local uiList = Instance.new("UIListLayout", window.top["6"])
			uiList.Padding = UDim.new(0, 4)
			uiList.VerticalAlignment = Enum.VerticalAlignment.Center
			uiList.SortOrder = Enum.SortOrder.LayoutOrder
			uiList.FillDirection = Enum.FillDirection.Horizontal
		end
	end

	function window:ChangeVisibility()
		window["2"].Visible = not window["2"].Visible 
	end

	function window:newTab(name)
		assert(type(name) == "string" and #name > 0, "[roskeet] newTab: name must be a non-empty string")

		local tab = {sections = {}, _isActive = false}
		window[name] = tab

		local button = Instance.new("TextButton", window.top["6"])
		button.BorderSizePixel = 0
		button.TextSize = 12
		button.TextColor3 = Color3.fromRGB(144, 144, 144)
		button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
		button.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
		button.AutomaticSize = Enum.AutomaticSize.X
		button.Size = UDim2.new(0, 0, 0, 20)
		button.Text = name
		button.AutoButtonColor = false
		do
			local pad = Instance.new("UIPadding", button)
			pad.PaddingRight = UDim.new(0, 4)
			pad.PaddingLeft = UDim.new(0, 4)
			local corner = Instance.new("UICorner", button)
			corner.CornerRadius = UDim.new(0, 4)
		end

		local sectionList = Instance.new("ScrollingFrame", window.center["2"]) 
		sectionList.Active = true
		sectionList.ScrollingDirection = Enum.ScrollingDirection.Y
		sectionList.BorderSizePixel = 0
		sectionList.CanvasSize = UDim2.new(0, 0, 0, 0)
		sectionList.BackgroundTransparency = 1
		sectionList.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sectionList.Size = UDim2.new(1, 0, 1, 0)
		sectionList.ScrollBarThickness = 0
		sectionList.Visible = false
		do
			local pad = Instance.new("UIPadding", sectionList)
			pad.PaddingTop = UDim.new(0, 4)
			pad.PaddingBottom = UDim.new(0, 4)
			local list = Instance.new("UIListLayout", sectionList)
			list.HorizontalAlignment = Enum.HorizontalAlignment.Center
			list.Padding = UDim.new(0, 8)
			list.SortOrder = Enum.SortOrder.LayoutOrder
		end

		local tabContent = Instance.new("Frame", window.center["5"]) 
		tabContent.BackgroundTransparency = 1
		tabContent.BorderSizePixel = 0
		tabContent.Size = UDim2.new(1, 0, 1, 0)
		tabContent.Visible = false

		tab._ui = {button = button, sectionList = sectionList, content = tabContent}

		local function activate()
			if window.CurrentTab == tab then return end
			if window.CurrentTab and window.CurrentTab._ui then
				local old = window.CurrentTab
				tweenProperty(old._ui.button, "BackgroundColor3", Color3.fromRGB(23, 23, 23))
				if old._activeSection then
					tweenProperty(old._activeSection._ui.button, "BackgroundColor3", Color3.fromRGB(24, 24, 24), tween.infoFast)
				end
				if old._ui.sectionList.Visible then
					tweenTransparencyDeep(old._ui.sectionList, 1, tween.infoFast)
				end
				if old._ui.content.Visible then
					tweenTransparencyDeep(old._ui.content, 1, tween.infoFast)
				end
				old._ui.sectionList.Visible = false
				old._ui.content.Visible = false
				old._isActive = false
			end

			window.CurrentTab = tab
			tab._isActive = true
			tab._ui.sectionList.Visible = true
			tab._ui.content.Visible = true
			tweenProperty(tab._ui.button, "BackgroundColor3", Color3.fromRGB(40, 40, 40))
			if not tab._activeSection and tab._firstSection then
				tab._activeSection = tab._firstSection
				tweenProperty(tab._activeSection._ui.button, "BackgroundColor3", Color3.fromRGB(34, 34, 34), tween.infoFast)
			end
			if tab._activeSection then
				tab._activeSection:Show()
				tweenProperty(tab._activeSection._ui.button, "BackgroundColor3", Color3.fromRGB(34, 34, 34), tween.infoFast)
			end
			tweenTransparencyDeep(tab._ui.sectionList, 0, tween.info)
			tweenTransparencyDeep(tab._ui.content, 0, tween.info)
		end

		button.MouseButton1Click:Connect(activate)

		if window.CurrentTab == nil then
			activate()
		end

		function tab:newSection(sectionName)
			assert(type(sectionName) == "string" and #sectionName > 0, "[roskeet] newSection: name must be a non-empty string")
			local section = {controls = {}}
			tab[sectionName] = section

			local sBtn = Instance.new("TextButton", sectionList)
			sBtn.BorderSizePixel = 0
			sBtn.TextXAlignment = Enum.TextXAlignment.Left
			sBtn.TextSize = 12
			sBtn.AutoButtonColor = false
			sBtn.TextColor3 = Color3.fromRGB(144, 144, 144)
			sBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			sBtn.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			sBtn.BackgroundTransparency = 0.1
			sBtn.Size = UDim2.new(1, -8, 0, 20)
			sBtn.Text = sectionName
			do
				local pad = Instance.new("UIPadding", sBtn)
				pad.PaddingLeft = UDim.new(0, 4)
				local corner = Instance.new("UICorner", sBtn)
				corner.CornerRadius = UDim.new(0, 4)
				local stroke = Instance.new("UIStroke", sBtn)
				stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				stroke.Color = Color3.fromRGB(61, 61, 61)
			end

			local sFrame = Instance.new("ScrollingFrame", tabContent)
			sFrame.Active = true
			sFrame.ScrollingDirection = Enum.ScrollingDirection.Y
			sFrame.BorderSizePixel = 0
			sFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
			sFrame.BackgroundTransparency = 1
			sFrame.ClipsDescendants = false
			sFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
			sFrame.Size = UDim2.new(1, -8, 0, 0)
			sFrame.AutomaticSize = Enum.AutomaticSize.Y
			sFrame.ScrollBarThickness = 4
			sFrame.ScrollBarImageColor3 = Color3.fromRGB(61, 61, 61)
			sFrame.Visible = false
			do
				local pad = Instance.new("UIPadding", sFrame)
				pad.PaddingTop = UDim.new(0, 8)
				pad.PaddingRight = UDim.new(0, 8)
				pad.PaddingLeft = UDim.new(0, 8)
				pad.PaddingBottom = UDim.new(0, 8)
				local list = Instance.new("UIListLayout", sFrame)
				list.Padding = UDim.new(0, 8)
				list.SortOrder = Enum.SortOrder.LayoutOrder
			end

			local row = Instance.new("Frame", sFrame)
			row.BackgroundTransparency = 1
			row.ClipsDescendants = false
			row.BorderSizePixel = 0
			row.Size = UDim2.new(1, 0, 0, 0)
			row.AutomaticSize = Enum.AutomaticSize.Y
			do
				local hlist = Instance.new("UIListLayout", row)
				hlist.Padding = UDim.new(0, 8)
				hlist.SortOrder = Enum.SortOrder.LayoutOrder
				hlist.FillDirection = Enum.FillDirection.Horizontal
			end

			local left = Instance.new("Frame", row)
			left.Name = "left"
			left.BorderSizePixel = 0
			left.BackgroundTransparency = 1
			left.AutomaticSize = Enum.AutomaticSize.Y
			left.Size = UDim2.new(0, 230, 0, 0)
			do
				local leftList = Instance.new("UIListLayout", left)
				leftList.SortOrder = Enum.SortOrder.LayoutOrder
				leftList.Padding = UDim.new(0, 8)
			end

			local right = Instance.new("Frame", row)
			right.Name = "right"
			right.BorderSizePixel = 0
			right.BackgroundTransparency = 1
			right.AutomaticSize = Enum.AutomaticSize.Y
			right.Size = UDim2.new(0, 230, 0, 0)
			do
				local rightList = Instance.new("UIListLayout", right)
				rightList.SortOrder = Enum.SortOrder.LayoutOrder
				rightList.Padding = UDim.new(0, 8)
			end

			sBtn.MouseButton1Click:Connect(function()
				if tab._activeSection and tab._activeSection ~= section then
					tweenProperty(tab._activeSection._ui.button, "BackgroundColor3", Color3.fromRGB(24, 24, 24), tween.infoFast)
					tab._activeSection:Hide()
				end
				tab._activeSection = section
				section:Show()
				tweenProperty(sBtn, "BackgroundColor3", Color3.fromRGB(34, 34, 34), tween.infoFast)
			end)

			section.left = left
			section.right = right
			section._ui = {button = sBtn, container = sFrame, row = row, left = left, right = right}
			
			function section:Show()
				self._ui.container.Visible = true
			end

			function section:Hide()
				self._ui.container.Visible = false
			end

			if not tab._firstSection then
				tab._firstSection = section
			end

			if tab._isActive and not tab._activeSection then
				tab._activeSection = section
				section:Show()
				tweenProperty(sBtn, "BackgroundColor3", Color3.fromRGB(34, 34, 34), tween.infoFast)
			end

			function section:newSubsection(title, side)
				assert(type(title) == "string" and #title > 0, "[roskeet] newSubsection: title must be a non-empty string")
				side = side == "right" and "right" or "left"
				local host = side == "right" and right or left

				local subFrame = Instance.new("Frame", host)
				subFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
				subFrame.BackgroundTransparency = 0.1
				subFrame.AutomaticSize = Enum.AutomaticSize.Y
				subFrame.Size = UDim2.new(1, 0, 0, 0)
				subFrame.ClipsDescendants = false
				Instance.new("UIStroke", subFrame).Color = Color3.fromRGB(61, 61, 61)
				local subCorner = Instance.new("UICorner", subFrame)
				subCorner.CornerRadius = UDim.new(0, 4)

				local titleLabel = Instance.new("TextLabel", subFrame)
				titleLabel.BorderSizePixel = 0
				titleLabel.TextSize = 12
				titleLabel.TextXAlignment = Enum.TextXAlignment.Left
				titleLabel.BackgroundTransparency = 1
				titleLabel.Size = UDim2.new(0, 238, 0, 16)
				titleLabel.TextColor3 = Color3.fromRGB(103, 103, 103)
				titleLabel.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				titleLabel.Text = title
				titleLabel.Name = title
				local titlePad = Instance.new("UIPadding", titleLabel)
				titlePad.PaddingRight = UDim.new(0, 4)
				titlePad.PaddingLeft = UDim.new(0, 4)

				local content = Instance.new("Frame", subFrame)
				content.BackgroundTransparency = 1
				content.AutomaticSize = Enum.AutomaticSize.Y
				content.Size = UDim2.new(1, 0, 0, 0)
				content.Position = UDim2.new(0, 0, 0, 16)
				content.ClipsDescendants = false
				local cpad = Instance.new("UIPadding", content)
				cpad.PaddingRight = UDim.new(0, 4)
				cpad.PaddingLeft = UDim.new(0, 4)
				cpad.PaddingBottom = UDim.new(0, 4)
				local clist = Instance.new("UIListLayout", content)
				clist.HorizontalAlignment = Enum.HorizontalAlignment.Center
				clist.Padding = UDim.new(0, 2)
				clist.SortOrder = Enum.SortOrder.LayoutOrder

				local subsection = { _ui = {frame = subFrame, title = titleLabel, content = content}, _isVisible = true }

				function subsection:Show()
					self._isVisible = true
					self._ui.frame.Visible = true
				end

				function subsection:Hide()
					self._isVisible = false
					self._ui.frame.Visible = false
				end

				local function attachCommonElementAPI(element)
					function element:GetValue()
						return element._value
					end
					function element:SetValue(v)
						element._value = v
						if element._fireChanged then element:_fireChanged() end
					end
					element._callback = nil
					function element:SetCallback(cb)
						if type(cb) == "function" then element._callback = cb else element._callback = nil end
						return element
					end
					function element:_fireChanged()
						if type(self._callback) == "function" then
							local ok, err = pcall(self._callback, self._value)
							if not ok then warn("[roskeet] element callback error:", err) end
						end
					end
					function element:Show()
						element._ui.root.Visible = true
					end
					function element:Hide()
						element._ui.root.Visible = false
					end
					return element
				end

				function subsection:newSelectbox(labelText, items, defaultValue, onChange)
					labelText = labelText or "Selectbox"
					items = items or {}
					local root = Instance.new("TextLabel", content)
					root.BorderSizePixel = 0
					root.TextSize = 12
					root.TextXAlignment = Enum.TextXAlignment.Left
					root.TextYAlignment = Enum.TextYAlignment.Top
					root.BackgroundTransparency = 1
					root.Size = UDim2.new(1, -8, 0, 30)
					root.TextColor3 = Color3.fromRGB(144, 144, 144)
					root.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					root.Text = labelText
					root.ZIndex = 2
					local button = Instance.new("TextButton", root)
					button.BorderSizePixel = 0
					button.TextXAlignment = Enum.TextXAlignment.Left
					button.TextSize = 10
					button.TextScaled = false
					button.AutoButtonColor = false
					button.TextColor3 = Color3.fromRGB(141, 141, 141)
					button.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
					button.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					button.ZIndex = 2
					button.Size = UDim2.new(1, 0, 0, 12)
					button.Position = UDim2.new(0, 0, 0, 16)
					local btnCorner = Instance.new("UICorner", button)
					btnCorner.CornerRadius = UDim.new(0, 4)
					local btnPad = Instance.new("UIPadding", button)
					btnPad.PaddingRight = UDim.new(0, 4)
					btnPad.PaddingLeft = UDim.new(0, 4)
					local stroke = Instance.new("UIStroke", button)
					stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					stroke.Color = Color3.fromRGB(61, 61, 61)
					local dropdown = Instance.new("Frame", button)
					dropdown.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					dropdown.Visible = false
					dropdown.AutomaticSize = Enum.AutomaticSize.Y
					dropdown.Size = UDim2.new(1.03738, 0, 0, 37)
					dropdown.Position = UDim2.new(0, -4, 0, 16)
					local dCorner = Instance.new("UICorner", dropdown)
					dCorner.CornerRadius = UDim.new(0, 4)
					local dStroke = Instance.new("UIStroke", dropdown)
					dStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					dStroke.Color = Color3.fromRGB(61, 61, 61)
					local dPad = Instance.new("UIPadding", dropdown)
					dPad.PaddingRight = UDim.new(0, 4)
					dPad.PaddingLeft = UDim.new(0, 4)
					local dList = Instance.new("UIListLayout", dropdown)
					dList.SortOrder = Enum.SortOrder.LayoutOrder

					local isMulti = type(defaultValue) == "table"
					local selectedSet = {}
					if isMulti then for _, v in ipairs(defaultValue) do selectedSet[tostring(v)] = true end end
					local element = attachCommonElementAPI({_ui = {root = root, button = button, dropdown = dropdown}, _value = isMulti and selectedSet or defaultValue, _active = false, type = "selectbox"})
					if type(onChange) == "function" then element:SetCallback(onChange) end

					local function setActive(active)
						element._active = active
						element._ui.dropdown.Visible = active
						root.ZIndex = active and 3 or 2
						button.ZIndex = active and 3 or 2
						dropdown.ZIndex = active and 3 or 2

						if active then
							closeAllPopoversExcept(element)
							markPopoverActive(element, function()
								setActive(false)
							end)
						else
							markPopoverInactive(element)
						end
					end

					button.MouseButton1Click:Connect(function()
						setActive(not element._active)
					end)

					UserInputService.InputBegan:Connect(function(input, gp)
						if gp then return end
						if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2) and element._active then
							local mousePos = UserInputService:GetMouseLocation()
							local function contains(gui)
								if not gui then return false end
								local pos = gui.AbsolutePosition
								local size = gui.AbsoluteSize
								return mousePos.X >= pos.X and mousePos.X <= pos.X + size.X and mousePos.Y >= pos.Y and mousePos.Y <= pos.Y + size.Y
							end
							local inside = contains(button) or contains(dropdown)
							if not inside then setActive(false) end
						end
					end)

					local optionButtons = {}
					local function getMultiValues()
						local out = {}
						for k, v in pairs(selectedSet) do if v then table.insert(out, k) end end
						table.sort(out)
						return out
					end

					local function updateButtonText()
						if isMulti then
							local vals = getMultiValues()
							button.Text = (#vals > 0) and table.concat(vals, ", ") or "None"
						else
							button.Text = element._value and tostring(element._value) or ""
						end
					end

					for _, it in ipairs(items) do
						local opt = Instance.new("TextButton", dropdown)
						opt.BorderSizePixel = 0
						opt.TextXAlignment = Enum.TextXAlignment.Left
						opt.TextSize = 12
						opt.TextScaled = false
						opt.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
						opt.TextColor3 = Color3.fromRGB(141, 141, 141)
						opt.BackgroundTransparency = 1
						opt.AutoButtonColor = false
						opt.Size = UDim2.new(1, 0, 0, 16)
						opt.Text = tostring(it)
						optionButtons[tostring(it)] = opt
						opt.MouseButton1Click:Connect(function()
							if isMulti then
								local key = tostring(it)
								selectedSet[key] = not selectedSet[key]
								opt.BackgroundTransparency = selectedSet[key] and 0 or 1
								element._value = selectedSet
								updateButtonText()
								element:_fireChanged()
							else
								element:SetValue(it)
								button.Text = tostring(it)
								setActive(false)
								element:_fireChanged()
							end
						end)
						opt.MouseEnter:Connect(function()
							opt.BackgroundTransparency = 0
							opt.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
						end)
						opt.MouseLeave:Connect(function()
							opt.BackgroundTransparency = selectedSet[tostring(it)] and 0 or 1
						end)
					end

					if defaultValue ~= nil then
						if isMulti then
							for key, ob in pairs(optionButtons) do
								local sel = selectedSet[key] == true
								ob.BackgroundTransparency = sel and 0 or 1
							end
							updateButtonText()
						else
							button.Text = tostring(defaultValue)
						end
					end

					function element:GetValue()
						if isMulti then return getMultiValues() end
						return element._value
					end

					function element:SetValue(v)
						if isMulti then
							selectedSet = {}
							if type(v) == "table" then
								for _, x in ipairs(v) do selectedSet[tostring(x)] = true end
							end
							element._value = selectedSet
							for key, ob in pairs(optionButtons) do
								local sel = selectedSet[key] == true
								ob.BackgroundTransparency = sel and 0 or 1
							end
							updateButtonText()
							self:_fireChanged()
							return
						end
						self._value = v
						button.Text = tostring(v)
						self:_fireChanged()
					end

					return element
				end

				function subsection:newColorpicker(labelText, defaultColor, onChange)
					labelText = labelText or "Colorpicker"
					defaultColor = defaultColor or Color3.fromRGB(158, 48, 48)

					local root = Instance.new("TextLabel", content)
					root.BorderSizePixel = 0
					root.TextSize = 12
					root.TextXAlignment = Enum.TextXAlignment.Left
					root.BackgroundTransparency = 1
					root.Size = UDim2.new(1, -8, 0, 16)
					root.TextColor3 = Color3.fromRGB(144, 144, 144)
					root.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					root.Text = labelText
					root.Name = labelText
					root.ZIndex = 2

					local button = Instance.new("TextButton", root)
					button.BorderSizePixel = 0
					button.TextSize = 14
					button.AutoButtonColor = false
					button.TextColor3 = Color3.fromRGB(0, 0, 0)
					button.BackgroundColor3 = defaultColor
					button.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					button.ZIndex = 2
					button.Size = UDim2.new(0, 24, 0, 12)
					button.Position = UDim2.new(1, -24, 0, 2)

					local cStroke = Instance.new("UIStroke", button)
					cStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					cStroke.Color = Color3.fromRGB(61, 61, 61)

					local cCorner = Instance.new("UICorner", button)
					cCorner.CornerRadius = UDim.new(0, 4)

					local pop = Instance.new("Frame", button)
					pop.Visible = false
					pop.ZIndex = 2
					pop.BorderSizePixel = 0
					pop.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					pop.Size = UDim2.new(0, 178, 0, 173)
					pop.Position = UDim2.new(1, -178, 0, 16)
					pop.Name = "Colorpicker"

					local pStroke = Instance.new("UIStroke", pop)
					pStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					pStroke.Color = Color3.fromRGB(61, 61, 61)

					local pCorner = Instance.new("UICorner", pop)
					pCorner.CornerRadius = UDim.new(0, 4)

					local trans = Instance.new("TextButton", pop)
					trans.TextSize = 14
					trans.AutoButtonColor = false
					trans.TextColor3 = Color3.fromRGB(0, 0, 0)
					trans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					trans.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					trans.Size = UDim2.new(0, 150, 0, 10)
					trans.BorderColor3 = Color3.fromRGB(14, 14, 14)
					trans.Text = ""
					trans.Name = "Transparency"
					trans.Position = UDim2.new(0, 5, 1, -15)

					local transCursor = Instance.new("Frame", trans)
					transCursor.BorderSizePixel = 0
					transCursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					transCursor.Size = UDim2.new(0, 2, 1, -2)
					transCursor.Position = UDim2.new(0, 0, 0, 1)
					transCursor.Name = "Cursor"
					transCursor.BackgroundTransparency = 0.5
					Instance.new("UICorner", transCursor)

					local transStroke = Instance.new("UIStroke", transCursor)
					transStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					transStroke.LineJoinMode = Enum.LineJoinMode.Miter
					transStroke.Color = Color3.fromRGB(14, 14, 14)

					local sat = Instance.new("TextButton", pop)
					sat.BorderSizePixel = 0
					sat.TextSize = 14
					sat.AutoButtonColor = false
					sat.TextColor3 = Color3.fromRGB(0, 0, 0)
					sat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					sat.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					sat.BackgroundTransparency = 1
					sat.Size = UDim2.new(0, 150, 0, 150)
					sat.BorderColor3 = Color3.fromRGB(0, 0, 0)
					sat.Text = ""
					sat.Name = "Saturation"
					sat.Position = UDim2.new(0, 5, 0, 5)

					local satCanvas = Instance.new("CanvasGroup", sat)
					satCanvas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					satCanvas.Size = UDim2.new(1, 0, 1, 0)
					satCanvas.BorderColor3 = Color3.fromRGB(14, 14, 14)

					local satGrad = Instance.new("UIGradient", satCanvas)
					satGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255,0,0))}

					local satOverlay = Instance.new("Frame", satCanvas)
					satOverlay.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
					satOverlay.Size = UDim2.new(1, 0, 1, 0)

					local satOverlayGrad = Instance.new("UIGradient", satOverlay)
					satOverlayGrad.Rotation = -90
					satOverlayGrad.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0), NumberSequenceKeypoint.new(1,1)}
					satOverlayGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0,0,0)), ColorSequenceKeypoint.new(1, Color3.new(0,0,0))}

					local satCursor = Instance.new("Frame", sat)
					satCursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					satCursor.Size = UDim2.new(0, 2, 0, 2)
					satCursor.Position = UDim2.new(0, 100, 0, 55)
					satCursor.Name = "Cursor"
					satCursor.BackgroundTransparency = 0.5
					Instance.new("UICorner", satCursor)

					local satCursorStroke = Instance.new("UIStroke", satCursor)
					satCursorStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					satCursorStroke.Color = Color3.fromRGB(28, 28, 28)

					local hue = Instance.new("TextButton", pop)
					hue.BorderSizePixel = 0
					hue.TextSize = 14
					hue.AutoButtonColor = false
					hue.TextColor3 = Color3.fromRGB(0, 0, 0)
					hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					hue.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					hue.Size = UDim2.new(0, 15, 0, 150)
					hue.BorderColor3 = Color3.fromRGB(0, 0, 0)
					hue.Text = ""
					hue.Name = "Hue"
					hue.Position = UDim2.new(1, -20, 0, 5)

					local hueGrad = Instance.new("UIGradient", hue)
					hueGrad.Rotation = -90
					hueGrad.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.070, Color3.fromRGB(255, 108, 0)),
						ColorSequenceKeypoint.new(0.140, Color3.fromRGB(255, 215, 0)),
						ColorSequenceKeypoint.new(0.210, Color3.fromRGB(189, 255, 0)),
						ColorSequenceKeypoint.new(0.280, Color3.fromRGB(82, 255, 0)),
						ColorSequenceKeypoint.new(0.350, Color3.fromRGB(0, 255, 26)),
						ColorSequenceKeypoint.new(0.420, Color3.fromRGB(0, 255, 133)),
						ColorSequenceKeypoint.new(0.490, Color3.fromRGB(0, 255, 240)),
						ColorSequenceKeypoint.new(0.560, Color3.fromRGB(0, 164, 255)),
						ColorSequenceKeypoint.new(0.630, Color3.fromRGB(0, 57, 255)),
						ColorSequenceKeypoint.new(0.700, Color3.fromRGB(51, 0, 255)),
						ColorSequenceKeypoint.new(0.770, Color3.fromRGB(159, 0, 255)),
						ColorSequenceKeypoint.new(0.840, Color3.fromRGB(255, 0, 245)),
						ColorSequenceKeypoint.new(0.910, Color3.fromRGB(255, 0, 138)),
						ColorSequenceKeypoint.new(0.980, Color3.fromRGB(255, 0, 31)),
						ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 0))
					}

					local hueCursor = Instance.new("Frame", hue)
					hueCursor.BorderSizePixel = 0
					hueCursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					hueCursor.Size = UDim2.new(1, -2, 0, 2)
					hueCursor.Position = UDim2.new(0, 1, 0, 0)
					hueCursor.Name = "Cursor"
					hueCursor.BackgroundTransparency = 0.5
					local hueCursorStroke = Instance.new("UIStroke", hueCursor)
					hueCursorStroke.Color = Color3.fromRGB(14, 14, 14)

					button.Text = ""
					local element = attachCommonElementAPI({_ui = {root = root, button = button, popover = pop}, _value = defaultColor, _active = false, type = "colorpicker"})
					if type(onChange) == "function" then element:SetCallback(onChange) end

					local currentColor = defaultColor
					local currentTransparency = 0

					local function setActive(active)
						element._active = active
						element._ui.popover.Visible = active
						root.ZIndex = active and 3 or 2
						button.ZIndex = active and 3 or 2
						pop.ZIndex = active and 3 or 2

						if active then
							closeAllPopoversExcept(element)
							markPopoverActive(element, function()
								setActive(false)
							end)
						else
							markPopoverInactive(element)
						end
					end

					local function updateColor()
						local h, s, v = currentColor:ToHSV()
						for _, child in ipairs(pop:GetDescendants()) do
							if child:IsA("UIGradient") and child.Parent and child.Parent:IsA("CanvasGroup") then
								child.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1, Color3.fromHSV(h,1,1))}
							end
						end
						button.BackgroundColor3 = currentColor
						local trans = pop:FindFirstChild("Transparency")
						if trans and trans:IsA("TextButton") then
							trans.BackgroundTransparency = currentTransparency
						end
					end

					local function updateHue(input)
						local hueBtn = pop:FindFirstChild("Hue")
						if not hueBtn then return end
						local height = hueBtn.AbsoluteSize.Y
						local posY = hueBtn.AbsolutePosition.Y
						local relY = math.clamp(input.Position.Y - posY, 0, height)
						local ratio = relY / height
						local h, s, v = currentColor:ToHSV()
						h = 1 - ratio
						currentColor = Color3.fromHSV(h, s, v)
						local cursor = hueBtn:FindFirstChild("Cursor")
						if cursor then cursor.Position = UDim2.new(0, 1, 0, relY) end
						updateColor()
						element._value = currentColor
						element:_fireChanged()
					end

					local function updateSaturationValue(input)
						local satBtn = pop:FindFirstChild("Saturation")
						if not satBtn then return end
						local w = satBtn.AbsoluteSize.X
						local h = satBtn.AbsoluteSize.Y
						local px = satBtn.AbsolutePosition.X
						local py = satBtn.AbsolutePosition.Y
						local relX = math.clamp(input.Position.X - px, 0, w)
						local relY = math.clamp(input.Position.Y - py, 0, h)
						local s = relX / w
						local v = 1 - (relY / h)
						local oldH = currentColor:ToHSV()
						currentColor = Color3.fromHSV(oldH, s, v)
						local cursor = satBtn:FindFirstChild("Cursor")
						if cursor then cursor.Position = UDim2.new(0, relX, 0, relY) end
						updateColor()
						element._value = currentColor
						element:_fireChanged()
					end

					local function updateTransparency(input)
						local bar = pop:FindFirstChild("Transparency")
						if not bar then return end
						local w = bar.AbsoluteSize.X
						local px = bar.AbsolutePosition.X
						local relX = math.clamp(input.Position.X - px, 0, w)
						local ratio = relX / w
						currentTransparency = 1 - ratio
						local cursor = bar:FindFirstChild("Cursor")
						if cursor then cursor.Position = UDim2.new(0, relX, 0, 1) end
						local trans = bar
						trans.BackgroundTransparency = currentTransparency
						updateColor()
						element._value = currentColor
						element:_fireChanged()
					end

					button.MouseButton1Click:Connect(function()
						setActive(not element._active)
					end)

					UserInputService.InputBegan:Connect(function(input, gp)
						if gp then return end
						if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2) and element._active then
							local mousePos = UserInputService:GetMouseLocation()
							local function contains(gui)
								if not gui then return false end
								local pos = gui.AbsolutePosition
								local size = gui.AbsoluteSize
								return mousePos.X >= pos.X and mousePos.X <= pos.X + size.X and mousePos.Y >= pos.Y and mousePos.Y <= pos.Y + size.Y
							end
							local inside = contains(button) or contains(pop)
							if not inside then setActive(false) end
						end
					end)

					local function connectDrag(gui, updater)
						gui.InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								updater(input)
								local conn
								conn = UserInputService.InputChanged:Connect(function(ch)
									if ch.UserInputType == Enum.UserInputType.MouseMovement then
										updater(ch)
									end
								end)
								UserInputService.InputEnded:Connect(function(ended)
									if ended.UserInputType == Enum.UserInputType.MouseButton1 and conn then conn:Disconnect() end
								end)
							end
						end)
					end

					local hueBtn = pop:FindFirstChild("Hue"); if hueBtn then connectDrag(hueBtn, updateHue) end
					local satBtn = pop:FindFirstChild("Saturation"); if satBtn then connectDrag(satBtn, updateSaturationValue) end
					local trBar = pop:FindFirstChild("Transparency"); if trBar then connectDrag(trBar, updateTransparency) end

					function element:SetValue(color)
						self._value = color
						currentColor = color
						button.BackgroundColor3 = color
						updateColor()
						self:_fireChanged()
					end

					return element
				end

				function subsection:newBind(labelText, defaultKeyCode, onChange)
					labelText = labelText or "Bind"
					local root = Instance.new("TextLabel", content)
					root.ZIndex = 2
					root.BorderSizePixel = 0
					root.TextSize = 12
					root.TextXAlignment = Enum.TextXAlignment.Left
					root.BackgroundTransparency = 1
					root.Size = UDim2.new(1, -8, 0, 16)
					root.TextColor3 = Color3.fromRGB(144, 144, 144)
					root.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					root.Text = labelText
					root.Name = labelText

					local button = Instance.new("TextButton", root)
					button.BorderSizePixel = 0
					button.TextSize = 10
					button.AutoButtonColor = false
					button.TextColor3 = Color3.fromRGB(99, 99, 99)
					button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					button.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					button.ZIndex = 2
					button.AnchorPoint = Vector2.new(1, 0)
					button.AutomaticSize = Enum.AutomaticSize.X
					button.Size = UDim2.new(0, 24, 0, 12)
					button.Position = UDim2.new(1, 0, 0, 2)
					button.Text = defaultKeyCode and defaultKeyCode.Name or "RightShift"

					local stroke = Instance.new("UIStroke", button)
					stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					stroke.Color = Color3.fromRGB(61, 61, 61)

					local corner = Instance.new("UICorner", button)
					corner.CornerRadius = UDim.new(0, 4)

					local pad = Instance.new("UIPadding", button)
					pad.PaddingRight = UDim.new(0, 4)
					pad.PaddingLeft = UDim.new(0, 4)

					local element = attachCommonElementAPI({_ui = {root = root, button = button, stroke = stroke}, _value = false, _waiting = false, _pulseTweens = {}, type = "bind"})
					if type(onChange) == "function" then element:SetCallback(onChange) end
					element._key = defaultKeyCode or Enum.KeyCode.RightShift
					element._mode = "toggle"
					function element:_fireChanged()
						if type(self._callback) == "function" then
							local ok, err = pcall(self._callback, self._value)
							if not ok then warn("[roskeet] element callback error:", err) end
						end
					end

					local function stopPulse()
						for _, tw in ipairs(element._pulseTweens) do
							pcall(function() tw:Cancel() end)
						end
						element._pulseTweens = {}
						stroke.Color = Color3.fromRGB(61, 61, 61)
					end

					local function startPulse()
						stopPulse()
						local t1 = TweenService:Create(stroke, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(150, 150, 150)})
						local t2 = TweenService:Create(stroke, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(61, 61, 61)})
						t1.Completed:Connect(function()
							if element._waiting then t2:Play() end
						end)
						t2.Completed:Connect(function()
							if element._waiting then t1:Play() end
						end)
						element._pulseTweens = {t1, t2}
						t1:Play()
					end

					local inputConn
					local keyListenerBegan
					local keyListenerEnded

					local modeFrame = Instance.new("Frame", root)
					modeFrame.AnchorPoint = Vector2.new(1, 0)
					modeFrame.BorderSizePixel = 0
					modeFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					modeFrame.Size = UDim2.new(0, 64, 0, 48)
					modeFrame.Position = UDim2.new(1, 0, 1, 2)
					modeFrame.Visible = false
					local modeCorner = Instance.new("UICorner", modeFrame)
					modeCorner.CornerRadius = UDim.new(0, 4)
					local modeStroke = Instance.new("UIStroke", modeFrame)
					modeStroke.Color = Color3.fromRGB(61, 61, 61)
					local modeList = Instance.new("UIListLayout", modeFrame)
					modeList.SortOrder = Enum.SortOrder.LayoutOrder
					local btnHold = Instance.new("TextButton", modeFrame)
					btnHold.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					btnHold.BorderSizePixel = 0
					btnHold.TextSize = 12
					btnHold.TextColor3 = Color3.fromRGB(142, 142, 142)
					btnHold.TextTransparency = 0.25
					btnHold.BackgroundTransparency = 1
					btnHold.Size = UDim2.new(0, 64, 0, 16)
					btnHold.Text = "Hold"
					btnHold.Name = "Hold"
					local btnToggle = Instance.new("TextButton", modeFrame)
					btnToggle.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					btnToggle.BorderSizePixel = 0
					btnToggle.TextSize = 12
					btnToggle.TextColor3 = Color3.fromRGB(142, 142, 142)
					btnToggle.TextTransparency = 0.25
					btnToggle.BackgroundTransparency = 1
					btnToggle.Size = UDim2.new(0, 64, 0, 16)
					btnToggle.Text = "Toggle"
					btnToggle.Name = "Toggle"
					local btnAlways = Instance.new("TextButton", modeFrame)
					btnAlways.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					btnAlways.BorderSizePixel = 0
					btnAlways.TextSize = 12
					btnAlways.TextColor3 = Color3.fromRGB(142, 142, 142)
					btnAlways.TextTransparency = 0.25
					btnAlways.BackgroundTransparency = 1
					btnAlways.Size = UDim2.new(0, 64, 0, 16)
					btnAlways.Text = "Always on"
					btnAlways.Name = "AlwaysOn"

					local function highlight()
						local active = Color3.fromRGB(205, 228, 54)
						local muted = Color3.fromRGB(142, 142, 142)
						btnHold.TextColor3 = (element._mode == "hold") and active or muted
						btnToggle.TextColor3 = (element._mode == "toggle") and active or muted
						btnAlways.TextColor3 = (element._mode == "always") and active or muted
					end

					local function disconnectKeyListeners()
						if keyListenerBegan then keyListenerBegan:Disconnect() end
						if keyListenerEnded then keyListenerEnded:Disconnect() end
						keyListenerBegan, keyListenerEnded = nil, nil
					end

					local function attachKeyListeners()
						disconnectKeyListeners()
						if element._mode == "always" then return end
						keyListenerBegan = UserInputService.InputBegan:Connect(function(press, gp)
							if gp then return end
							if press.UserInputType == Enum.UserInputType.Keyboard and press.KeyCode == element._key then
								if element._mode == "hold" then
									element._value = true
									element:_fireChanged()
								elseif element._mode == "toggle" then
									element._value = not element._value
									element:_fireChanged()
								end
							end
						end)
						keyListenerEnded = UserInputService.InputEnded:Connect(function(press, gp)
							if gp then return end
							if press.UserInputType == Enum.UserInputType.Keyboard and press.KeyCode == element._key then
								if element._mode == "hold" then
									element._value = false
									element:_fireChanged()
								end
							end
						end)
					end

					local function applyMode(newMode)
						element._mode = newMode
						highlight()
						if newMode == "always" then
							element._value = true
							element:_fireChanged()
						else
							element._value = false
							element:_fireChanged()
						end
						attachKeyListeners()
					end

					btnHold.MouseButton1Click:Connect(function() applyMode("hold") end)
					btnToggle.MouseButton1Click:Connect(function() applyMode("toggle") end)
					btnAlways.MouseButton1Click:Connect(function() applyMode("always") end)

					button.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton2 then
							if not modeFrame.Visible then
								btnHold.TextTransparency = 1
								btnToggle.TextTransparency = 1
								btnAlways.TextTransparency = 1
								modeFrame.Visible = true
								TweenService:Create(btnHold, tween.info, {TextTransparency = 0}):Play()
								TweenService:Create(btnToggle, tween.info, {TextTransparency = 0}):Play()
								TweenService:Create(btnAlways, tween.info, {TextTransparency = 0}):Play()
							else
								local t1 = TweenService:Create(btnHold, tween.info, {TextTransparency = 1})
								local t2 = TweenService:Create(btnToggle, tween.info, {TextTransparency = 1})
								local t3 = TweenService:Create(btnAlways, tween.info, {TextTransparency = 1})
								t3.Completed:Connect(function()
									modeFrame.Visible = false
									btnHold.TextTransparency = 0.25
									btnToggle.TextTransparency = 0.25
									btnAlways.TextTransparency = 0.25
								end)
								t1:Play(); t2:Play(); t3:Play()
							end
						end
					end)

					local function hoverWire(btn)
						btn.MouseEnter:Connect(function()
							TweenService:Create(btn, tween.infoFast, {TextTransparency = 0}):Play()
						end)
						btn.MouseLeave:Connect(function()
							TweenService:Create(btn, tween.infoFast, {TextTransparency = 0.25}):Play()
						end)
					end
					hoverWire(btnHold)
					hoverWire(btnToggle)
					hoverWire(btnAlways)

					button.Text = element._key and element._key.Name or ""
					applyMode(element._mode)
					button.MouseButton1Click:Connect(function()
						if element._waiting then return end
						element._waiting = true
						button.Text = "..."
						startPulse()
						if inputConn then inputConn:Disconnect() end
						inputConn = UserInputService.InputBegan:Connect(function(input, gp)
							if gp then return end
							if input.UserInputType == Enum.UserInputType.Keyboard then
								element._key = input.KeyCode
								button.Text = input.KeyCode.Name
								element._waiting = false
								stopPulse()
								if inputConn then inputConn:Disconnect() end
								attachKeyListeners()
							end
						end)
					end)

					function element:SetValue(v)
						if typeof(v) == "EnumItem" and v.EnumType == Enum.KeyCode then
							self._key = v
							button.Text = v.Name
							attachKeyListeners()
							return
						end
						self._value = v and true or false
						self:_fireChanged()
					end

					return element
				end

				function subsection:newToggle(labelText, defaultEnabled, onChange)
					labelText = labelText or "Toggle"
					local root = Instance.new("TextLabel", content)
					root.ZIndex = 2
					root.BorderSizePixel = 0
					root.TextSize = 12
					root.TextXAlignment = Enum.TextXAlignment.Left
					root.BackgroundTransparency = 1
					root.Size = UDim2.new(1, -8, 0, 16)
					root.TextColor3 = Color3.fromRGB(144, 144, 144)
					root.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					root.Text = labelText
					root.Name = labelText

					local button = Instance.new("TextButton", root)
					button.BorderSizePixel = 0
					button.TextSize = 14
					button.AutoButtonColor = false
					button.TextColor3 = Color3.fromRGB(0, 0, 0)
					button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					button.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					button.ZIndex = 2
					button.Size = UDim2.new(0, 24, 0, 12)
					button.Position = UDim2.new(1, -24, 0, 2)
					button.Text = ""

					local bStroke = Instance.new("UIStroke", button)
					bStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					bStroke.Color = Color3.fromRGB(61, 61, 61)

					local inner = Instance.new("Frame", button)
					inner.BorderSizePixel = 0
					inner.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
					inner.Size = UDim2.new(0, 8, 0, 8)
					inner.Position = UDim2.new(0, 2, 0, 2)
					inner.Name = "Knob"

					local ic = Instance.new("UICorner", inner)
					ic.CornerRadius = UDim.new(0, 4)

					local bc = Instance.new("UICorner", button)
					bc.CornerRadius = UDim.new(0, 4)

					local element = attachCommonElementAPI({_ui = {root = root, button = button, knob = inner}, _value = defaultEnabled and true or false, type = "toggle"})
					if type(onChange) == "function" then element:SetCallback(onChange) end

					local function applyState(animated)
						local enabled = element._value == true
						local targetPos = enabled and UDim2.new(0, 14, 0, 2) or UDim2.new(0, 2, 0, 2)
						local targetColor = enabled and Color3.fromRGB(150, 150, 150) or Color3.fromRGB(61, 61, 61)
						if animated then
							TweenService:Create(inner, tween.info, {Position = targetPos}):Play()
							TweenService:Create(inner, tween.info, {BackgroundColor3 = targetColor}):Play()
						else
							inner.Position = targetPos
							inner.BackgroundColor3 = targetColor
						end
					end

					button.MouseButton1Click:Connect(function()
						element._value = not element._value
						applyState(true)
						element:_fireChanged()
					end)

					function element:SetValue(v)
						self._value = v and true or false
						applyState(false)
						self:_fireChanged()
					end

					applyState(false)
					return element
				end

				function subsection:newSlider(labelText, defaultValue, minValue, maxValue, onChange)
					labelText = labelText or "Slider"
					minValue = tonumber(minValue) or 0
					maxValue = tonumber(maxValue) or 100
					defaultValue = math.clamp(tonumber(defaultValue) or 50, minValue, maxValue)

					local root = Instance.new("TextLabel", content)
					root.ZIndex = 2
					root.BorderSizePixel = 0
					root.TextSize = 12
					root.TextXAlignment = Enum.TextXAlignment.Left
					root.TextYAlignment = Enum.TextYAlignment.Top
					root.BackgroundTransparency = 1
					root.Size = UDim2.new(1, -8, 0, 30)
					root.TextColor3 = Color3.fromRGB(144, 144, 144)
					root.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					root.Text = labelText
					root.Name = labelText

					local button = Instance.new("TextButton", root)
					button.BorderSizePixel = 0
					button.TextSize = 14
					button.AutoButtonColor = false
					button.TextColor3 = Color3.fromRGB(0, 0, 0)
					button.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
					button.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
					button.ZIndex = 2
					button.Size = UDim2.new(1, 0, 0, 12)
					button.Position = UDim2.new(0, 0, 0, 16)
					button.Text = ""

					local bStroke = Instance.new("UIStroke", button)
					bStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					bStroke.Color = Color3.fromRGB(61, 61, 61)

					local bar = Instance.new("Frame", button)
					bar.BorderSizePixel = 0
					bar.BackgroundColor3 = Color3.fromRGB(166, 166, 166)
					bar.Size = UDim2.new(0, 80, 0, 8)
					bar.Position = UDim2.new(0, 2, 0, 2)

					local bc = Instance.new("UICorner", button)
					bc.CornerRadius = UDim.new(0, 4)
					local barc = Instance.new("UICorner", bar)
					barc.CornerRadius = UDim.new(0, 4)

					local valueLabel = Instance.new("TextLabel", root)
					valueLabel.BorderSizePixel = 0
					valueLabel.TextSize = 12
					valueLabel.TextXAlignment = Enum.TextXAlignment.Right
					valueLabel.TextYAlignment = Enum.TextYAlignment.Top
					valueLabel.BackgroundTransparency = 1
					valueLabel.Size = UDim2.new(1, 0, 1, 0)
					valueLabel.TextColor3 = Color3.fromRGB(144, 144, 144)
					valueLabel.FontFace = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
					valueLabel.Text = tostring(defaultValue)

					local element = attachCommonElementAPI({_ui = {root = root, button = button, bar = bar, stroke = bStroke, valueLabel = valueLabel}, _value = defaultValue, _dragging = false, _barTween = nil, _strokeTween = nil, type = "slider"})
					if type(onChange) == "function" then element:SetCallback(onChange) end

					local function applyStroke()
						local target = element._dragging and Color3.fromRGB(100, 100, 100) or Color3.fromRGB(61, 61, 61)
						if element._strokeTween then element._strokeTween:Cancel() end
						element._strokeTween = TweenService:Create(bStroke, tween.info, {Color = target})
						element._strokeTween:Play()
					end

					local function setFromX(x)
						local width = button.AbsoluteSize.X - 4
						local clamped = math.clamp(x - button.AbsolutePosition.X - 2, 0, width)
						local ratio = width > 0 and (clamped / width) or 0
						local val = math.floor(minValue + ratio * (maxValue - minValue) + 0.5)
						element._value = val
						local targetSize = UDim2.new(0, math.max(8, math.floor(2 + clamped)), 0, 8)
						if element._barTween then element._barTween:Cancel() end
						element._barTween = TweenService:Create(bar, tween.infoFast, {Size = targetSize})
						element._barTween:Play()
						valueLabel.Text = tostring(val)
						if element._dragging then element:_fireChanged() end
					end

					button.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							element._dragging = true
							applyStroke()
							setFromX(input.Position.X)
							local conn
							conn = UserInputService.InputChanged:Connect(function(ch)
								if ch.UserInputType == Enum.UserInputType.MouseMovement and element._dragging then
									setFromX(ch.Position.X)
								end
							end)
							UserInputService.InputEnded:Connect(function(ended)
								if ended.UserInputType == Enum.UserInputType.MouseButton1 then
									element._dragging = false
									applyStroke()
									element:_fireChanged()
									if conn then conn:Disconnect() end
								end
							end)
						end
					end)

					function element:SetValue(v)
						local val = math.clamp(tonumber(v) or defaultValue, minValue, maxValue)
						self._value = val
						local width = button.AbsoluteSize.X - 4
						local ratio = (val - minValue) / (maxValue - minValue)
						local targetSize = UDim2.new(0, math.max(8, math.floor(2 + ratio * width)), 0, 8)
						if element._barTween then element._barTween:Cancel() end
						element._barTween = TweenService:Create(bar, tween.info, {Size = targetSize})
						element._barTween:Play()
						valueLabel.Text = tostring(val)
						applyStroke()
						self:_fireChanged()
					end

					element:SetValue(defaultValue)
					return element
				end

				return subsection
			end

			return section
		end

		return tab
	end

	return window,tree
end

return library