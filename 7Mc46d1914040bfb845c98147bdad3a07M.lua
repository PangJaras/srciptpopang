repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local playerName = string.lower(player.Name)

-- ================= CONFIG =================
if not _G.Name1 or not _G.scriptluaHelperBoat or not _G.scriptluaFarm then
    warn("Config not found!")
    return
end

local groupTables = {
    _G.Name1,
    _G.Name2 or {},
    _G.Name3 or {},
    _G.Name4 or {},
    _G.Name5 or {}
}

local helperScripts = _G.scriptluaHelperBoat
local farmScripts   = _G.scriptluaFarm
local groupNames    = { "1", "2", "3", "4", "5" }

-- ================= UI =================
local function showNotification(msg, duration)
    local gui = Instance.new("ScreenGui", player.PlayerGui)
    gui.Name = "NotificationUI"

    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0,260,0,50)
    frame.Position = UDim2.new(1,0,1,0)
    frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0,8)

    local text = Instance.new("TextLabel", frame)
    text.Size = UDim2.new(1,0,1,0)
    text.BackgroundTransparency = 1
    text.Text = msg
    text.Font = Enum.Font.GothamBold
    text.TextSize = 16
    text.TextColor3 = Color3.new(1,1,1)

    frame:TweenPosition(UDim2.new(1,-270,1,-60),"Out","Quad",0.3,true)

    task.delay(duration or 3,function()
        frame:TweenPosition(UDim2.new(1,0,1,0),"In","Quad",0.3,true)
        task.delay(0.3,function() gui:Destroy() end)
    end)
end

local function createGroupUI(groupName, role)
    local gui = player.PlayerGui
    local old = gui:FindFirstChild("GroupDisplayUI")
    if old then old:Destroy() end

    local sg = Instance.new("ScreenGui", gui)
    sg.Name = "GroupDisplayUI"
    sg.ResetOnSpawn = false

    local f = Instance.new("Frame", sg)
    f.Size = UDim2.new(0,180,0,75)
    f.Position = UDim2.new(0.5,-90,0,10)
    f.BackgroundColor3 = Color3.fromRGB(30,30,30)
    f.BackgroundTransparency = 0.2
    Instance.new("UICorner", f).CornerRadius = UDim.new(0,8)

    local title = Instance.new("TextLabel", f)
    title.Size = UDim2.new(1,0,0,25)
    title.BackgroundTransparency = 1
    title.Text = "GROUP "..groupName
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextColor3 = Color3.new(1,1,1)

    local roleLb = Instance.new("TextLabel", f)
    roleLb.Position = UDim2.new(0,0,0,30)
    roleLb.Size = UDim2.new(1,0,0,30)
    roleLb.BackgroundTransparency = 1
    roleLb.Text = role
    roleLb.Font = Enum.Font.GothamBold
    roleLb.TextSize = 18
    roleLb.TextColor3 = role == "HELPER BOAT"
        and Color3.fromRGB(255,215,0)
        or Color3.fromRGB(0,255,153)
end

-- ================= FIND HELPER =================
local function findHelperGroup()
    local players = game.Players:GetPlayers()
    for gIndex, group in ipairs(groupTables) do
        local helperName = group[1]
        if helperName and helperName ~= "" then
            for _, p in ipairs(players) do
                if string.lower(p.Name) == string.lower(helperName) then
                    return gIndex
                end
            end
        end
    end
    return nil
end

-- ================= KICK WORLD 1 =================
task.spawn(function()
    if game.PlaceId == 2753915549 then
        for i = 60,1,-1 do
            showNotification("World 1 Kick in "..i.."s",1)
            task.wait(1)
        end
        player:Kick("Auto Kick World 1")
    end
end)

-- ================= MAIN WAIT LOGIC =================
showNotification("Waiting for HELPER BOAT...", 3)

task.spawn(function()
    repeat
        local groupIndex = findHelperGroup()
        if groupIndex then
            local isHelper = string.lower(groupTables[groupIndex][1]) == playerName
            local role = isHelper and "HELPER BOAT" or "FARM"
            local scriptLink = isHelper
                and helperScripts[groupIndex]
                or farmScripts[groupIndex]

            showNotification("Helper Found! Group "..groupNames[groupIndex], 3)
            createGroupUI(groupNames[groupIndex], role)

            if scriptLink and scriptLink ~= "" then
                pcall(function()
                    loadstring(game:HttpGet(scriptLink))()
                end)
            end
            break
        end
        task.wait(3)
    until false
end)
