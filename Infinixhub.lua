local function createInfinixGui()
    local coreGui = game:GetService("CoreGui")
    local existingGui = coreGui:FindFirstChild("InfinixGuiScreen")
    if existingGui then
        existingGui:Destroy()
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "InfinixGuiScreen"
    screenGui.Parent = coreGui

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 250, 0, 180)
    mainFrame.Position = UDim2.new(0.5, -125, 0.4, -90)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = mainFrame

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Size = UDim2.new(1, -40, 0, 40)
    titleLabel.Position = UDim2.new(0, 10, 0, 0)
    titleLabel.Text = "Infinix gui"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 18
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = mainFrame

    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.Text = "✕"
    closeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
    closeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    closeButton.BorderSizePixel = 0
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.TextSize = 14
    closeButton.Parent = mainFrame

    local closeCorner = Instance.new("UICorner")
    closeCorner.CornerRadius = UDim.new(0, 6)
    closeCorner.Parent = closeButton

    local idTextBox = Instance.new("TextBox")
    idTextBox.Name = "IdTextBox"
    idTextBox.Size = UDim2.new(0.8, 0, 0, 35)
    idTextBox.Position = UDim2.new(0.1, 0, 0.25, 0)
    idTextBox.PlaceholderText = "Введите ID музыки..."
    idTextBox.Text = ""
    idTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    idTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    idTextBox.BorderSizePixel = 0
    idTextBox.Font = Enum.Font.SourceSans
    idTextBox.TextSize = 14
    idTextBox.Parent = mainFrame

    local boxCorner = Instance.new("UICorner")
    boxCorner.CornerRadius = UDim.new(0, 4)
    boxCorner.Parent = idTextBox

    local playButton = Instance.new("TextButton")
    playButton.Name = "PlayButton"
    playButton.Size = UDim2.new(0.35, 0, 0, 35)
    playButton.Position = UDim2.new(0.1, 0, 0.55, 0)
    playButton.Text = "Play"
    playButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    playButton.BackgroundColor3 = Color3.fromRGB(0, 150, 70)
    playButton.BorderSizePixel = 0
    playButton.Font = Enum.Font.SourceSansBold
    playButton.TextSize = 16
    playButton.Parent = mainFrame

    local playCorner = Instance.new("UICorner")
    playCorner.CornerRadius = UDim.new(0, 4)
    playCorner.Parent = playButton

    local stopButton = Instance.new("TextButton")
    stopButton.Name = "StopButton"
    stopButton.Size = UDim2.new(0.35, 0, 0, 35)
    stopButton.Position = UDim2.new(0.55, 0, 0.55, 0)
    stopButton.Text = "Stop"
    stopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    stopButton.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
    stopButton.BorderSizePixel = 0
    stopButton.Font = Enum.Font.SourceSansBold
    stopButton.TextSize = 16
    stopButton.Parent = mainFrame

    local stopCorner = Instance.new("UICorner")
    stopCorner.CornerRadius = UDim.new(0, 4)
    stopCorner.Parent = stopButton

    local openButton = Instance.new("TextButton")
    openButton.Name = "OpenButton"
    openButton.Size = UDim2.new(0, 50, 0, 50)
    openButton.Position = UDim2.new(0, 20, 0.5, -25)
    openButton.Text = "Infinix"
    openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    openButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    openButton.BorderSizePixel = 0
    openButton.Font = Enum.Font.SourceSansBold
    openButton.TextSize = 12
    openButton.Visible = false
    openButton.Active = true
    openButton.Draggable = true
    openButton.Parent = screenGui

    local openCorner = Instance.new("UICorner")
    openCorner.CornerRadius = UDim.new(0, 10)
    openCorner.Parent = openButton

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 2
    stroke.Color = Color3.fromRGB(255, 0, 0)
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = openButton

    local soundService = game:GetService("SoundService")

    local function getCleanId(text)
        local numId = text:match("%d+")
        if numId then
            return "rbxassetid://" .. numId
        end
        return nil
    end

    closeButton.MouseButton1Click:Connect(function()
        mainFrame.Visible = false
        openButton.Visible = true
    end)

    openButton.MouseButton1Click:Connect(function()
        openButton.Visible = false
        mainFrame.Visible = true
    end)

    playButton.MouseButton1Click:Connect(function()
        local inputId = getCleanId(idTextBox.Text)
        if not inputId then return end

        local existingSound = soundService:FindFirstChild("CustomBackgroundMusic")
        if existingSound then
            existingSound:Destroy()
        end

        local sound = Instance.new("Sound")
        sound.Name = "CustomBackgroundMusic"
        sound.SoundId = inputId
        sound.Volume = 1
        sound.Looped = true
        sound.Parent = soundService

        if not sound.IsLoaded then
            sound.Loaded:Wait()
        end

        sound:Play()
    end)

    stopButton.MouseButton1Click:Connect(function()
        local existingSound = soundService:FindFirstChild("CustomBackgroundMusic")
        if existingSound then
            existingSound:Stop()
        end
    end)
end

createInfinixGui()
