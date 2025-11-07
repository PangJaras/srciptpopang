local group1 = _G.Name1 or {}
local group2 = _G.Name2 or {}
local group3 = _G.Name3 or {}
local group4 = _G.Name4 or {}
local group5 = _G.Name5 or {}


local groupNames = {"1", "2", "3", "4", "5"}

local playerName = game.Players.LocalPlayer.Name
local playerGroup = nil
local groupNumber = 0

local function isInGroup(username, group)
    for _, name in pairs(group) do
        if string.lower(username) == string.lower(name) then
            return true
        end
    end
    return false
end

local function createGroupUI(groupName, groupNum)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "GroupDisplayUI"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 150, 0, 70)
    mainFrame.Position = UDim2.new(0.5, -30, 0, 10)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BackgroundTransparency = 0.2
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 8)
    uiCorner.Parent = mainFrame
    
    local uiStrokeOuter = Instance.new("UIStroke")
    uiStrokeOuter.Thickness = 7
    uiStrokeOuter.Transparency = 0.1
    uiStrokeOuter.Parent = mainFrame
    
    local uiStrokeInner = Instance.new("UIStroke")
    uiStrokeInner.Thickness = 2
    uiStrokeInner.Transparency = 0
    uiStrokeInner.Parent = mainFrame
    
    local groupLabel = Instance.new("TextLabel")
    groupLabel.Name = "GroupLabel"
    groupLabel.Size = UDim2.new(1, 0, 0, 25)
    groupLabel.Position = UDim2.new(0, 0, 0, 5)
    groupLabel.BackgroundTransparency = 1
    groupLabel.Text = "GROUP"
    groupLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    groupLabel.Font = Enum.Font.GothamBold
    groupLabel.TextSize = 14
    groupLabel.Parent = mainFrame
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Name = "NameLabel"
    nameLabel.Size = UDim2.new(1, 0, 0, 30)
    nameLabel.Position = UDim2.new(0, 0, 0, 25)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = groupName
    nameLabel.TextColor3 = groupNum == 1 and Color3.fromRGB(255, 215, 0)
        or groupNum == 2 and Color3.fromRGB(0, 191, 255)
        or groupNum == 3 and Color3.fromRGB(255, 26, 0)
        or groupNum == 4 and Color3.fromRGB(0, 191, 255)
        or Color3.fromRGB(0, 255, 153)
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 18
    nameLabel.Parent = mainFrame

    -- แอนิเมชันสีรุ้ง
    task.spawn(function()
        local hue = 0
        while true do
            hue = (hue + 0.02) % 1
            local color = Color3.fromHSV(hue, 1, 1)
            uiStrokeInner.Color = color
            uiStrokeOuter.Color = color
            task.wait(0.05)
        end
    end)
end

local scripts = _G.scriptlua1 or {}

if isInGroup(playerName, group1) then
    playerGroup, groupNumber = groupNames[1], 1
    loadstring(game:HttpGet(scripts[1]))()

elseif isInGroup(playerName, group2) then
    playerGroup, groupNumber = groupNames[2], 2
    loadstring(game:HttpGet(scripts[2]))()

elseif isInGroup(playerName, group3) then
    playerGroup, groupNumber = groupNames[3], 3
    loadstring(game:HttpGet(scripts[3]))()

elseif isInGroup(playerName, group4) then
    playerGroup, groupNumber = groupNames[4], 4
    loadstring(game:HttpGet(scripts[4]))()

elseif isInGroup(playerName, group5) then
    playerGroup, groupNumber = groupNames[5], 5
    loadstring(game:HttpGet(scripts[5]))()

else
    game.Players.LocalPlayer:Kick("คุณไม่ได้รับอนุญาตให้ใช้สคริปต์นี้")
    return
end

createGroupUI(playerGroup, groupNumber)
print("✅ สคริปต์สำหรับกลุ่ม " .. playerGroup .. " เริ่มทำงานแล้ว!")
