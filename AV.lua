getgenv().Configuration = {
    Enabled = true,
    RedeemCode = true,
    SummonLegendary = true,
    EquipBest = true,
    AutoClaims = {
        ['Achievement'] = true,
        ['Milestones'] = true, -- // รับเควสเลเวล
        ['Battlepas'] = true,
        ['Quests'] = true,
    },
};
getgenv().key = {89956,76677,64607,15549,76535,154564}
loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trash/Loader/main/Loader.lua'))()
