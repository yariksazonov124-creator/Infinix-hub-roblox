local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("InfinixHub") then
    PlayerGui.InfinixHub:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "InfinixHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 350, 0, 250)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BackgroundTransparency = 1
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = MainFrame

local UIStroke = Instance.New("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 0, 0)
UIStroke.Thickness = 2
UIStroke.Transparency = 1
UIStroke.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -50, 0, 40)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Infinix Hub - Music Player"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.SourceSansBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextTransparency = 1
Title.Parent = MainFrame

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 35, 0, 35)
CloseButton.Position = UDim2.new(1, -40, 0, 5)
CloseButton.BackgroundTransparency = 1
CloseButton.Text = "✕"
CloseButton.TextColor3 = Color3.fromRGB(255, 75, 75)
CloseButton.TextSize = 22
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextTransparency = 1
CloseButton.Parent = MainFrame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 280, 0, 40)
TextBox.Position = UDim2.new(0.5, -140, 0, 60)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox.BackgroundTransparency = 1
TextBox.PlaceholderText = "Enter Audio ID or URL here..."
TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 16
TextBox.Font = Enum.Font.SourceSans
TextBox.TextTransparency = 1
TextBox.Parent = MainFrame

local TextCorner = Instance.new("UICorner")
TextCorner.CornerRadius = UDim.new(0, 8)
TextCorner.Parent = TextBox

local PlayButton = Instance.new("TextButton")
PlayButton.Size = UDim2.new(0, 90, 0, 45)
PlayButton.Position = UDim2.new(0.5, -140, 0, 120)
PlayButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
PlayButton.BackgroundTransparency = 1
PlayButton.Text = "▶"
PlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.TextSize = 24
PlayButton.Font = Enum.Font.SourceSansBold
PlayButton.TextTransparency = 1
PlayButton.Parent = MainFrame

local PlayCorner = Instance.new("UICorner")
PlayCorner.CornerRadius = UDim.new(0, 12)
PlayCorner.Parent = PlayButton

local PauseButton = Instance.new("TextButton")
PauseButton.Size = UDim2.new(0, 90, 0, 45)
PauseButton.Position = UDim2.new(0.5, -45, 0, 120)
PauseButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
PauseButton.BackgroundTransparency = 1
PauseButton.Text = "⏸"
PauseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PauseButton.TextSize = 20
PauseButton.Font = Enum.Font.SourceSansBold
PauseButton.TextTransparency = 1
PauseButton.Parent = MainFrame

local PauseCorner = Instance.new("UICorner")
PauseCorner.CornerRadius = UDim.new(0, 12)
PauseCorner.Parent = PauseButton

local StopButton = Instance.new("TextButton")
StopButton.Size = UDim2.new(0, 90, 0, 45)
StopButton.Position = UDim2.new(0.5, 50, 0, 120)
StopButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
StopButton.BackgroundTransparency = 1
StopButton.Text = "■"
StopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
StopButton.TextSize = 24
StopButton.Font = Enum.Font.SourceSansBold
StopButton.TextTransparency = 1
StopButton.Parent = MainFrame

local StopCorner = Instance.new("UICorner")
StopCorner.CornerRadius = UDim.new(0, 12)
StopCorner.Parent = StopButton

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, 0, 0, 30)
StatusLabel.Position = UDim2.new(0, 0, 0, 185)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Status: Idle"
StatusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
StatusLabel.TextSize = 16
StatusLabel.Font = Enum.Font.SourceSansItalic
StatusLabel.TextTransparency = 1
StatusLabel.Parent = MainFrame

local Credits = Instance.new("TextLabel")
Credits.Size = UDim2.new(1, 0, 0, 20)
Credits.Position = UDim2.new(0, 0, 1, -25)
Credits.BackgroundTransparency = 1
Credits.Text = "Created by yariksazonov124"
Credits.TextColor3 = Color3.fromRGB(100, 100, 100)
Credits.TextSize = 12
Credits.Font = Enum.Font.SourceSans
Credits.TextTransparency = 1
Credits.Parent = MainFrame

local OpenButton = Instance.new("TextButton")
OpenButton.Size = UDim2.new(0, 80, 0, 40)
OpenButton.Position = UDim2.new(0, 10, 0.5, -20)
OpenButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OpenButton.Text = "Infinix"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextSize = 16
OpenButton.Font = Enum.Font.SourceSansBold
OpenButton.Visible = false
OpenButton.Parent = ScreenGui

local OpenCorner = Instance.new("UICorner")
OpenCorner.CornerRadius = UDim.new(0, 10)
OpenCorner.Parent = OpenButton

local OpenStroke = Instance.new("UIStroke")
OpenStroke.Color = Color3.fromRGB(255, 0, 0)
OpenStroke.Thickness = 2
OpenStroke.Parent = OpenButton

local function fadeIn()
    local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
    TweenService:Create(MainFrame, tweenInfo, {BackgroundTransparency = 0}):Play()
    TweenService:Create(UIStroke, tweenInfo, {Transparency = 0}):Play()
    TweenService:Create(Title, tweenInfo, {TextTransparency = 0}):Play()
    TweenService:Create(CloseButton, tweenInfo, {TextTransparency = 0}):Play()
    TweenService:Create(TextBox, tweenInfo, {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    TweenService:Create(PlayButton, tweenInfo, {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    TweenService:Create(PauseButton, tweenInfo, {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    TweenService:Create(StopButton, tweenInfo, {BackgroundTransparency = 0, TextTransparency = 0}):Play()
    TweenService:Create(StatusLabel, tweenInfo, {TextTransparency = 0}):Play()
    TweenService:Create(Credits, tweenInfo, {TextTransparency = 0}):Play()
end

fadeIn()

local currentSound = nil
local currentID = nil

local function cleanID(text)
    local id = text:match("asset/%?id=(%d+)") or text:match("library/(%d+)") or text:match("(%d+)")
    return id
end

PlayButton.MouseButton1Click:Connect(function()
    local input = TextBox.Text
    local audioID = cleanID(input)
    
    if audioID then
        if currentSound and currentID == audioID then
            if not currentSound.IsPlaying then
                currentSound:Resume()
                StatusLabel.Text = "Status: Playing ID " .. audioID
                StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
            end
        else
            if currentSound then
                currentSound:Destroy()
            end
            
            currentID = audioID
            currentSound = Instance.new("Sound")
            currentSound.SoundId = "rbxassetid://" .. audioID
            currentSound.Volume = 1
            currentSound.Looped = true
            currentSound.Parent = workspace
            currentSound:Play()
            
            StatusLabel.Text = "Status: Playing ID " .. audioID
            StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
        end
    else
        StatusLabel.Text = "Status: Invalid ID/Link!"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
end)

PauseButton.MouseButton1Click:Connect(function()
    if currentSound and currentSound.IsPlaying then
        currentSound:Pause()
        StatusLabel.Text = "Status: Paused"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
    end
end)

StopButton.MouseButton1Click:Connect(function()
    if currentSound then
        currentSound:Destroy()
        currentSound = nil
        currentID = nil
        StatusLabel.Text = "Status: Stopped"
        StatusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
    else
        StatusLabel.Text = "Status: No active music"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 165, 0)
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    local closeTweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
    
    TweenService:Create(MainFrame, closeTweenInfo, {BackgroundTransparency = 1}):Play()
    TweenService:Create(UIStroke, closeTweenInfo, {Transparency = 1}):Play()
    TweenService:Create(Title, closeTweenInfo, {TextTransparency = 1}):Play()
    TweenService:Create(CloseButton, closeTweenInfo, {TextTransparency = 1}):Play()
    TweenService:Create(TextBox, closeTweenInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
    TweenService:Create(PlayButton, closeTweenInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
    TweenService:Create(PauseButton, closeTweenInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
    TweenService:Create(StopButton, closeTweenInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
    TweenService:Create(StatusLabel, closeTweenInfo, {TextTransparency = 1}):Play()
    local lastTween = TweenService:Create(Credits, closeTweenInfo, {TextTransparency = 1})
    
    lastTween:Play()
    lastTween.Completed:Connect(function()
        MainFrame.Visible = false
        OpenButton.Visible = true
    end)
end)

OpenButton.MouseButton1Click:Connect(function()
    OpenButton.Visible = false
    MainFrame.Visible = true
    fadeIn()
end)

local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos