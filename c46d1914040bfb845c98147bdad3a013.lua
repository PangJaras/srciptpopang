repeat wait() until game:IsLoaded()

if not _G.Name1 or not _G.scriptlua1 then
    warn("Config not found!")
    return
end

local player = game.Players.LocalPlayer
local playerName = player.Name

local groupTables = { _G.Name1, _G.Name2, _G.Name3 or {}, _G.Name4 or {}, _G.Name5 or {} }
local groupScripts = _G.scriptlua1
local groupNames = { "1", "2", "3", "4", "5" }

local function findGroupByHelper()
    local players = game.Players:GetPlayers()
    for i, group in ipairs(groupTables) do
        if #group >= 2 then
            local helper1, helper2 = group[1], group[2]
            for _, p in ipairs(players) do
                local lowerName = string.lower(p.Name)
                if lowerName == string.lower(helper1) or lowerName == string.lower(helper2) then
                    return i
                end
            end
        end
    end
    return nil
end

local function showNotification(msg, duration)
    local gui = Instance.new("ScreenGui")
    gui.Name = "NotificationUI"
    gui.Parent = player:WaitForChild("PlayerGui")
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 50)
    frame.Position = UDim2.new(1, 0, 1, 0)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0
    frame.Parent = gui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundTransparency = 1
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.Font = Enum.Font.GothamBold
    text.TextSize = 16
    text.Text = msg
    text.Parent = frame

    frame:TweenPosition(UDim2.new(1, -260, 1, -60), "Out", "Quad", 0.3, true)

    task.delay(duration or 3, function()
        if frame then
            frame:TweenPosition(UDim2.new(1, 0, 1, 0), "In", "Quad", 0.3, true)
            task.delay(0.3, function()
                if gui then gui:Destroy() end
            end)
        end
    end)
end

local function createGroupUI(groupName, groupNum)
    local gui = player:WaitForChild("PlayerGui")
    local oldUI = gui:FindFirstChild("GroupDisplayUI")
    if oldUI then oldUI:Destroy() end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "GroupDisplayUI"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = gui

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 150, 0, 70)
    mainFrame.Position = UDim2.new(0.5, -75, 0, 10)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BackgroundTransparency = 0.2
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 8)
    uiCorner.Parent = mainFrame

    local uiStrokeOuter = Instance.new("UIStroke")
    uiStrokeOuter.Thickness = 7
    uiStrokeOuter.Transparency = 0.3
    uiStrokeOuter.Parent = mainFrame

    local uiStrokeInner = Instance.new("UIStroke")
    uiStrokeInner.Thickness = 3
    uiStrokeInner.Transparency = 0
    uiStrokeInner.Parent = mainFrame

    local groupLabel = Instance.new("TextLabel")
    groupLabel.Size = UDim2.new(1, 0, 0, 25)
    groupLabel.Position = UDim2.new(0, 0, 0, 5)
    groupLabel.BackgroundTransparency = 1
    groupLabel.Text = "GROUP"
    groupLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    groupLabel.Font = Enum.Font.GothamBold
    groupLabel.TextSize = 14
    groupLabel.Parent = mainFrame

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 0, 30)
    nameLabel.Position = UDim2.new(0, 0, 0, 25)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = groupName
    nameLabel.TextColor3 = groupNum == 1 and Color3.fromRGB(255, 215, 0)
        or groupNum == 2 and Color3.fromRGB(0, 191, 255)
        or groupNum == 3 and Color3.fromRGB(255, 26, 0)
        or groupNum == 4 and Color3.fromRGB(255, 105, 180)
        or Color3.fromRGB(0, 255, 153)
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 18
    nameLabel.Parent = mainFrame

    task.spawn(function()
        local hue = 0
        while screenGui.Parent do
            hue = (hue + 0.02) % 1
            local color = Color3.fromHSV(hue, 1, 1)
            uiStrokeOuter.Color = color
            uiStrokeInner.Color = color
            task.wait(0.05)
        end
    end)
end

local function isHelper()
    for i, group in ipairs(groupTables) do
        if #group >= 2 then
            if string.lower(playerName) == string.lower(group[1]) or string.lower(playerName) == string.lower(group[2]) then
                return true, i
            end
        end
    end
    return false, nil
end

local helperFlag, helperGroup = isHelper()

if helperFlag then
    showNotification("IM Helper!", 3)
    createGroupUI(groupNames[helperGroup], helperGroup)

    local link = groupScripts[helperGroup]
    if link and link ~= "" then
        local success, err = pcall(function()
            loadstring(game:HttpGet(link))()
        end)
        if not success then
            warn("❌ โหลดสคริปต์ล้มเหลว: " .. tostring(err))
        end
    end

-- 🟩 เพิ่มส่วนนี้: ถ้าอยู่ในแมพ 4442272183 ให้รันสคริปต์ทันที ไม่ต้องรอ Helper
elseif game.PlaceId == 4442272183 then
    showNotification("Auto farm detected! Loading script...", 3)
    local groupNum = findGroupByHelper() or 1 -- ถ้าไม่เจอกลุ่ม ให้ใช้กลุ่ม 1 เป็นค่าเริ่มต้น
    createGroupUI(groupNames[groupNum], groupNum)
    local link = groupScripts[groupNum]
    if link and link ~= "" then
        local success, err = pcall(function()
            loadstring(game:HttpGet(link))()
        end)
        if not success then
            warn("❌ โหลดสคริปต์ล้มเหลว: " .. tostring(err))
        end
    end

-- 🔽 เดิม: ถ้าไม่ใช่ Helper และไม่อยู่ในแมพฟาร์ม ให้รอ Helper
else
    task.spawn(function()
        repeat
            showNotification("Wait For Helper Join...", 3)
            local groupNum = findGroupByHelper()
            if groupNum then
                showNotification("Helper Joined! Loading Script...", 3)
                createGroupUI(groupNames[groupNum], groupNum)
                local link = groupScripts[groupNum]
                if link and link ~= "" then
                    local success, err = pcall(function()
                        loadstring(game:HttpGet(link))()
                    end)
                    if not success then
                        warn("❌ โหลดสคริปต์ล้มเหลว: " .. tostring(err))
                    end
                end
                break
            end
            task.wait(3)
        until false
    end)
end
