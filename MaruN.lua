setfpscap(15)
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
_G.Team = "Pirate" -- Marine / Pirate
getgenv().Script_Mode = "Kaitun_Script"
_G.MainSettings = {
        ["EnabledHOP"] = true, -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
        ["UseGun"] = true,
        ['FPSBOOST'] = true, -- ภาพกาก
        ["FPSLOCKAMOUNT"] = 15, -- จำนวน FPS
        ['WhiteScreen'] = false, -- จอขาว
        ['CloseUI'] = true, -- ปิด Ui
        ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
        ['AFKCheck'] = 150, -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
        ["LockFragments"] = 20000, -- ล็อคเงินม่วง
        ["LockFruitsRaid"] = { -- ล็อคผลที่ไม่เอาไปลงดัน
            [1] = "Dough-Dough",
            [2] = "Dragon-Dragon",
            [3] = "Leopard-Leopard",
            [4] = "Kitsune-Kitsune",
            [5] = "T-Rex-T-Rex",
            [6] = "Gas-Gas",
            [7] = "Yeti-Yeti",
            [8] = "Gravity-Gravity",
            [9] = "Mammoth-Mammoth",
            [10] = "Creation-Creation"
        }
    }
_G.Fruits_Settings = { -- ตั้งค่าผล
    ['Main_Fruits'] = {'Kitsune-Kitsune', 'Gravity-Gravity', 'Creation-Creation'}, -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
    ['Select_Fruits'] = {"Flame-Flame", "Ice-Ice", "Light-Light", "Dark-Dark", "Rumble-Rumble", "Magma-Magma"} -- กินหรือซื้อตอนไม่มีผล
}
_G.Quests_Settings = { -- ตั้งค่าเควสหลักๆ
    ['Rainbow_Haki'] = true,
    ["MusketeerHat"] = true,
    ["PullLever"] = true,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = true,
        ['UseFruits'] = true
    }        
}
_G.Races_Settings = { -- ตั้งค่าเผ่า
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = true,
                ["Human"] = false,
                ["Fishman"] = true
            },
            ["RerollsWhenFragments"] = 20000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = { -- หมัดที่จะทำ
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = true,
    ['DevilFruits'] = true,
    ['Select_Swords'] = {
        ["AutoSettings"] = false, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง        
        ["ManualSettings"] = { -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
            "Saber",
            "Tushita",
            "Yama",
            "Cursed Dual Katana",
            "Hallow Scythe",
            "Shark Anchor",
            "Pole"
        }
    }
}
_G.SwordSettings = { -- ดาบที่จะทำ
    ['Saber'] = true,
    ["Pole"] = true,
    ['MidnightBlade'] = true,
    ['Shisui'] = true,
    ['Saddi'] = true,
    ['Wando'] = true,
    ['Yama'] = true,
    ['Rengoku'] = true,
    ['Canvander'] = true,
    ['BuddySword'] = true,
    ['TwinHooks'] = true,
    ['HallowScryte'] = true,
    ['TrueTripleKatana'] = true,
    ['CursedDualKatana'] = true
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = true,
    ['FarmAfterMoney'] = 25000000
}
_G.GunSettings = { -- ปืนที่จะทำ
    ['Kabucha'] = true,
    ['SerpentBow'] = true,
    ['SoulGuitar'] = false
}
_G.Hop_Settings = {
    ["Find Tushita"] = true
}
getgenv().Key = "MARU-UQU3P-B1V0-RQ1U-NPO3L-3JICP"
getgenv().id = "760440516156063766"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Private.lua"))()
local Api = "https://raw.githubusercontent.com/NopNopA/Loader/refs/heads/main/Robloxs.lua"
loadstring(game:HttpGet(Api))()
Nexus_Version = 104

local FileName, Success, Error, Function = 'ic3w0lf22.Nexus.lua'

if isfile and readfile and isfile(FileName) then -- Execute ASAP, update later.
	Function, Error = loadstring(readfile(FileName), 'Nexus')

	if Function then
		Function()

		if Nexus then Nexus:Connect() end
	end
end

for i=1, 10 do
	Success, Error = pcall(function()
		local Response = (http_request or (syn and syn.request)) { Method = 'GET', Url = 'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RBX%20Alt%20Manager/Nexus/Nexus.lua' }

		if not Response.Success then error(('HTTP Error %s'):format(Response.StatusCode)) end

		Function, Error = loadstring(Response.Body, 'Nexus')

		if not Function then error(Error) end

		if isfile and not isfile(FileName) then
			writefile(FileName, Response.Body)
		end
		
		if not Nexus then -- Nexus was already ran earlier, this will update the existing file to the latest version instead of re-creating Nexus
			Function()
			Nexus:Connect()
		end
	end)
	
	if Success then break else task.wait(1) end
end

if not Success and Error then
	(messagebox or print)(('Nexus encountered an error while launching!\n\n%s'):format(Error), 'Roblox Account Manager', 0)
end
