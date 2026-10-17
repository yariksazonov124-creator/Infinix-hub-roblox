local P,T,U=game:GetService("Players"),game:GetService("TweenService"),game:GetService("UserInputService")
local LP=P.LocalPlayer local PG=LP:WaitForChild("PlayerGui")
if PG:FindFirstChild("InfinixHub") then PG.InfinixHub:Destroy() end
local SG,MF=Instance.new("ScreenGui"),Instance.new("Frame")
SG.Name,SG.ResetOnSpawn,SG.Parent="InfinixHub",false,PG
MF.Size,MF.Position,MF.BackgroundColor3,MF.BackgroundTransparency,MF.BorderSizePixel,MF.Parent=UDim2.new(0,350,0,290),UDim2.new(0.5,-175,0.5,-145),Color3.fromRGB(25,25,25),1,0,SG
local C,S=Instance.new("UICorner"),Instance.new("UIStroke")
C.CornerRadius,C.Parent=UDim.new(0,16),MF S.Color,S.Thickness,S.Transparency,S.Parent=Color3.fromRGB(255,0,0),2,1,MF
local Tl,CB=Instance.new("TextLabel"),Instance.new("TextButton")
Tl.Size,Tl.Position,Tl.BackgroundTransparency,Tl.Text,Tl.TextColor3,Tl.TextSize,Tl.Font,Tl.TextXAlignment,Tl.TextTransparency,Tl.Parent=UDim2.new(1,-50,0,40),UDim2.new(0,15,0,0),1,"Infinix Hub - Music Player",Color3.fromRGB(255,255,255),20,Enum.Font.SourceSansBold,Enum.TextXAlignment.Left,1,MF
CB.Size,CB.Position,CB.BackgroundTransparency,CB.Text,CB.TextColor3,CB.TextSize,CB.Font,CB.TextTransparency,CB.Parent=UDim2.new(0,35,0,35),UDim2.new(1,-40,0,5),1,"✕",Color3.fromRGB(255,75,75),22,Enum.Font.SourceSansBold,1,MF
local TB=Instance.new("TextBox")
TB.Size,TB.Position,TB.BackgroundColor3,TB.BackgroundTransparency,TB.PlaceholderText,TB.PlaceholderColor3,TB.Text,TB.TextColor3,TB.TextSize,TB.Font,TB.TextTransparency,TB.Parent=UDim2.new(0,280,0,40),UDim2.new(0.5,-140,0,60),Color3.fromRGB(40,40,40),1,"Enter Audio ID or URL here...",Color3.fromRGB(150,150,150),"",Color3.fromRGB(255,255,255),16,Enum.Font.SourceSans,1,MF
local TC=Instance.new("UICorner") TC.CornerRadius,TC.Parent=UDim.new(0,8),TB
local BTN1,BTN2,BTN3=Instance.new("TextButton"),Instance.new("TextButton"),Instance.new("TextButton")
BTN1.Size,BTN1.Position,BTN1.BackgroundColor3,BTN1.BackgroundTransparency,BTN1.Text,BTN1.TextColor3,BTN1.TextSize,BTN1.Font,BTN1.TextTransparency,BTN1.Parent=UDim2.new(0,90,0,45),UDim2.new(0.5,-140,0,115),Color3.fromRGB(35,35,35),1,"▶",Color3.fromRGB(255,255,255),24,Enum.Font.SourceSansBold,1,MF
BTN2.Size,BTN2.Position,BTN2.BackgroundColor3,BTN2.BackgroundTransparency,BTN2.Text,BTN2.TextColor3,BTN2.TextSize,BTN2.Font,BTN2.TextTransparency,BTN2.Parent=UDim2.new(0,90,0,45),UDim2.new(0.5,-45,0,115),Color3.fromRGB(35,35,35),1,"⏸",Color3.fromRGB(255,255,255),20,Enum.Font.SourceSansBold,1,MF
BTN3.Size,BTN3.Position,BTN3.BackgroundColor3,BTN3.BackgroundTransparency,BTN3.Text,BTN3.TextColor3,BTN3.TextSize,BTN3.Font,BTN3.TextTransparency,BTN3.Parent=UDim2.new(0,90,0,45),UDim2.new(0.5,50,0,115),Color3.fromRGB(35,35,35),1,"■",Color3.fromRGB(255,255,255),24,Enum.Font.SourceSansBold,1,MF
local C1,C2,C3=Instance.new("UICorner"),Instance.new("UICorner"),Instance.new("UICorner")
C1.CornerRadius,C1.Parent=UDim.new(0,12),BTN1 C2.CornerRadius,C2.Parent=UDim.new(0,12),BTN2 C3.CornerRadius,C3.Parent=UDim.new(0,12),BTN3
local SF,SB,VL=Instance.new("Frame"),Instance.new("TextButton"),Instance.new("TextLabel")
SF.Size,SF.Position,SF.BackgroundColor3,SF.BackgroundTransparency,SF.BorderSizePixel,SF.Parent=UDim2.new(0,200,0,6),UDim2.new(0.5,-60,0,185),Color3.fromRGB(60,60,60),1,0,MF
local SC=Instance.new("UICorner") SC.CornerRadius,SC.Parent=UDim.new(0,3),SF
SB.Size,SB.Position,SB.BackgroundColor3,SB.BackgroundTransparency,SB.Text,SB.Parent=UDim2.new(0,16,0,16),UDim2.new(0.5,-8,0.5,-8),Color3.fromRGB(255,0,0),1,"",SF
local SBC=Instance.new("UICorner") SBC.CornerRadius,SBC.Parent=UDim.new(1,0),SB
VL.Size,VL.Position,VL.BackgroundTransparency,VL.Text,VL.TextColor3,VL.TextSize,VL.Font,VL.TextXAlignment,VL.TextTransparency,VL.Parent=UDim2.new(0,80,0,20),UDim2.new(0.5,-145,0,178),1,"Vol: 50%",Color3.fromRGB(200,200,200),14,Enum.Font.SourceSansBold,Enum.TextXAlignment.Left,1,MF
local SL,CR=Instance.new("TextLabel"),Instance.new("TextLabel")
SL.Size,SL.Position,SL.BackgroundTransparency,SL.Text,SL.TextColor3,SL.TextSize,SL.Font,SL.TextTransparency,SL.Parent=UDim2.new(1,0,0,30),UDim2.new(0,0,0,220),1,"Status: Idle",Color3.fromRGB(180,180,180),16,Enum.Font.SourceSansItalic,1,MF
CR.Size,CR.Position,CR.BackgroundTransparency,CR.Text,CR.TextColor3,CR.TextSize,CR.Font,CR.TextTransparency,CR.Parent=UDim2.new(1,0,0,20),UDim2.new(0,0,1,-25),1,"Created by yariksazonov124",Color3.fromRGB(100,100,100),12,Enum.Font.SourceSans,1,MF
local OB,OBC,OBS=Instance.new("TextButton"),Instance.new("UICorner"),Instance.new("UIStroke")
OB.Size,OB.Position,OB.BackgroundColor3,OB.Text,OB.TextColor3,OB.TextSize,OB.Font,OB.Visible,OB.Parent=UDim2.new(0,80,0,40),UDim2.new(0,10,0.5,-20),Color3.fromRGB(25,25,25),"Infinix",Color3.fromRGB(255,255,255),16,Enum.Font.SourceSansBold,false,SG
OBC.CornerRadius,OBC.Parent=UDim.new(0,10),OB OBS.Color,OBS.Thickness,OBS.Parent=Color3.fromRGB(255,0,0),2,OB
local cv,cs,cid=0.5,nil,nil
local function fadeIn()
    local inf = TweenInfo.new(0.6,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)
    T:Create(MF,inf,{BackgroundTransparency=0}):Play() T:Create(S,inf,{Transparency=0}):Play() T:Create(Tl,inf,{TextTransparency=0}):Play()
    T:Create(CB,inf,{TextTransparency=0}):Play() T:Create(TB,inf,{BackgroundTransparency=0,TextTransparency=0}):Play()
    T:Create(BTN1,inf,{BackgroundTransparency=0,TextTransparency=0}):Play() T:Create(BTN2,inf,{BackgroundTransparency=0,TextTransparency=0}):Play()
    T:Create(BTN3,inf,{BackgroundTransparency=0,TextTransparency=0}):Play() T:Create(SF,inf,{BackgroundTransparency=0}):Play()
    T:Create(SB,inf,{BackgroundTransparency=0}):Play() T:Create(VL,inf,{TextTransparency=0}):Play() T:Create(SL,inf,{TextTransparency=0}):Play()
    T:Create(CR,inf,{TextTransparency=0}):Play()
end
fadeIn()
BTN1.MouseButton1Click:Connect(function()
    local id = TB.Text:match("id=(%d+)") or TB.Text:match("library/(%d+)") or TB.Text:match("(%d+)")
    if id then
        if cs and cid==id then if not cs.IsPlaying then cs:Resume() SL.Text="Status: Playing ID "..id SL.TextColor3=Color3.fromRGB(0,255,128) end
        else if cs then cs:Stop() cs:Destroy() end cid=id
            local s=Instance.new("Sound") s.SoundId,s.Volume,s.Looped,s.Parent="rbxassetid://"..id,cv,true,workspace
            cs=s cs:Play() SL.Text="Status: Playing ID "..id SL.TextColor3=Color3.fromRGB(0,255,128) end
    else SL.Text,SL.TextColor3="Status: Invalid ID/Link!",Color3.fromRGB(255,100,100) end
end)
BTN2.MouseButton1Click:Connect(function() if cs and cs.IsPlaying then cs:Pause() SL.Text,SL.TextColor3="Status: Paused",Color3.fromRGB(255,200,0) end end)
BTN3.MouseButton1Click:Connect(function() if cs then cs:Stop() cs:Destroy() cs,cid=nil,nil SL.Text,SL.TextColor3="Status: Stopped",Color3.fromRGB(180,180,180) else SL.Text,SL.TextColor3="Status: No active music",Color3.fromRGB(255,165,0) end end)
local sliding = false
local function updown(input)
    local minX,maxX=SF.AbsolutePosition.X,SF.AbsolutePosition.X+SF.AbsoluteSize.X
    local pct=math.clamp((input.Position.X-minX)/(maxX-minX),0,1) cv=pct
    SB.Position=UDim2.new(pct,-8,0.5,-8) VL.Text="Vol: "..math.round(pct*100).."%" if cs then cs.Volume=cv end
end
SB.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then sliding=true end end)
U.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then sliding=false end end)
U.InputChanged:Connect(function(i) if sliding and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then updown(i) end end)
CB.MouseButton1Click:Connect(function()
    local inf=TweenInfo.new(0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.In)
    T:Create(MF,inf,{BackgroundTransparency=1}):Play() T:Create(S,inf,{Transparency=1}):Play() T:Create(Tl,inf,{TextTransparency=1}):Play()
    T:Create(CB,inf,{TextTransparency=1}):Play() T:Create(TB,inf,{BackgroundTransparency=1,TextTransparency=1}):Play()
    T:Create(BTN1,inf,{BackgroundTransparency=1,TextTransparency=1}):Play() T:Create(BTN2,inf,{BackgroundTransparency=1,TextTransparency=1}):Play()
    T:Create(BTN3,inf,{BackgroundTransparency=1,TextTransparency=1}):Play() T:Create(SF,inf,{BackgroundTransparency=1}):Play()
    T:Create(SB,inf,{BackgroundTransparency=1}):Play() T:Create(VL,inf,{TextTransparency=1}):Play() T:Create(SL,inf,{TextTransparency=1}):Play()
    local lt=T:Create(CR,inf,{TextTransparency=1}) lt:Play() lt.Completed:Connect(function() MF.Visible,OB.Visible=false,true end)
end)
OB.MouseButton1Click:Connect(function() OB.Visible,MF.Visible=false,true fadeIn() end)
local drag,dInput,dStart,sPos
MF.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        drag,dStart,sPos=true,i.Position,MF.Position
        i.Changed:Connect(function() if i.UserInputState==Enum.UserInputState.End then drag=false end end)
    end
end)
MF.InputChanged:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then dInput=i end end)
U.InputChanged:Connect(function(i)
    if i==dInput and drag then local d=i.Position-dStart MF.Position=UDim2.new(sPos.X.Scale,sPos.X.Offset+d.X,sPos.Y.Scale,sPos.Y.Offset+d.Y) end
end)