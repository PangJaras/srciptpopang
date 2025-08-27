_G.VanguardSettings = {
    ['ClaimDaily'] = true,
    ['ClaimQuests'] = true,
    ['ClaimAchievement'] = true,
    ['ClaimBattlepass'] = true,
    ['ClaimMileStones'] = true,
    ['RedeemCodes'] = true,
    ['JoinGames'] = true,
    ['Summon'] = {
        ['LockUnits'] = false,
        ['Name'] = {''}
    },
    ['Webhooks'] = {
        ['Enabled'] = true,
        ['Url'] = ''
    },
    ["TeaFarm"] = {
        ["Enabled"] = true,
        ["FarmAtLevel"] = 11,
        ["RandomUnits"] = {
            ["SellUnitsNotLock"] = true,
            ["RandomWhenHaveTea"] = 10000000,
            ["Lock"] = {
                "Iscanur (Pride)"
            }
        }
    }
}
script_key="bGCPoPFZcBXGHteqqvSuRnqNKgqSWWwu";
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6756a57cd51293c409a1f7627cba5572.lua"))()
