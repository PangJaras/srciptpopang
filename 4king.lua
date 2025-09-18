local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local humanoid = char:WaitForChild("Humanoid")

local farmFolder = workspace:WaitForChild("งานก่อสร้าง")
local usedTween = false -- flag ตรวจว่าทำ Tween ครั้งแรกไปแล้ว

-- ฟังก์ชันสุ่มเวลา
local function randomWait(min, max)
    return math.random(min*10, max*10) / 10
end

-- TweenService เดินไปตำแหน่ง
local function tweenTo(targetPos)
    local distance = (hrp.Position - targetPos).Magnitude
    local speed = 200
    local time = distance / speed

    local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(hrp, tweenInfo, {CFrame = CFrame.new(targetPos)})
    tween:Play()
    tween.Completed:Wait()
end

-- ฟังก์ชันเดินไปเก็บ
local function moveToCollect(prompt, useTween)
    local target = prompt.Parent
    if not target or not target:IsA("BasePart") then return end

    -- เพิ่ม offset เล็กๆ ให้ไม่ตรงเป๊ะ
    local offset = Vector3.new(math.random(-2,2), 0, math.random(-2,2))
    local goalPos = target.Position + offset

    if useTween then
        tweenTo(goalPos) -- เดินแบบ TweenService
    else
        humanoid:MoveTo(goalPos) -- เดินปกติ
        humanoid.MoveToFinished:Wait()
    end

    -- รอสุ่มเวลา
    task.wait(randomWait(1,2))

    -- เช็กระยะแล้วเก็บ
    if (hrp.Position - target.Position).Magnitude <= prompt.MaxActivationDistance then
        pcall(function()
            fireproximityprompt(prompt, 1)
        end)
        task.wait(randomWait(1,2)) -- เว้นเวลาก่อนเก็บต่อ
    end
end

-- ฟังก์ชันฟาร์มหลัก
local function startFarming()
    while task.wait(1) do
        local prompts = {}
        for _, v in ipairs(farmFolder:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                table.insert(prompts, v)
            end
        end

        -- เรียงลำดับจากใกล้สุด
        table.sort(prompts, function(a, b)
            return (hrp.Position - a.Parent.Position).Magnitude < (hrp.Position - b.Parent.Position).Magnitude
        end)

        for _, prompt in ipairs(prompts) do
            if prompt and prompt.Parent then
                if not usedTween then
                    moveToCollect(prompt, true)  -- ครั้งแรกใช้ Tween
                    usedTween = true
                else
                    moveToCollect(prompt, false) -- ครั้งต่อไปใช้ MoveTo
                end
            end
        end
    end
end

-- เริ่มฟาร์ม
task.spawn(startFarming)
