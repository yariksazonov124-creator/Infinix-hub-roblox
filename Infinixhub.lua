if game:GetService("CoreGui"):FindFirstChild("InfinixHub") then
    game:GetService("CoreGui").InfinixHub:Destroy()
end

local InfinixHub = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local idInput = Instance.new("TextBox")
local playButton = Instance.new("TextButton")
local pauseButton = Instance.new("TextButton")
local closeButton = Instance.new("TextButton")
local openButton = Instance.new("TextButton")

InfinixHub.Name = "InfinixHub"
InfinixHub.Parent = game:GetService("CoreGui")
InfinixHub.ResetOnSpawn = false

mainFrame.Name = "mainFrame"
mainFrame.Parent = InfinixHub
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.Position = UDim2.new(0.4, 0, 0.4, 0)
mainFrame.Size = UDim2.new(0, 250, 0, 210)
mainFrame.Active = true
mainFrame.Draggable = true

title.Name = "title"
title.Parent = mainFrame
title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
title.Size = UDim2.new(1, 0, 0, 30)
title.Font = Enum.Font.SourceSansBold
title.Text = "Infinix Hub - Player"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18

idInput.Name = "idInput"
idInput.Parent = mainFrame
idInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
idInput.Position = UDim2.new(0.05, 0, 0.2, 0)
idInput.Size = UDim2.new(0.9, 0, 0, 30)
idInput.Font = Enum.Font.SourceSans
idInput.PlaceholderText = "Введите ID музыки..."
idInput.Text = ""
idInput.TextColor3 = Color3.fromRGB(255, 255, 255)
idInput.TextSize = 16

playButton.Name = "playButton"
playButton.Parent = mainFrame
playButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
playButton.Position = UDim2.new(0.05, 0, 0.4, 0)
playButton.Size = UDim2.new(0.9, 0, 0, 30)
playButton.Font = Enum.Font.SourceSansBold
playButton.Text = "ИГРАТЬ"
playButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playButton.TextSize = 16

pauseButton.Name = "pauseButton"
pauseButton.Parent = mainFrame
pauseButton.BackgroundColor3 = Color3.fromRGB(180, 130, 0)
pauseButton.Position = UDim2.new(0.05, 0, 0.6, 0)
pauseButton.Size = UDim2.new(0.9, 0, 0, 30)
pauseButton.Font = Enum.Font.SourceSansBold
pauseButton.Text = "ПАУЗА"
pauseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
pauseButton.TextSize = 16

closeButton.Name = "closeButton"
closeButton.Parent = mainFrame
closeButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
closeButton.Position = UDim2.new(0.05, 0, 0.8, 0)
closeButton.Size = UDim2.new(0.9, 0, 0, 30)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "ЗАКРЫТЬ МЕНЮ"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 16

openButton.Name = "openButton"
openButton.Parent = InfinixHub
openButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
openButton.Position = UDim2.new(0.02, 0, 0.2, 0)
openButton.Size = UDim2.new(0, 80, 0, 30)
openButton.Font = Enum.Font.SourceSansBold
openButton.Text = "ОТКРЫТЬ"
openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
openButton.TextSize = 14
openButton.Visible = false
openButton.Active = true
openButton.Draggable = true

local SoundService = game:GetService("SoundService")
local currentSound = nil

local function getCleanId(text)
    return text:match("%d+")
end

playButton.MouseButton1Click:Connect(function()
    local cleanId = getCleanId(idInput.Text)
    if cleanId then
        if currentSound then
            currentSound:Destroy()
        end
        
        currentSound = Instance.new("Sound")
        currentSound.SoundId = "rbxassetid://" .. cleanId
        currentSound.Volume = 1
        currentSound.Looped = true
        currentSound.Parent = SoundService
        currentSound:Play()
        
        pauseButton.Text = "ПАУЗА"
    end
end)

pauseButton.MouseButton1Click:Connect(function()
    if currentSound then
        if currentSound.IsPlaying then
            currentSound:Pause()
            pauseButton.Text = "ПРОДОЛЖИТЬ"
        else
            currentSound:Resume()
            pauseButton.Text = "ПАУЗА"
        end
    end
end)

closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    openButton.Visible = true
end)

openButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = true
    openButton.Visible = false
end)