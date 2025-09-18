-- LocalScript (StarterPlayerScripts)

local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local humanoid = char:WaitForChild("Humanoid")

local farmFolder = workspace:WaitForChild("งานก่อสร้าง")

-- ฟังก์ชันสุ่มเวลา
local function randomWait(min, max)
    return math.random(min*10, max*10) / 10
end

-- ฟังก์ชัน Tween เดินไปหาเป้าหมาย
local function tweenTo(targetPos)
    local distance = (hrp.Position - targetPos).Magnitude
    local speed = 150 -- ความเร็ว (studs/วินาที) ปรับได้ตามต้องการ
    local time = distance / speed

    local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(hrp, tweenInfo, {CFrame = CFrame.new(targetPos)})
    tween:Play()
    tween.Completed:Wait()
end

-- ฟังก์ชันเก็บของ
local function collectPrompt(prompt)
    local target = prompt.Parent
    if not target or not target:IsA("BasePart") then return end

    -- เพิ่ม offset ให้ไม่เดินตรงเป๊ะ
    local offset = Vector3.new(math.random(-2,2), 0, math.random(-2,2))
    local goalPos = target.Position + offset

    -- เดินไปหาเป้าหมาย
    tweenTo(goalPos)

    -- รอสุ่มเวลาเหมือนคนเล่น
    task.wait(randomWait(1,3))

    -- เช็กว่าถึงระยะกดแล้วเก็บ
    if (hrp.Position - target.Position).Magnitude <= prompt.MaxActivationDistance then
        pcall(function()
            fireproximityprompt(prompt, 1)
        end)
        task.wait(randomWait(2,5)) -- เว้นระยะก่อนเก็บอันต่อไป
    end
end

-- ฟังก์ชันฟาร์ม
local function startFarming()
    while task.wait(1) do
        local prompts = {}
        for _, v in ipairs(farmFolder:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                table.insert(prompts, v)
            end
        end

        -- เรียงลำดับใกล้สุดก่อน
        table.sort(prompts, function(a, b)
            return (hrp.Position - a.Parent.Position).Magnitude < (hrp.Position - b.Parent.Position).Magnitude
        end)

        -- เดินเก็บทีละอัน
        for _, prompt in ipairs(prompts) do
            if prompt and prompt.Parent then
                collectPrompt(prompt)
            end
        end
    end
end

-- เริ่มทำงาน
task.spawn(startFarming)
