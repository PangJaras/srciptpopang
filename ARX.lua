getgenv().Configuration = {
    ['Farm Mode'] = 'Story', -- 'Story', 'AFK'

    ['PlayerStats'] = 'YenMaxLevel', -- 'YenMaxLevel', 'YenGenarateLevel', 'BaseHealthLevel'

    ['Claim Milestone'] = true, -- true / false
    ['Claim Quests'] = true, -- true / false

    ['Mythical Units'] = {'Katakuri', 'Broly', 'Gojo', 'Songjinwuu'},
    ['Required Mythical Units'] = true, -- true / false

    ['Legendary Units'] = {'Okarun'},
    ['Required Legendary Units'] = false, -- true / false

    ['Webhook URL'] = '', -- Webhook Discord
    ['Webhook Enabled'] = false, -- true / false,

    ['Redeem Code'] = true, -- true / false
    ['Redeem Code List'] = {'100K CCU', 'Easter Egg 2025!', 'Sorry For Easter Event!'},

    ['Equip Best Units'] = true, -- true / false

    ['Lobby Matchmaking Delay'] = 30, -- 30 seconds
    ['Lobby Matchmaking'] = false, -- true / false

    ['Auto Vote Playing'] = true, -- true / false
    ['Auto Vote Retry'] = true, -- true / false
    ['Auto Vote Next'] = true, -- true / false

    ['Auto Sell Units'] = true, -- true / false

    ['Auto Sell Units Rarity'] = {'Rare', 'Epic'}
}
getgenv().key = {89956,76677,64607,15549,76535,154564}
loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trash/Loader/main/Loader.lua'))()
