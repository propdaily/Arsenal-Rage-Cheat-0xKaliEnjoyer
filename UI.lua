-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local ESPText = Instance.new("TextLabel")
local EspButton = Instance.new("TextButton")
local NoSpreadText = Instance.new("TextLabel")
local NoSpreadButton = Instance.new("TextButton")
local RapidFireText = Instance.new("TextLabel")
local RapidFireButton = Instance.new("TextButton")
local HitBoxExpanderText = Instance.new("TextLabel")
local HitBoxExpanderButton = Instance.new("TextButton")
local FlyText = Instance.new("TextLabel")
local FlyButton = Instance.new("TextButton")
local SpinBotText = Instance.new("TextLabel")
local SpinBotButton = Instance.new("TextButton")
local EnableAllSkinsText = Instance.new("TextLabel")
local EnableAllSkinsButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local _r = game:GetService("ReplicatedStorage")

local _wspace = game.Workspace
local _lPlayer = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local Enabled = true
local _localPlayerTeamColor
local _OtherPlayersTeamColor

local Weapons = _r.Weapons
local Enabled = true

local AmmoVal = 10

local _RF = game:GetService("ReplicatedFirst")
local AC = _RF:WaitForChild("NewLoader")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.400
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.000229246507, 0, 0.379901975, 0)
Frame.Size = UDim2.new(0, 500, 0, 500)

UICorner.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.118000001, 0)
ScrollingFrame.Size = UDim2.new(0, 500, 0, 441)
ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 100)
UIGridLayout.CellSize = UDim2.new(0, 450, 0, 50)

ESPText.Name = "ESPText"
ESPText.Parent = ScrollingFrame
ESPText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPText.BackgroundTransparency = 1.000
ESPText.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPText.BorderSizePixel = 0
ESPText.Position = UDim2.new(0.0439999998, 0, 0.00600000005, 0)
ESPText.Size = UDim2.new(0, 200, 0, 50)
ESPText.Font = Enum.Font.SourceSans
ESPText.Text = "ESP"
ESPText.TextColor3 = Color3.fromRGB(0, 0, 0)
ESPText.TextScaled = true
ESPText.TextSize = 14.000
ESPText.TextWrapped = true

EspButton.Name = "EspButton"
EspButton.Parent = ESPText
EspButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EspButton.BackgroundTransparency = 1.000
EspButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspButton.BorderSizePixel = 0
EspButton.Position = UDim2.new(0.771111131, 0, 0, 0)
EspButton.Size = UDim2.new(0, 153, 0, 50)
EspButton.Font = Enum.Font.SourceSans
EspButton.Text = "Enable"
EspButton.TextColor3 = Color3.fromRGB(0, 0, 0)
EspButton.TextScaled = true
EspButton.TextSize = 14.000
EspButton.TextWrapped = true

NoSpreadText.Name = "NoSpreadText"
NoSpreadText.Parent = ScrollingFrame
NoSpreadText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoSpreadText.BackgroundTransparency = 1.000
NoSpreadText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoSpreadText.BorderSizePixel = 0
NoSpreadText.Position = UDim2.new(0.0439999998, 0, 0.00600000005, 0)
NoSpreadText.Size = UDim2.new(0, 200, 0, 50)
NoSpreadText.Font = Enum.Font.SourceSans
NoSpreadText.Text = "No Spread"
NoSpreadText.TextColor3 = Color3.fromRGB(0, 0, 0)
NoSpreadText.TextScaled = true
NoSpreadText.TextSize = 14.000
NoSpreadText.TextWrapped = true

NoSpreadButton.Name = "NoSpreadButton"
NoSpreadButton.Parent = NoSpreadText
NoSpreadButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoSpreadButton.BackgroundTransparency = 1.000
NoSpreadButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoSpreadButton.BorderSizePixel = 0
NoSpreadButton.Position = UDim2.new(0.771111131, 0, 0, 0)
NoSpreadButton.Size = UDim2.new(0, 153, 0, 50)
NoSpreadButton.Font = Enum.Font.SourceSans
NoSpreadButton.Text = "Enable"
NoSpreadButton.TextColor3 = Color3.fromRGB(0, 0, 0)
NoSpreadButton.TextScaled = true
NoSpreadButton.TextSize = 14.000
NoSpreadButton.TextWrapped = true

RapidFireText.Name = "RapidFireText"
RapidFireText.Parent = ScrollingFrame
RapidFireText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RapidFireText.BackgroundTransparency = 1.000
RapidFireText.BorderColor3 = Color3.fromRGB(0, 0, 0)
RapidFireText.BorderSizePixel = 0
RapidFireText.Position = UDim2.new(0.0439999998, 0, 0.00600000005, 0)
RapidFireText.Size = UDim2.new(0, 200, 0, 50)
RapidFireText.Font = Enum.Font.SourceSans
RapidFireText.Text = "Rapid Fire"
RapidFireText.TextColor3 = Color3.fromRGB(0, 0, 0)
RapidFireText.TextScaled = true
RapidFireText.TextSize = 14.000
RapidFireText.TextWrapped = true

RapidFireButton.Name = "RapidFireButton"
RapidFireButton.Parent = RapidFireText
RapidFireButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RapidFireButton.BackgroundTransparency = 1.000
RapidFireButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RapidFireButton.BorderSizePixel = 0
RapidFireButton.Position = UDim2.new(0.771111131, 0, 0, 0)
RapidFireButton.Size = UDim2.new(0, 153, 0, 50)
RapidFireButton.Font = Enum.Font.SourceSans
RapidFireButton.Text = "Enable"
RapidFireButton.TextColor3 = Color3.fromRGB(0, 0, 0)
RapidFireButton.TextScaled = true
RapidFireButton.TextSize = 14.000
RapidFireButton.TextWrapped = true

HitBoxExpanderText.Name = "HitBoxExpanderText"
HitBoxExpanderText.Parent = ScrollingFrame
HitBoxExpanderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HitBoxExpanderText.BackgroundTransparency = 1.000
HitBoxExpanderText.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitBoxExpanderText.BorderSizePixel = 0
HitBoxExpanderText.Position = UDim2.new(0, 0, 0.165000007, 0)
HitBoxExpanderText.Size = UDim2.new(0, 429, 0, 50)
HitBoxExpanderText.Font = Enum.Font.SourceSans
HitBoxExpanderText.Text = "Hitbox Expander"
HitBoxExpanderText.TextColor3 = Color3.fromRGB(0, 0, 0)
HitBoxExpanderText.TextSize = 38.000
HitBoxExpanderText.TextWrapped = true

HitBoxExpanderButton.Name = "HitBoxExpanderButton"
HitBoxExpanderButton.Parent = HitBoxExpanderText
HitBoxExpanderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HitBoxExpanderButton.BackgroundTransparency = 1.000
HitBoxExpanderButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitBoxExpanderButton.BorderSizePixel = 0
HitBoxExpanderButton.Position = UDim2.new(0.771111131, 0, 0, 0)
HitBoxExpanderButton.Size = UDim2.new(0, 153, 0, 50)
HitBoxExpanderButton.Font = Enum.Font.SourceSans
HitBoxExpanderButton.Text = "Enable"
HitBoxExpanderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HitBoxExpanderButton.TextScaled = true
HitBoxExpanderButton.TextSize = 14.000
HitBoxExpanderButton.TextWrapped = true

FlyText.Name = "FlyText"
FlyText.Parent = ScrollingFrame
FlyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyText.BackgroundTransparency = 1.000
FlyText.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyText.BorderSizePixel = 0
FlyText.Position = UDim2.new(0, 0, 0.165000007, 0)
FlyText.Size = UDim2.new(0, 429, 0, 50)
FlyText.Font = Enum.Font.SourceSans
FlyText.Text = "Fly"
FlyText.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyText.TextScaled = true
FlyText.TextSize = 38.000
FlyText.TextWrapped = true

FlyButton.Name = "FlyButton"
FlyButton.Parent = FlyText
FlyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.BackgroundTransparency = 1.000
FlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.BorderSizePixel = 0
FlyButton.Position = UDim2.new(0.771111131, 0, 0, 0)
FlyButton.Size = UDim2.new(0, 153, 0, 50)
FlyButton.Font = Enum.Font.SourceSans
FlyButton.Text = "Enable"
FlyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.TextScaled = true
FlyButton.TextSize = 14.000
FlyButton.TextWrapped = true

SpinBotText.Name = "SpinBotText"
SpinBotText.Parent = ScrollingFrame
SpinBotText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpinBotText.BackgroundTransparency = 1.000
SpinBotText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpinBotText.BorderSizePixel = 0
SpinBotText.Position = UDim2.new(0, 0, 0.165000007, 0)
SpinBotText.Size = UDim2.new(0, 429, 0, 50)
SpinBotText.Font = Enum.Font.SourceSans
SpinBotText.Text = "Spin Bot"
SpinBotText.TextColor3 = Color3.fromRGB(0, 0, 0)
SpinBotText.TextScaled = true
SpinBotText.TextSize = 38.000
SpinBotText.TextWrapped = true

SpinBotButton.Name = "SpinBotButton"
SpinBotButton.Parent = SpinBotText
SpinBotButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpinBotButton.BackgroundTransparency = 1.000
SpinBotButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpinBotButton.BorderSizePixel = 0
SpinBotButton.Position = UDim2.new(0.771111131, 0, 0, 0)
SpinBotButton.Size = UDim2.new(0, 153, 0, 50)
SpinBotButton.Font = Enum.Font.SourceSans
SpinBotButton.Text = "Enable"
SpinBotButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SpinBotButton.TextScaled = true
SpinBotButton.TextSize = 14.000
SpinBotButton.TextWrapped = true

EnableAllSkinsText.Name = "EnableAllSkinsText"
EnableAllSkinsText.Parent = ScrollingFrame
EnableAllSkinsText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnableAllSkinsText.BackgroundTransparency = 1.000
EnableAllSkinsText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableAllSkinsText.BorderSizePixel = 0
EnableAllSkinsText.Position = UDim2.new(0, 0, 0.165000007, 0)
EnableAllSkinsText.Size = UDim2.new(0, 429, 0, 50)
EnableAllSkinsText.Font = Enum.Font.SourceSans
EnableAllSkinsText.Text = "Skins"
EnableAllSkinsText.TextColor3 = Color3.fromRGB(0, 0, 0)
EnableAllSkinsText.TextScaled = true
EnableAllSkinsText.TextSize = 38.000
EnableAllSkinsText.TextWrapped = true

EnableAllSkinsButton.Name = "EnableAllSkinsButton"
EnableAllSkinsButton.Parent = EnableAllSkinsText
EnableAllSkinsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EnableAllSkinsButton.BackgroundTransparency = 1.000
EnableAllSkinsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableAllSkinsButton.BorderSizePixel = 0
EnableAllSkinsButton.Position = UDim2.new(0.771111131, 0, 0, 0)
EnableAllSkinsButton.Size = UDim2.new(0, 153, 0, 50)
EnableAllSkinsButton.Font = Enum.Font.SourceSans
EnableAllSkinsButton.Text = "Enable"
EnableAllSkinsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
EnableAllSkinsButton.TextScaled = true
EnableAllSkinsButton.TextSize = 14.000
EnableAllSkinsButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 500, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Arsenal RageCheat By 0xKaliEnjoyer"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 37.000

UICorner_2.Parent = TextLabel
local OriginalFireRate = {}
local OriginalSpread = {}

if AC then
    print("AC Found")
    AC.Disabled = true
        
    for i,v in pairs(Weapons:GetChildren()) do
        for ii,vv in pairs(v:GetChildren()) do
                if vv.Name == "FireRate" then
                    OriginalFireRate = vv.Value
                    if RapidFireButton.Text == "Enable" then
                        vv.Value = 0.001
                    else
                        vv.Value = OriginalFireRate
                    end
                end

                if vv.Name == "Ammo" then

                end

                if vv.Name == "Auto" then
                    vv.Value = true
                end

                if vv.Name == "Range" then 
                    vv.Value = 1000
                end

                if vv.Name == "RecoilControl" then 
                    vv.Value = 0
                end

                if vv.Name == "DMG" then 
                    vv.Value = 999
                end

                if vv.Name == "Tags" then 
                    for iii,vvv in pairs(vv:GetChildren()) do
                        if vvv.Name == "WeaponType" then
                            vvv.Value = "Automatic"
                        end
                    end
                end
        end
    end
else
    game.Players.LocalPlayer:kick("AC Not Found")
end

while wait() do
    if EspButton.Text == "Enable" then
        for am, pl in pairs(_wspace:GetChildren()) do
            if pl:IsA("Model") and pl:FindFirstChild("Humanoid") then
                        if pl.Name == _lPlayer.Name then 
                            _localPlayerTeamColor = pl:GetAttribute("TeamColor")
                        else
                            
                            _OtherPlayersTeamColor = pl:GetAttribute("TeamColor")
                        end
                        if _localPlayerTeamColor == _OtherPlayersTeamColor then
                        else
                            for i,v in pairs(pl) do 
                                if v:IsA("Highlight") and v.Name == "0ex" then 
                                else
                                    local Highlight = Instance.new("Highlight")
                                    Highlight.name = "0ex"
                                    Highlight.Parent = pl
                                    Highlight.FillTransparency = 1
                                    Highlight.OutlineColor = Color3.new(255, 255, 255)
                                end 
                            end
                        end
            end
        end

    else
        for am, pl in pairs(_wspace:GetChildren()) do
            if pl:IsA("Model") and pl:FindFirstChild("Humanoid") then
                        if pl.Name == _lPlayer.Name then 
                            _localPlayerTeamColor = pl:GetAttribute("TeamColor")
                        else
                            
                            _OtherPlayersTeamColor = pl:GetAttribute("TeamColor")
                        end
                        if _localPlayerTeamColor == _OtherPlayersTeamColor then
                        else
                            for i,v in pairs(pl) do 
                                if v:IsA("Highlight") and v.Name == "0ex" then 
                                    v:Destroy()
                                end 
                            end
                        end
            end
    end
end


EspButton.MouseButton1Down:Connect(function()
	if EspButton.Text == "Enable" then
		EspButton.Text = "Disable"
		
	else
		EspButton.Text = "Enable"
	end
end)

NoSpreadButton.MouseButton1Down:Connect(function()
	if NoSpreadButton.Text == "Enable" then
		NoSpreadButton.Text = "Disable"
		
	else
		NoSpreadButton.Text = "Enable"
	end
end)

RapidFireButton.MouseButton1Down:Connect(function()
	if RapidFireButton.Text == "Enable" then
		RapidFireButton.Text = "Disable"
		
	else
		RapidFireButton.Text = "Enable"
	end
end)

HitBoxExpanderButton.MouseButton1Down:Connect(function()
	if HitBoxExpanderButton.Text == "Enable" then
		HitBoxExpanderButton.Text = "Disable"
	else
		HitBoxExpanderButton.Text = "Enable"
	end
end)

FlyButton.MouseButton1Down:Connect(function()
	if FlyButton.Text == "Enable" then
		FlyButton.Text = "Disable"
	else
		FlyButton.Text = "Enable"
	end
end)

SpinBotButton.MouseButton1Down:Connect(function()
	if SpinBotButton.Text == "Enable" then
		SpinBotButton.Text = "Disable"
	else
		SpinBotButton.Text = "Enable"
	end
end)

EnableAllSkinsButton.MouseButton1Down:Connect(function()
	if EnableAllSkinsButton.Text == "Enable" then
		EnableAllSkinsButton.Text = "Disable"
	else
		EnableAllSkinsButton.Text = "Enable"
	end
end)
