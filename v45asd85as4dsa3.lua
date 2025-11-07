_G.Name1 = {
    "name1",
    "name2",
    "Name3",
    "name4",
    "name5",
    "name6",
    "name7",
    "name8",
    "name9",
    "name10",
    "name11",
    "name12"
}
_G.Name2 = {
    "name1",
    "name2",
    "Name3",
    "name4",
    "name5",
    "name6",
    "name7",
    "name8",
    "name9",
    "name10",
    "name11",
    "name12"
}
_G.Name3 = {
    "name1",
    "name2",
    "Name3",
    "name4",
    "name5",
    "name6",
    "name7",
    "name8",
    "name9",
    "name10",
    "name11",
    "name12"
}
_G.Name4 = {
    "name1",
    "name2",
    "Name3",
    "name4",
    "name5",
    "name6",
    "name7",
    "name8",
    "name9",
    "name10",
    "name11",
    "name12"
}
_G.Name5 = {
    "name1",
    "name2",
    "Name3",
    "name4",
    "name5",
    "name6",
    "name7",
    "name8",
    "name9",
    "name10",
    "name11",
    "name12"
}

-- ใส่ลิงก์สคริปต์ของแต่ละกลุ่มที่นี่ (ตอนนี้เป็นค่าตัวอย่าง "script")
_G.scriptlua1 = {
    "script",
    "script",
    "script",
    "script",
    "script"
}

------------------------------------------------------
-- สคริปต์หลัก (LocalScript) — วางใน StarterPlayerScripts
------------------------------------------------------
local Players = game:GetService("Players")
local player = Players.LocalPlayer
if not player then
    warn("LocalPlayer not found. Ensure this is running as a LocalScript.")
    return
end

-- กลุ่มของผู้ใช้ที่ได้รับอนุญาต (อ่านจาก _G)
local group1 = _G.Name1 or {}
local group2 = _G.Name2 or {}
local group3 = _G.Name3 or {}
local group4 = _G.Name4 or {}
local group5 = _G.Name5 or {}

-- ชื่อกลุ่มสำหรับแสดงใน UI
local groupNames = {"1", "2", "3", "4", "5"}

local playerName = player.Name
local playerGroup, groupNumber = nil, 0

-- ฟังก์ชันตรวจสอบว่าผู้เล่นอยู่ในกลุ่มหรือไม่
local function isInGroup(username, group)
    for _, name in pairs(group) do
        if username == name then
            return true
        end
    end
    return false
end

-- ฟังก์ชันสร้าง UI แสดงกลุ่ม
local function createGroupUI(groupName, groupNum)
    -- ลบ UI เดิมออกก่อน
    local pg = player:WaitForChild("PlayerGui")
    local oldUI = pg:FindFirstChild("GroupDisplayUI")
    if oldUI then oldUI:Destroy() end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "GroupDisplayUI"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = pg

    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
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

    -- เอฟเฟกต์สีรุ้ง (จะหยุดเมื่อ ScreenGui ถูกทำลาย)
    coroutine.wrap(function()
        local hue = 0
        while screenGui.Parent do
            hue = (hue + 0.02) % 1
            local color = Color3.fromHSV(hue, 1, 1)
            uiStrokeOuter.Color = color
            uiStrokeInner.Color = color
            task.wait(0.05)
        end
    end)()
end

-- ตรวจสอบว่าผู้เล่นอยู่กลุ่มไหน
if isInGroup(playerName, group1) then
    playerGroup, groupNumber = groupNames[1], 1
elseif isInGroup(playerName, group2) then
    playerGroup, groupNumber = groupNames[2], 2
elseif isInGroup(playerName, group3) then
    playerGroup, groupNumber = groupNames[3], 3
elseif isInGroup(playerName, group4) then
    playerGroup, groupNumber = groupNames[4], 4
elseif isInGroup(playerName, group5) then
    playerGroup, groupNumber = groupNames[5], 5
end

-- ถ้าเป็นผู้ได้รับอนุญาต ให้แสดง UI และโหลดสคริปต์ (ถ้ามี)
if playerGroup then
    createGroupUI(playerGroup, groupNumber)

    -- โหลดสคริปต์เฉพาะกลุ่ม (ถ้ามีค่าใน _G.scriptlua1)
    local link = (_G.scriptlua1 and _G.scriptlua1[groupNumber]) or nil
    if link and type(link) == "string" and link ~= "" then
        -- ถ้าค่าเป็น "script" นั่นคือ placeholder — จะพยายามโหลดถ้าคุณใส่ลิงก์จริง
        if link ~= "script" then
            -- ป้องกัน error ถ้า HttpGet มีปัญหา
            local success, result = pcall(function()
                return game:HttpGet(link)
            end)
            if success and result then
                local ok, fn = pcall(function() return loadstring(result) end)
                if ok and type(fn) == "function" then
                    pcall(fn)
                else
                    warn("ไม่สามารถโหลดสคริปต์จากผลลัพธ์ได้ (loadstring ล้มเหลว).")
                end
            else
                warn("ไม่สามารถดึงสคริปต์จาก URL: " .. tostring(link))
            end
        else
            print("หมายเหตุ: _G.scriptlua1[" .. tostring(groupNumber) .. "] เป็น placeholder 'script' — ใส่ลิงก์จริงเพื่อให้โหลดได้")
        end
    else
        print("ไม่มีลิงก์สคริปต์สำหรับกลุ่ม " .. tostring(groupNumber))
    end

    -- แจ้งเตือนชั่วคราวบนหน้าจอ
    local notification = Instance.new("ScreenGui")
    notification.Name = "ExecutionNotification"
    notification.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 50)
    frame.Position = UDim2.new(0.5, -125, 0.8, 0)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0
    frame.Parent = notification

    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 8)
    uiCorner.Parent = frame

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, 0, 1, 0)
    text.Text = "สคริปต์สำหรับกลุ่ม " .. playerGroup .. " เริ่มทำงานแล้ว!"
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.BackgroundTransparency = 1
    text.Font = Enum.Font.GothamBold
    text.TextSize = 16
    text.Parent = frame

    task.delay(3, function()
        if notification then notification:Destroy() end
    end)
else
    warn("ชื่อผู้ใช้ไม่ได้รับอนุญาต: " .. playerName)
    -- ถ้าต้องการไม่ Kick ให้คอมเมนต์บรรทัดด้านล่างออก
    player:Kick("คุณไม่ได้รับอนุญาตให้ใช้สคริปต์นี้")
end
