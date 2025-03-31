getgenv().Configuration = {
    Enabled = true,
    RedeemCode = true,
    SummonLegendary = true,
    EquipBest = true,
    AutoClaims = {
        ['Achievement'] = true,
        ['Milestones'] = false, -- // รับเควสเลเวล
        ['Battlepas'] = true,
        ['Quests'] = true,
    },
};
getgenv().key = 'd59b3694-111e-4ed8-9046-e661c9910158'
loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trash/Loader/main/Loader.lua'))()
