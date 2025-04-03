if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
getgenv().Script_Mode = "Kaitun_Script"
_G.VanguardSettings = {
    ['ClaimDaily'] = true,
    ['ClaimQuests'] = true,
    ['ClaimAchievement'] = true,
    ['ClaimBattlepass'] = true,
    ['Webhooks'] = {
        ['Enabled'] = true,
        ['Url'] = ''
    }
}
(getgenv()).key = "MARUAZWEZQZTHH8I25ACMEVKMP";
(getgenv()).id = "760440516156063766";
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruComkak/main/PCBit.lua"))()
