-- // Remove Luxt Lib

for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do  
    if v.ClassName == "ScreenGui" then
        if v:FindFirstChildWhichIsA("ImageLabel") then 
            local Label = v:FindFirstChildWhichIsA("ImageLabel")
            if Label:FindFirstChild("MainFrame") then
                v:Destroy()
            end
        end 
    end
end 

-- // Variables

local Luxt1 = {} 

local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")

-- // Functions

local Characters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
local function GenerateString(Length)
    local String = ""
    for i = 1, Length do
        local Character = Characters[math.random(1, #Characters)]
        Character = math.random(1, 2) == 2 and Character:upper() or Character

        String = String..Character
    end

    return String
end 

local function CreateInstance(Type, Name, Parent, Position, Size, BackgroundColor3, BackgroundTransparency, ZIndex)
    local CreatedInstance = Instance.new(Type)
    CreatedInstance.Name = Name or GenerateString(8)
    CreatedInstance.Parent = Parent 

    if Position then
        CreatedInstance.Position = Position
    end

    if Size then 
        CreatedInstance.Size = Size
    end 

    if BackgroundColor3 then
        CreatedInstance.BackgroundColor3 = BackgroundColor3
    end

    if BackgroundTransparency then 
        CreatedInstance.BackgroundTransparency = BackgroundTransparency
    end

    if ZIndex then 
        CreatedInstance.ZIndex = ZIndex
    end

    return CreatedInstance
end 

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
end

local function Resize(Part, New, Delay)
	Delay = Delay or 0.5
	local tweenInfo = TweenInfo.new(Delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local Tween = TweenService:Create(Part, tweenInfo, New)

	Tween:Play()
end

-- // Code 
function Luxt1.CreateWindow(libName, logoId)
    local Window = CreateInstance("ScreenGui", GenerateString(8), game:GetService("CoreGui"))
    Window.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Shadow = CreateInstance("ImageLabel", GenerateString(8), Window, UDim2.new(0.319562584, 0, 0.168689325, 0), UDim2.new(0, 609, 0, 530), Color3.fromRGB(255, 255, 255), 1, 0)
    Shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = 0.200

    local MainFrame = CreateInstance("Frame", "MainFrame", Shadow, UDim2.new(0.048, 0, 0.075, 0), UDim2.new(0, 553, 0, 452), Color3.fromRGB(30, 30, 30))
    local sideHeading = CreateInstance("Frame", "sideHeading", MainFrame, nil, UDim2.new(0, 155, 0, 452), Color3.fromRGB(21, 21, 21), nil, 2)

    local MainCorner = CreateInstance("UICorner", "MainCorner", sideHeading)
    MainCorner.CornerRadius = UDim.new(0, 5)

    local sideCover = CreateInstance("Frame", "sideCover", sideHeading, UDim2.new(0.909677446, 0, 0, 0), UDim2.new(0, 14, 0, 452), Color3.fromRGB(21, 21, 21))
    sideCover.BorderSizePixel = 0

    local hubLogo = CreateInstance("ImageLabel", "hubLogo", sideHeading, UDim2.new(0.0567928664, 0, 0.0243411884, 0), UDim2.new(0, 30, 0, 30), Color3.fromRGB(153, 255, 238), nil, 2)
    hubLogo.Image = "rbxassetid://"..(logoId or "")

    local MainCorner_2 = CreateInstance("UICorner", "MainCorner", hubLogo)
    MainCorner_2.CornerRadius = UDim.new(0, 999)

    local hubName = CreateInstance("TextLabel", "hubName", sideHeading, UDim2.new(0.290000081, 0, 0.0299999975, 0), UDim2.new(0, 110, 0, 16), Color3.fromRGB(255, 255, 255), 1, 2)
    hubName.Font = Enum.Font.GothamSemibold
    hubName.Text = libName
    hubName.TextColor3 = Color3.fromRGB(153, 255, 238)
    hubName.TextSize = 14.000
    hubName.TextWrapped = true
    hubName.TextXAlignment = Enum.TextXAlignment.Left

    local tabFrame = CreateInstance("ScrollingFrame", "tabFrame", sideHeading, UDim2.new(0.0761478543, 0, 0.126385808, 0), UDim2.new(0, 135, 0, 347), Color3.fromRGB(255, 255, 255), 1, 2)
    tabFrame.Active = true
    tabFrame.BorderSizePixel = 0
    tabFrame.ScrollBarThickness = 0

    local UIListLayout = CreateInstance("UIListLayout", nil, tabFrame)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    local usename = CreateInstance("TextLabel", "usename", sideHeading, UDim2.new(0.290000081, 0, 0.0700000152, 0), UDim2.new(0, 110, 0, 16), Color3.fromRGB(255, 255, 255), 1, 2)
    usename.Font = Enum.Font.GothamSemibold
    usename.Text = game.Players.LocalPlayer.Name
    usename.TextColor3 = Color3.fromRGB(103, 172, 161)
    usename.TextSize = 12.000
    usename.TextWrapped = true
    usename.TextXAlignment = Enum.TextXAlignment.Left
    
    local MainCorner_3 = CreateInstance("UICorner", "MainCorner", MainFrame)
    MainCorner_3.CornerRadius = UDim.new(0, 5)

    local wave = CreateInstance("ImageLabel", "wave", MainFrame, UDim2.new(0.0213434305, 0, 0, 0), UDim2.new(0.97865659, 0, 0.557522118, 0), Color3.fromRGB(255, 255, 255), 1)
    wave.Image = "http://www.roblox.com/asset/?id=6087537285"
    wave.ImageColor3 = Color3.fromRGB(181, 249, 255)
    wave.ImageTransparency = 0.300
    wave.ScaleType = Enum.ScaleType.Slice

    local MainCorner_4 = CreateInstance("UICorner", "MainCorner", wave)
    MainCorner_4.CornerRadius = UDim.new(0, 3)

    local framesAll = CreateInstance("Frame", "framesAll", MainFrame, UDim2.new(0.296564192, 0, 0.0242873337, 0), UDim2.new(0, 381, 0, 431), Color3.fromRGB(255, 255, 255), 1, 2)
    framesAll.BorderSizePixel = 0

    local pageFolder = CreateInstance("Folder", "pageFolder", framesAll)

    local key1 = CreateInstance("TextButton", "key1", sideHeading, UDim2.new(0.0508064516, 0, 0.935261786, 0), UDim2.new(0, 76, 0, 22), Color3.fromRGB(24, 24, 24), 0, 2)
    key1.Name = "key1"
    key1.Parent = sideHeading
    key1.Font = Enum.Font.GothamSemibold
    key1.Text = "LeftAlt"
    key1.TextColor3 = Color3.fromRGB(153, 255, 238)
    key1.TextSize = 14.000

    local UICorner = CreateInstance("UICorner", GenerateString(8), key1)
    UICorner.CornerRadius = UDim.new(0, 5)

    local keybindInfo1 = CreateInstance("TextLabel", "keybindinfo", sideHeading, UDim2.new(0.585064113, 0, 0.935261846, 0), UDim2.new(0, 50, 0, 22), Color3.fromRGB(255, 255, 255), 1, 2)
    keybindInfo1.Font = Enum.Font.GothamSemibold
    keybindInfo1.Text = "Close"
    keybindInfo1.TextColor3 = Color3.fromRGB(255, 255, 255)
    keybindInfo1.TextSize = 13.000
    keybindInfo1.TextXAlignment = Enum.TextXAlignment.Left


    local oldKey = Enum.KeyCode.LeftAlt.Name

    key1.MouseButton1Click:connect(function(e) 
        key1.Text = ". . ."
        local a, b = game:GetService("UserInputService").InputBegan:wait();
        if a.KeyCode.Name ~= "Unknown" then
            key1.Text = a.KeyCode.Name
            oldKey = a.KeyCode.Name;
        end
    end)

    game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
        if not ok then 
            if current.KeyCode.Name == oldKey then 
                if Window.Enabled == true then
                    Window.Enabled = false
                else
                    Window.Enabled = true
                end
            end
        end
    end)

    local TopBar = sideHeading
    local Camera = workspace:WaitForChild("Camera")

    local DragMousePosition
    local FramePosition
    local Draggable = false
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = true
            DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
            FramePosition = Vector2.new(Shadow.Position.X.Scale, Shadow.Position.Y.Scale)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if Draggable == true then
            local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / Camera.ViewportSize)
            Shadow.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = false
        end
    end)

    local TabHandling = {}

    function TabHandling:Tab(tabText, tabId)
        local tabBtnFrame = CreateInstance("Frame", "tabBtnFrame", tabFrame, nil, UDim2.new(0, 135, 0, 30), Color3.fromRGB(255, 255, 255), 1, 2)
        local tabBtn = CreateInstance("TextButton", "tabBtn", tabBtnFrame, UDim2.new(0.245534033, 0, 0, 0), UDim2.new(0, 101, 0, 30), Color3.fromRGB(166, 248, 255), 1, 2)
        tabBtn.Font = Enum.Font.Gotham
        tabBtn.Text = tabText or "Tab"
        tabBtn.TextColor3 = Color3.fromRGB(153, 255, 238)
        tabBtn.TextSize = 14.000
        tabBtn.TextXAlignment = Enum.TextXAlignment.Left

        local tabLogo = CreateInstance("ImageLabel", "tabLogo", tabBtnFrame, UDim2.new(-0.007, 0,0.067, 0), UDim2.new(0, 25, 0, 25), Color3.fromRGB(255, 255, 255), 1, 2)
        tabLogo.BorderSizePixel = 0
        tabLogo.Image = "rbxassetid://"..(tabId or "")
        tabLogo.ImageColor3 = Color3.fromRGB(153, 255, 238)

        local newPage = CreateInstance("ScrollingFrame", "newPage"..(tabText or ""), pageFolder, nil, UDim2.new(1, 0, 1, 0), Color3.fromRGB(255, 255, 255), 1, 2)
        newPage.Active = true
        newPage.BorderSizePixel = 0
        newPage.ScrollBarThickness = 0
        newPage.Visible = false

        local sectionList = CreateInstance("UIListLayout", "sectionList", newPage)
        sectionList.SortOrder = Enum.SortOrder.LayoutOrder
        sectionList.Padding = UDim.new(0, 3)

        local function UpdateSize()
            local cS = sectionList.AbsoluteContentSize

            game.TweenService:Create(newPage, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end

        UpdateSize()
        newPage.ChildAdded:Connect(UpdateSize)
        newPage.ChildRemoved:Connect(UpdateSize)

        tabBtn.MouseButton1Click:Connect(function()
            UpdateSize()
            for i,v in next, pageFolder:GetChildren() do
                UpdateSize()
                v.Visible = false
            end

            newPage.Visible = true
            for i,v in next, tabFrame:GetChildren() do
                if v:IsA("Frame") then
                    for i,v in next, v:GetChildren() do
                        if v:IsA("TextButton") then
                            game.TweenService:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                                TextColor3 = Color3.fromRGB(35, 59, 55)
                            }):Play()
                        end
                        if v:IsA("ImageLabel") then
                            game.TweenService:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                                ImageColor3 = Color3.fromRGB(35, 59, 55)
                            }):Play()
                        end
                    end
                end
            end

            game.TweenService:Create(tabLogo, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                ImageColor3 = Color3.fromRGB(153, 255, 238)
            }):Play()

            game.TweenService:Create(tabBtn, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                TextColor3 = Color3.fromRGB(153, 255, 238)
            }):Play()
        end)

        local sectionHandling = {}

        function sectionHandling:Section(sectionText)
            local sectionFrame = CreateInstance("Frame", "sectionFrame", newPage, UDim2.new(0, 0, 7.08064434e-08, 0), UDim2.new(1, 0,0, 36), Color3.fromRGB(21, 21, 21), nil, 2)
            sectionFrame.ClipsDescendants = true

            local MainCorner = CreateInstance("UICorner", "MainCorner", sectionFrame)
            MainCorner.CornerRadius = UDim.new(0, 5)

            local mainSectionHead = CreateInstance("Frame", "mainSectionHead", sectionFrame, nil, UDim2.new(0, 381, 0, 36), Color3.fromRGB(255, 255, 255), 1)
            mainSectionHead.BorderSizePixel = 0

            local sectionName = CreateInstance("TextLabel", "sectionName", mainSectionHead, UDim2.new(0.0236220472, 0, 0, 0), UDim2.new(0, 302, 0, 36), Color3.fromRGB(255, 255, 255), 1)
            sectionName.Size = UDim2.new(0, 302, 0, 36)
            sectionName.Font = Enum.Font.GothamSemibold
            sectionName.Text = sectionText or "Section"
            sectionName.TextColor3 = Color3.fromRGB(153, 255, 238)
            sectionName.TextSize = 14.000
            sectionName.TextXAlignment = Enum.TextXAlignment.Left

            local sectionExpannd = CreateInstance("ImageButton", "sectionExpannd", mainSectionHead, UDim2.new(0.91863519, 0, 0.138888896, 0), UDim2.new(0, 25, 0, 25), nil, 1, 2)

            local sectionInnerList = CreateInstance("UIListLayout", "sectionInnerList", sectionFrame)
            sectionInnerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
            sectionInnerList.SortOrder = Enum.SortOrder.LayoutOrder
            sectionInnerList.Padding = UDim.new(0, 3)

            sectionExpannd.Image = "rbxassetid://3926305904"
            sectionExpannd.ImageColor3 = Color3.fromRGB(153, 255, 238)
            sectionExpannd.ImageRectOffset = Vector2.new(564, 284)
            sectionExpannd.ImageRectSize = Vector2.new(36, 36)
            sectionExpannd.MouseButton1Click:Connect(function()
                if isDropped then
                    isDropped = false
                    sectionFrame:TweenSize(UDim2.new(1, 0,0, 36), "In", "Quint", 0.10)
                    game.TweenService:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                        Rotation = 0
                    }):Play()
                    wait(0.10)
                    UpdateSize()
                else
                    isDropped = true
                    sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                    game.TweenService:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                        Rotation = 180
                    }):Play()
                    wait(0.10)
                    UpdateSize()
                end
            end)

            local ItemHandling = {}
            function ItemHandling:Update(Text)
                sectionName.Text = Text or "Section"
            end 

            function ItemHandling:Destroy()
                sectionFrame:Destroy()
            end
        
            function ItemHandling:Button(btnText, callback)
                assert(typeof(callback) == "function", "Callback must be a function")
                assert(typeof(btnText) == "string", "Button text must be a string")

                local ButtonFunctions = {}

                local ButtonFrame = CreateInstance("Frame", "ButtonFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local TextButton = CreateInstance("TextButton", nil, ButtonFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                TextButton.AutoButtonColor = false
                TextButton.Text = btnText or "TextButton"
                TextButton.Font = Enum.Font.GothamSemibold
                TextButton.TextColor3 = Color3.fromRGB(180, 180, 180)
                TextButton.TextSize = 14.000

                local UICorner = CreateInstance("UICorner", nil, TextButton)
                UICorner.CornerRadius = UDim.new(0, 3)

                local UIListLayout = CreateInstance("UIListLayout", nil, ButtonFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                --
                callback = callback or function() end
                --

                local debounce = false
                local debounce1 = false
                TextButton.MouseButton1Click:Connect(function()
                    if not debounce then
                        debounce = true
                        callback()
                        wait(0.25)
                        debounce = false
                    end
                end)

                TextButton.MouseButton1Up:Connect(function()
                    TextButton:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(18,18,18),
                        TextColor3 = Color3.fromRGB(180, 180, 180)
                    }):Play()
                end)
                
                TextButton.MouseButton1Down:Connect(function()
                    if not debounce1 then
                        debounce1 = true
                        TextButton:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                        game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                            BackgroundColor3 = Color3.fromRGB(101, 168, 157),
                            TextColor3 = Color3.fromRGB(0,0,0)
                        }):Play()
                        wait(0.25)
                        debounce1 = false
                    end
                end)
                
                TextButton.MouseEnter:Connect(function()
                    game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                        TextColor3 = Color3.fromRGB(250,250,250)
                    }):Play()
                end)
                
                TextButton.MouseLeave:Connect(function()
                    game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(18,18,18),
                        TextColor3 = Color3.fromRGB(180, 180, 180)
                    }):Play()
                end)
                
                function ButtonFunctions:Update(Text)
                    assert(typeof(Text) == "string", "Text must be a string")
                    TextButton.Text = Text or "TextButton"
                end

                function ButtonFunctions:Destroy()
                    ButtonFrame:Destroy()
                end 

                function ButtonFunctions:SetCallback(callback)
                    assert(typeof(callback) == "function", "Callback must be a function")
                    callback = callback
                end 

                return ButtonFunctions
            end

            function ItemHandling:Toggle(toggInfo, callback)
                assert(typeof(callback) == "function", "Callback must be a function")
                assert(typeof(toggInfo) == "string", "Toggle info must be a string")

                local ToggleFunctions = {}

                local ToggleFrame = CreateInstance("Frame", "ToggleFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local toggleFrame = CreateInstance("Frame", "toggleFrame", ToggleFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1, 2)
                local UICorner = CreateInstance("UICorner", nil, toggleFrame)
                UICorner.CornerRadius = UDim.new(0, 3)

                local checkBtn = CreateInstance("ImageButton", "checkBtn", toggleFrame, UDim2.new(0.0191780813, 0, 0.138888896, 0), UDim2.new(0, 25, 0, 25), nil, 1, 2)
                checkBtn.Image = "rbxassetid://3926311105"
                checkBtn.ImageColor3 = Color3.fromRGB(97, 97, 97)
                checkBtn.ImageRectOffset = Vector2.new(940, 784)
                checkBtn.ImageRectSize = Vector2.new(48, 48)

                local toggleInfo = CreateInstance("TextLabel", "toggleInfo", toggleFrame, UDim2.new(0.104109593, 0, 0, 0), UDim2.new(0.254794508, 162, 1, 0), Color3.fromRGB(255, 255, 255), 1, 2)
                toggleInfo.Font = Enum.Font.GothamSemibold
                toggleInfo.Text = toggInfo or "Toggle"
                toggleInfo.TextColor3 = Color3.fromRGB(97, 97, 97)
                toggleInfo.TextSize = 14.000
                toggleInfo.TextXAlignment = Enum.TextXAlignment.Left

                local togInList = CreateInstance("UIListLayout", "togInList", toggleFrame)
                togInList.FillDirection = Enum.FillDirection.Horizontal
                togInList.SortOrder = Enum.SortOrder.LayoutOrder
                togInList.VerticalAlignment = Enum.VerticalAlignment.Center
                togInList.Padding = UDim.new(0, 5)

                local toginPad = CreateInstance("UIPadding", "toginPad", toggleFrame)
                toginPad.PaddingLeft = UDim.new(0, 7)

                local UIListLayout = CreateInstance("UIListLayout", nil, ToggleFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                local a 
                callback = callback or function() end

                local on = false
                local togDe = false
                checkBtn.MouseButton1Click:Connect(function()
                    if not togDe then
                            togDe = true
                            on = not on
                            a = spawn(function()
                               callback(on) 
                            end)
                            if on then
                                checkBtn.Parent.toggleInfo.TextColor3 = Color3.fromRGB(153, 255, 238)
                                checkBtn.ImageColor3 = Color3.fromRGB(153, 255, 238)
                                checkBtn.ImageRectOffset = Vector2.new(4, 836)
                                checkBtn.ImageRectSize = Vector2.new(48,48)
                            else
                                checkBtn.Parent.toggleInfo.TextColor3 = Color3.fromRGB(97, 97, 97)
                                checkBtn.ImageColor3 = Color3.fromRGB(97, 97, 97)
                                checkBtn.ImageRectOffset = Vector2.new(940, 784)
                                checkBtn.ImageRectSize = Vector2.new(48,48)
                            end
                            wait(0.25)
                            togDe = false
                        end
                end)

                checkBtn.MouseButton1Up:Connect(function()
                    checkBtn.Parent:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                end)

                checkBtn.MouseButton1Down:Connect(function()
                    checkBtn.Parent:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                end)

                function ToggleFunctions:Update(Text)
                    assert(typeof(Text) == "string", "Text must be a string")
                    toggleInfo.Text = Text or "Toggle"
                end

                function ToggleFunctions:Destroy()
                    ToggleFrame:Destroy()
                end 

                function ToggleFunctions:SetCallback(callback)
                    assert(typeof(callback) == "function", "Callback must be a function")
                    callback = callback
                end

                return ToggleFunctions
            end

            function ItemHandling:KeyBind(keyInfo, first, callback)
                assert(typeof(callback) == "function", "Callback must be a function")
                assert(typeof(keyInfo) == "string", "Keybind info must be a string")

                local KeybindFunctions = {}

                keyInfo = keyInfo or "KeyBind"

                local oldKey = first.Name
                callback = callback or function() end

                local KeyBindFrame = CreateInstance("Frame", "KeyBindFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local keybindFrame = CreateInstance("Frame", "keybindFrame", KeyBindFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                local UICorner = CreateInstance("UICorner", nil, keybindFrame)
                UICorner.CornerRadius = UDim.new(0, 3)

                local key = CreateInstance("TextButton", "key", keybindFrame, UDim2.new(0.0250000004, 0, 0.194111288, 0), UDim2.new(0, 100, 0, 22), Color3.fromRGB(24, 24, 24), 1, 2)
                key.ZIndex = 2
                key.Font = Enum.Font.GothamSemibold
                key.Text = oldKey
                key.TextColor3 = Color3.fromRGB(153, 255, 238)
                key.TextSize = 14.000

                local UICorner_2 = CreateInstance("UICorner", nil, key)
                UICorner_2.CornerRadius = UDim.new(0, 5)

                local keybindInfo = CreateInstance("TextLabel", "keybindInfo", keybindFrame, UDim2.new(0.320547938, 0, 0.166666672, 0), UDim2.new(0, 239, 0, 22), Color3.fromRGB(255, 255, 255), 1, 2)
                keybindInfo.Font = Enum.Font.GothamSemibold
                keybindInfo.Text = keyInfo
                keybindInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                keybindInfo.TextSize = 13.000
                keybindInfo.TextXAlignment = Enum.TextXAlignment.Left

                local toginPad = CreateInstance("UIPadding", "toginPad", keybindFrame)
                toginPad.PaddingLeft = UDim.new(0, 7)

                local togInList = CreateInstance("UIListLayout", "togInList", keybindFrame)
                togInList.FillDirection = Enum.FillDirection.Horizontal
                togInList.SortOrder = Enum.SortOrder.LayoutOrder
                togInList.VerticalAlignment = Enum.VerticalAlignment.Center
                togInList.Padding = UDim.new(0, 8)

                local UIListLayout = CreateInstance("UIListLayout", nil, KeyBindFrame)
                UIListLayout.Parent = KeyBindFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                key.MouseButton1Click:connect(function(e) 
                    keybindFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                    key.Text = ". . ."
                    local a, b = game:GetService("UserInputService").InputBegan:wait();
                    if a.KeyCode.Name ~= "Unknown" then
                        keybindFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                        key.Text = a.KeyCode.Name
                        oldKey = a.KeyCode.Name;
                    end
                end)

                local keyDebounce = false
                game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
                    if not ok then 
                        if current.KeyCode.Name == oldKey then 
                            if not keyDebounce then
                                keyDebounce = true
                                callback()
                                keybindFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                wait(0.18)
                                keybindFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                wait(0.4)
                                keyDebounce = false
                            end
                        end
                    end
                end)

                function KeybindFunctions:Update(Text)
                    assert(typeof(Text) == "string", "Text must be a string")
                    keybindInfo.Text = Text or "Keybind"
                end 

                function KeybindFunctions:Destroy()
                    KeyBindFrame:Destroy()
                end

                function KeybindFunctions:SetCallback(callback)
                    assert(typeof(callback) == "function", "Callback must be a function")
                    callback = callback
                end

                function KeybindFunctions:SetKey(Keybind)
                    assert(typeof(Keybind) == "string", "Key must be a string")
                    key.Text = Keybind
                end

                return KeybindFunctions
            end

            function ItemHandling:TextBox(infbix, textPlace, callback)
                local TextBoxFunctions = {}
                callback = callback or function() end

                local a
                local TextBoxFrame = CreateInstance("Frame", "TextBoxFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local textboxFrame = CreateInstance("Frame", "textboxFrame", TextBoxFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                local UICorner = CreateInstance("UICorner", nil, textboxFrame)
                UICorner.CornerRadius = UDim.new(0, 3)

                local textboxInfo = CreateInstance("TextLabel", "textboxInfo", textboxFrame, UDim2.new(0.320547938, 0, 0.166666672, 0), UDim2.new(0, 239, 0, 22), Color3.fromRGB(255, 255, 255), 1, 2)
                textboxInfo.Font = Enum.Font.GothamSemibold
                textboxInfo.Text = infbix or "TextBox"
                textboxInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                textboxInfo.TextSize = 13.000
                textboxInfo.TextXAlignment = Enum.TextXAlignment.Left

                local TextBox = CreateInstance("TextBox", nil, textboxFrame, UDim2.new(0.0250000004, 0, 0.194000006, 0), UDim2.new(0, 100, 0, 22), Color3.fromRGB(153, 255, 238), 1, 2)
                TextBox.ClipsDescendants = true
                TextBox.ClearTextOnFocus = false
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.PlaceholderColor3 = Color3.fromRGB(24, 24, 24)
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextBox.TextSize = 13.000
                TextBox.PlaceholderText = textPlace or "PlaceHolder"

                local UICorner_2 = CreateInstance("UICorner", nil, TextBox)
                UICorner_2.CornerRadius = UDim.new(0, 5)

                local textboxinlist = CreateInstance("UIListLayout", "textboxinlist", TextBoxFrame)
                textboxinlist.FillDirection = Enum.FillDirection.Horizontal
                textboxinlist.VerticalAlignment = Enum.VerticalAlignment.Center
                textboxinlist.Padding = UDim.new(0, 8)

                local txtboxpa = CreateInstance("UIPadding", "txtboxpa", TextBoxFrame)
                txtboxpa.PaddingLeft = UDim.new(0, 7)

                local UIListLayout = CreateInstance("UIListLayout", nil, TextBoxFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                function anim(property)
                    if property == "Text" then
                        textboxFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                        wait(0.18)
                        textboxFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    end
                end

                TextBox.Changed:Connect(anim)

                TextBox.FocusLost:Connect(function(EnterPressed)
                    if not EnterPressed then return end
                    a = spawn(function()
                        callback(TextBox.Text)
                    end)

                    textboxFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                    wait(0.18)
                    textboxFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    TextBox.Text = ""  
                end)

                function TextBoxFunctions:Update(Name)
                    assert(typeof(Name) == "string", "Name must be a string")
                    textboxInfo.Text = Name or "TextBox"
                end 

                function TextBoxFunctions:SetPlaceholder(Text)
                    assert(typeof(Text) == "string", "Text must be a string")
                    TextBox.PlaceholderText = Text or "Placeholder"
                end 

                function TextBoxFunctions:Destroy()
                    TextBoxFrame:Destroy()
                end 

                function TextBoxFunctions:SetCallback(callback)
                    assert(typeof(callback) == "function", "Callback must be a function")
                    callback = callback
                end 

                return TextBoxFunctions
            end

            function ItemHandling:Slider(slidInfo, minvalue, maxvalue, callback)
                assert(typeof(slidInfo) == "string", "SlidInfo must be a string")
                assert(typeof(minvalue) == "number", "Minvalue must be a number")
                assert(typeof(maxvalue) == "number", "Maxvalue must be a number")
                assert(typeof(callback) == "function", "Callback must be a function")
                assert(minvalue < maxvalue, "Minimum Value must be less than Maximum Value")

                local SliderFunctions = {}

                local SliderFrame = CreateInstance("Frame", "SliderFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local sliderFrame = CreateInstance("Frame", "sliderFrame", SliderFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                local UICorner = CreateInstance("UICorner", nil, sliderFrame)
                UICorner.CornerRadius = UDim.new(0, 3)

                local sliderbtn = CreateInstance("TextButton", "sliderbtn", sliderFrame, UDim2.new(0.0167808235, 0, 0.416333348, 0), UDim2.new(0, 150, 0, 6), Color3.fromRGB(24, 24, 24), nil, 2)
                sliderbtn.ZIndex = 2
                sliderbtn.AutoButtonColor = false
                sliderbtn.Font = Enum.Font.SourceSans
                sliderbtn.Text = ""
                sliderbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                sliderbtn.TextSize = 14.000

                local UICorner_2 = CreateInstance("UICorner", nil, sliderbtn)
                UICorner_2.CornerRadius = UDim.new(0, 5)

                local dragSlider = CreateInstance("Frame", "dragSlider", sliderbtn, nil, UDim2.new(0, 0, 0, 6), Color3.fromRGB(153, 255, 238), nil, 2)
                local UICorner_3 = CreateInstance("UICorner", nil, dragSlider)
                UICorner_3.CornerRadius = UDim.new(0, 5)

                local dragPrecent = CreateInstance("TextLabel", "dragPrecent", dragSlider, UDim2.new(0.727272749, 0, -2, 0), UDim2.new(0, 44, 0, 15), Color3.fromRGB(31, 31, 31), 1, 2)
                dragPrecent.BorderSizePixel = 0
                dragPrecent.ZIndex = 2
                dragPrecent.Font = Enum.Font.GothamSemibold
                dragPrecent.Text = "0"
                dragPrecent.TextColor3 = Color3.fromRGB(255, 255, 255)
                dragPrecent.TextSize = 12.000
                dragPrecent.TextTransparency = 1

                local UICorner_4 = CreateInstance("UICorner", nil, dragPrecent)
                UICorner_4.CornerRadius = UDim.new(0, 3)

                local triangle = CreateInstance("ImageLabel", "triangle", dragPrecent, nil, UDim2.new(0, 44, 0, 39), Color3.fromRGB(31, 31, 31), 1, 2)
                triangle.Image = "rbxassetid://3926307971"
                triangle.ImageColor3 = Color3.fromRGB(31, 31, 31)
                triangle.ImageRectOffset = Vector2.new(324, 524)
                triangle.ImageRectSize = Vector2.new(36, 36)
                triangle.ImageTransparency = 1

                local precentlist = CreateInstance("UIListLayout", "precentlist", dragPrecent)
                precentlist.HorizontalAlignment = Enum.HorizontalAlignment.Right
                precentlist.SortOrder = Enum.SortOrder.LayoutOrder

                local precentPad = CreateInstance("UIPadding", "precentPad", dragPrecent)
                local dragList = CreateInstance("UIListLayout", "dragList", dragSlider)
                dragList.HorizontalAlignment = Enum.HorizontalAlignment.Right
                dragList.SortOrder = Enum.SortOrder.LayoutOrder
                
                local dragPad = CreateInstance("UIPadding", "dragPad", dragSlider)
                dragPad.PaddingLeft = UDim.new(0, -15)
                dragPad.PaddingRight = UDim.new(0, -20)
                dragPad.PaddingTop = UDim.new(0, -18)

                local sliderlist_2 = CreateInstance("UIListLayout", "sliderlist", sliderFrame)
                sliderlist_2.FillDirection = Enum.FillDirection.Horizontal
                sliderlist_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                sliderlist_2.SortOrder = Enum.SortOrder.LayoutOrder
                sliderlist_2.VerticalAlignment = Enum.VerticalAlignment.Center
                sliderlist_2.Padding = UDim.new(0, 8)

                local sliderlist = CreateInstance("UIListLayout", "sliderlist", sliderbtn)
                sliderlist.SortOrder = Enum.SortOrder.LayoutOrder
                sliderlist.VerticalAlignment = Enum.VerticalAlignment.Center

                local UIListLayout = CreateInstance("UIListLayout", nil, SliderFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                local sliderInfo = CreateInstance("TextLabel", "sliderInfo", sliderFrame, UDim2.new(0.466095895, 0, 0, 0), UDim2.new(0, 193, 0, 36), Color3.fromRGB(255, 255, 255), 1, 2)
                sliderInfo.Font = Enum.Font.GothamSemibold
                sliderInfo.Text = slidInfo or "Slider"
                sliderInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                sliderInfo.TextSize = 14.000
                sliderInfo.TextXAlignment = Enum.TextXAlignment.Left

                minvalue = minvalue or 0
                maxvalue = maxvalue or 500

                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
                local Value;
        
                sliderbtn.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue)) or 0
                    pcall(function()
                        callback(Value)
                    end)

                    dragSlider.Size = UDim2.new(0, math.clamp(mouse.X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)

                    moveconnection = mouse.Move:Connect(function()
                    dragPrecent.Text = tostring(Value)
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                    pcall(function()
                        callback(Value)
                    end)

                    dragSlider.Size = UDim2.new(0, math.clamp(mouse.X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                end)

                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                        pcall(function()
                            callback(Value)
                        end)

                        dragPrecent.Text = Value
                        dragSlider.Size = UDim2.new(0, math.clamp(mouse.X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)

                function anim(property)
                    if property == "Size" then
                        sliderFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                        wait(0.18)
                        sliderFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    end
                end

                dragSlider.Changed:Connect(anim)
                sliderbtn.MouseButton1Up:Connect(function()
                    game.TweenService:Create(dragPrecent, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                        BackgroundTransparency = 1,
                        TextTransparency = 1
                    }):Play()

                    game.TweenService:Create(triangle, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                        ImageTransparency = 1
                    }):Play()
                end)
                                
                sliderbtn.MouseButton1Down:Connect(function()
                    game.TweenService:Create(dragPrecent, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                        BackgroundTransparency = 0,
                        TextTransparency = 0
                    }):Play()

                    game.TweenService:Create(triangle, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                        ImageTransparency = 0
                    }):Play()
                end)

                function SliderFunctions:Update(Name)
                    sliderInfo.Text = Name
                end 

                function SliderFunctions:SetValue(Value)
                    dragSlider.Size = UDim2.new(0, math.clamp(Value, 0, 150), 0, 6)
                    dragPrecent.Text = Value
                end

                function SliderFunctions:SetMinMax(Min, Max)
                    minvalue = Min
                    maxvalue = Max
                end

                function SliderFunctions:SetCallback(Callback)
                    callback = Callback
                end

                function SliderFunctions:Destroy()
                    sliderFrame:Destroy()
                end

                return SliderFunctions
            end

            function ItemHandling:Label(labelInfo)
                assert(typeof(labelInfo) == "string", "Label Text must be a string")
                local LabelFunctions = {}

                local TextLabelFrame = CreateInstance("Frame", "TextLabelFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local UIListLayout = CreateInstance("UIListLayout", nil, TextLabelFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                local TextLabel = CreateInstance("TextLabel", nil, TextLabelFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                TextLabel.Font = Enum.Font.GothamSemibold
                TextLabel.Text = labelInfo or "Label"
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000

                local UICorner = CreateInstance("UICorner", nil, TextLabel)
                UICorner.CornerRadius = UDim.new(0, 5)

                function LabelFunctions:Update(labelInfo)
                    assert(type(labelInfo) == "string", "Label Text must be a string")
                    TextLabel.Text = labelInfo or "Label"
                end 

                function LabelFunctions:Destroy()
                    TextLabelFrame:Destroy()
                end 

                return LabelFunctions
            end

            function ItemHandling:Credit(creditWho)
                assert(type(creditWho) == "string", "Credit must be a string")
                local CreditFunctions = {}

                local TextLabelFrame = CreateInstance("Frame", "TextLabelFrame", sectionFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                local UIListLayout = CreateInstance("UIListLayout", nil, TextLabelFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                local TextLabel = CreateInstance("TextLabel", nil, TextLabelFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                TextLabel.Font = Enum.Font.Gotham
                TextLabel.Text = ""..creditWho or "Credit"
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.TextSize = 14.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                local UICorner = CreateInstance("UICorner", nil, TextLabel)
                UICorner.CornerRadius = UDim.new(0, 5)                              

                function CreditFunctions:Update(labelInfo)
                    assert(typeof(labelInfo) == "string", "Label Text must be a string")
                    TextLabel.Text = labelInfo or "Label"
                end 

                function CreditFunctions:Destroy()
                    TextLabelFrame:Destroy()
                end 

                return CreditFunctions
            end

            function ItemHandling:DropDown(dropInfo, list, callback)
                assert(typeof(dropInfo) == "string", "Dropdown Text must be a string")
                assert(typeof(list) == "table", "Dropdown List must be a table")
                assert(typeof(callback) == "function", "Dropdown Callback must be a function")

                local DropdownFunctions = {}

                callback = callback or function() end
                list = list or {}
                dropInfo = dropInfo or ""
        
                local isDropped1 = false
                local DropDownFrame = CreateInstance("Frame", "DropDownFrame", sectionFrame, UDim2.new(0.0209973752, 0, 0.439849585, 0), UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), 1)
                DropDownFrame.ClipsDescendants = true

                local dropdownFrame = CreateInstance("Frame", "dropdownFrame", DropDownFrame, nil, UDim2.new(1, 0, 1, 0), Color3.fromRGB(18, 18, 18), nil, 2)
                local UICorner = CreateInstance("UICorner", nil, dropdownFrame)
                UICorner.CornerRadius = UDim.new(0, 3)

                local dropdownFrameMain = CreateInstance("Frame", "dropdownFrameMain", dropdownFrame, nil, UDim2.new(0, 365, 0, 36), Color3.fromRGB(18, 18, 18), nil, 2)
                local UICorner_2 = CreateInstance("UICorner", nil, dropdownFrameMain)
                UICorner_2.CornerRadius = UDim.new(0, 3)

                local expand_more = CreateInstance("ImageButton", "expand_more", dropdownFrameMain, UDim2.new(0.91900003, 0, 0.138999999, 0), UDim2.new(0, 25, 0, 25), Color3.fromRGB(18, 18, 18), 1, 2)
                expand_more.Image = "rbxassetid://3926305904"
                expand_more.ImageColor3 = Color3.fromRGB(153, 255, 238)
                expand_more.ImageRectOffset = Vector2.new(564, 284)
                expand_more.ImageRectSize = Vector2.new(36, 36)

                local dropdownItem1 = CreateInstance("TextLabel", "dropdownItem1", dropdownFrameMain, UDim2.new(0.0250000004, 0, 0.0833333358, 0), UDim2.new(0, 293, 0, 30), Color3.fromRGB(255, 255, 255), 1, 2)
                dropdownItem1.Font = Enum.Font.GothamSemibold
                dropdownItem1.Text = dropInfo or "Dropdown"
                dropdownItem1.TextColor3 = Color3.fromRGB(153, 255, 238)
                dropdownItem1.TextSize = 14.000
                dropdownItem1.TextXAlignment = Enum.TextXAlignment.Left

                local UIListLayout = CreateInstance("UIListLayout", nil, dropdownFrame)
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 3)

                local UIListLayout_2 = CreateInstance("UIListLayout", nil, optionBtnFrame)
                UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

                local UIListLayout_3 = CreateInstance("UIListLayout", nil, DropDownFrame)
                UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
                UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

                local DropYSize = 36

                expand_more.MouseButton1Click:Connect(function()
                    if isDropped1 then
                        isDropped1 = false
                        DropDownFrame:TweenSize(UDim2.new(0, 365, 0, 36), "In", "Quint", 0.10)
                        game.TweenService:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                            Rotation = 0
                        }):Play()

                        wait(0.10)
                        sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                        wait(0.10)
                        UpdateSize()
                    else
                        isDropped1 = true
                        DropDownFrame:TweenSize(UDim2.new(0, 365, 0, DropYSize), "In", "Quint", 0.10)
                        game.TweenService:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                            Rotation = 180
                        }):Play()

                        wait(0.10)
                        sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                        wait(0.10)
                        UpdateSize()
                    end
                end)

                local function Dropdown(List, Updated)
                    if Updated then 
                        DropYSize = 36
                        for i, v in next, dropdownFrame:GetChildren() do 
                            if v.ClassName == "Frame" and v.Name == "optionBtnFrame" then 
                                v:Destroy()
                            end 
                        end 
                    end 

                    for i,v in next, List do
                        local optionBtnFrame = CreateInstance("Frame", "optionBtnFrame", dropdownFrame, nil, UDim2.new(0, 339, 0, 34), Color3.fromRGB(255, 255, 255), 1)
                        optionBtnFrame.BorderSizePixel = 0

                        local optionBtn1 = CreateInstance("TextButton", "optionBtn1", optionBtnFrame, nil, UDim2.new(0, 339, 0, 34), Color3.fromRGB(21, 21, 21), nil, 2)
                        optionBtn1.AutoButtonColor = false
                        optionBtn1.Font = Enum.Font.GothamSemibold
                        optionBtn1.Text = "  "..v
                        optionBtn1.TextColor3 = Color3.fromRGB(120, 200, 187)
                        optionBtn1.TextSize = 14.000
                        optionBtn1.TextXAlignment = Enum.TextXAlignment.Left

                        local UICorner_3 = CreateInstance("UICorner", nil, optionBtn1)
                        UICorner_3.CornerRadius = UDim.new(0, 3)

                        DropYSize = DropYSize + 40
                        optionBtn1.MouseButton1Click:Connect(function()
                            callback(v)
                            dropdownItem1.Text = v
                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, 36), "In", "Quint", 0.10)
                            wait()
                            isDropped = false
                            wait(0.10)
                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                            wait(0.10)
                            UpdateSize()
                            game.TweenService:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                Rotation = 0
                            }):Play()
                        end)

                        optionBtn1.MouseButton1Down:Connect(function()
                            optionBtn1:TweenSize(UDim2.new(0, 335,0, 30), "InOut", "Quint", 0.12, true)
                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                BackgroundColor3 = Color3.fromRGB(21,21,21),
                                TextColor3 = Color3.fromRGB(180, 180, 180)
                            }):Play()
                        end)
                                            
                        optionBtn1.MouseButton1Up:Connect(function()
                            optionBtn1:TweenSize(UDim2.new(0, 339,0, 34), "InOut", "Quint", 0.12, true)
                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                BackgroundColor3 = Color3.fromRGB(101, 168, 157),
                                TextColor3 = Color3.fromRGB(0,0,0)
                                }):Play()
                            end)
                                            
                        optionBtn1.MouseEnter:Connect(function()
                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                BackgroundColor3 = Color3.fromRGB(15, 15, 15),
                                TextColor3 = Color3.fromRGB(250,250,250)
                            }):Play()
                        end)
                                            
                        optionBtn1.MouseLeave:Connect(function()
                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                BackgroundColor3 = Color3.fromRGB(21, 21, 21),
                                TextColor3 = Color3.fromRGB(120, 200, 187)
                            }):Play()
                        end)
                    end 
                end

                Dropdown(list)

                function DropdownFunctions:Update(Name)
                    dropdownItem1.Text = Name
                end 

                function DropdownFunctions:UpdateList(List)
                    assert(typeof(List) == "table", "List must be a table")
                    Dropdown(List, true)
                end

                function DropdownFunctions:Destroy()
                    DropdownFrame:Destroy()
                end

                return DropdownFunctions
            end
                        
            return ItemHandling
        end
        return sectionHandling
    end
    return TabHandling
end

return Luxt1
