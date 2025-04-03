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
getgenv().Key = "MARU-UQU3P-B1V0-RQ1U-NPO3L-3JICP"
getgenv().id = "760440516156063766"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Private.lua"))()
