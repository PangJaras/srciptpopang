if not _G.Name1 or not _G.scriptlua1 then
    warn("Config not foud")
    return
end

local player = game.Players.LocalPlayer
local playerName = player.Name

local groupTables = { _G.Name1, _G.Name2, _G.Name3, _G.Name4, _G.Name5 }
local groupScripts = _G.scriptlua1
local groupNames = { "1", "2", "3", "4", "5" }

local function getPlayerGroup(username)
	for i, group in ipairs(groupTables) do
		if group then
			for _, name in ipairs(group) do
				if string.lower(username) == string.lower(name) then
					return i
				end
			end
		end
	end
	return nil
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

	-- เอฟเฟกต์สีรุ้ง
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

local groupNum = getPlayerGroup(playerName)

if groupNum then
	local groupName = groupNames[groupNum]
	local link = groupScripts[groupNum]

	print("ผู้เล่น " .. playerName .. " อยู่ในกลุ่มที่ " .. groupName)

	createGroupUI(groupName, groupNum)

	if link and link ~= "" then
		print("กำลังโหลดสคริปต์จาก: " .. link)
		local success, err = pcall(function()
			loadstring(game:HttpGet(link))()
		end)
		if not success then
			warn("❌ โหลดสคริปต์ล้มเหลว: " .. tostring(err))
		end
	else
		warn(" ไม่พบลิงก์สคริปต์สำหรับกลุ่มนี้")
	end

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
	text.Text = "สคริปต์สำหรับกลุ่ม " .. groupName .. " เริ่มทำงานแล้ว!"
	text.TextColor3 = Color3.fromRGB(255, 255, 255)
	text.BackgroundTransparency = 1
	text.Font = Enum.Font.GothamBold
	text.TextSize = 16
	text.Parent = frame

	task.delay(3, function()
		if notification then notification:Destroy() end
	end)
else
	warn("❌ ผู้เล่น " .. playerName .. " ไม่ได้อยู่ในรายชื่อที่ได้รับอนุญาต")
	player:Kick("คุณไม่ได้รับอนุญาตให้ใช้สคริปต์นี้")
end
