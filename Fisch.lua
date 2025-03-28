_G.Configs = {
	-- [[ setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)) ]] -- For Copy CFrame
	Version = "18",
	["Kai Aurora"] = false, -- < Boolean > Not Recommended Enabled For Kai Aurora Only
	["Lock Plan"] = {
		["Enabled"] = false, -- < Boolean > Enabled Lock Level 
		["Lock Level"] = 500,  -- < Number > Lock Level 
	},
	Setting = {
		["Perfect Catch"] = 100, -- < String > Style Perfect Catch [ Percent ]
		["Style Selected Object Shake"] = false, -- < Boolean > Not Recommended Enabled For Fix Shake Bug 
		["Reducing Cpu Usage"] = {
			["Black Screen"] = true, -- < Boolean > Auto Open / Close Black Screen
			["Enabled"] = true, -- < Boolean > Using Cpu less 20
			["FpsCap"] = {
				["On BlackScreen"] = 15, -- < Number > Fps Lock
				["Un BlackScreen"] = 15 -- < Number > Fps Lock
			}
		},
		["Position Farming"] = {
			["Main Position"] = CFrame.new(706.767822, 2131.87769, 16977.5645, 0.97345984, -6.38923003e-09, -0.22885792, -1.07132925e-08, 1, -7.34874703e-08, 0.22885792, 7.39889217e-08, 0.97345984), -- < CFrame > Main Position Fishing / Farm Money
			["Level Position"] = CFrame.new(-14041.0762, -11043.7305, 55.8451042, 0.043619331, -8.40611669e-09, -0.999048233, 2.12796536e-09, 1, -8.32121572e-09, 0.999048233, -1.76297421e-09, 0.043619331), -- < CFrame > Main Position For Farm Level
			["Max Level Position"] = CFrame.new(-4226.49854, -1003.57288, 2154.04028, 0.898783267, -1.37496379e-08, 0.438393205, 4.81961777e-08, 1, -6.74469405e-08, -0.438393205, 8.17490573e-08, 0.898783267),  -- < CFrame > Main Position For Farm Fish / Max Level Fishing
			["Logic Position"] = {
				["Enabled"] = false,
				["Logic Work Status"] = {"Level", "Max Level"}, -- < Table > Level, Max Level, Main : Choose For This Logic Working
				["Day Time"] = CFrame.new(), -- < CFrame > Custom CFrame In Day Time
				["Night Time"] = CFrame.new(), -- < CFrame > Custom CFrame In Night Time
				["Has Aurora Borealis"] = CFrame.new() -- < CFrame > Custom CFrame For Aurora Borealis
			}
		},
		["Serverping"] = {
			["Enabled"] = true, -- < Boolean > MaxPing Rejoin Server
			["MaxPing"] = 100000 -- < Number > MaxPing For Rejoin Server
		},
		["Aurora Borealis"] = {
			["Auto Using"] = false, -- < Boolean > Auto Using Aurora Totem
			["Full Aurora"] = false, -- < Boolean > Auto Using Sundial Totem
			["Auto Buy"] = false, -- < Boolean > Auto Buy Aurora / Sundial
			["Min Money"] = 20000000 -- < Number > Min Money Buy Aurora / Sundial
		},
		["Farm Level"] = {
			["Allow Farm Level"] = true,  -- < Boolean > Enabled Mode Farm Level
			["Trier Rods [For Level]"] = {"Tempest Rod", "Ethereal Prism Rod"}, -- < Table > Table Equip Rod For Farm Level
			["Min Money"] = 1000000 -- < Number > Min Money To Farm Level
		},
		["Sell Setting"] = {
			["Sell Event Fish"] = true, -- < Boolean > Enabled Selling Event Fish
			["Sell Exotic Fish"] = true, -- < Boolean > Enabled Selling Exotic Fish
			["Sell Mythical Fish"] = true, -- < Boolean > Enabled Selling Mythical Fish
			["Sell Legendary"] = true, -- < Boolean > Enabled Selling Legendary Fish
			["Sell Secret"] = true, -- < Boolean > Enabled Selling Secret Fish
		}
	},
	["Auto Enchant"] = {
		["Lock Enchant"] = { -- < Table > Lock Enchant ["Rod Name"] = {"Name Enchant","Muti Enchant"}		
			["Aurora Rod"] = {"Hasty"},
			["Kraken Rod"] = {"Hasty"},
			["Poseidon Rod"] = {"Hasty"},
			["Ethereal Prism Rod"] = {"Hasty"},
			["No-Life Rod"] = {"Hasty"}
		},
		["Min Money To Enchant"] = 100000, -- < Number > Min Money To Enchant Rods
		["Allow Enchant"] = true   -- < Boolean > Enabled Enchant
	},
	["Custom Equip"] = {
		["Trier Rods Equip"] = {"Rapid Rod", "Trident Rod", "Aurora Rod", "Rod Of The Depths", "Kraken Rod", "Poseidon Rod", "No-Life Rod", "Ethereal Prism Rod"}, -- < Table > Table Equip Rod
	},
	["Custom Buying"] = {
		["Buying Rods"] = {
			["Rods"] = {"Ethereal Prism Rod"}, -- < Table > Custom Rods Buying
			["Ready Have Rods For Buy Rods"] = {"Rapid Rod", "Aurora Rod", "Ethereal Prism Rod"},  -- < Table > Ready Have Rods To Buying Custom Rods
		}, 
		["Allow Buying"] = {
			["Aurora Rod"] = true, -- < Boolean > Enabled For Buying
			["Trident Rod"] = true, -- < Boolean > Enabled For Buying
			["Destiny Rod"] = true, -- < Boolean > Enabled For Buying
			["Poseidon Rod"] = true, -- < Boolean > Enabled For Buying
			["Kraken Rod"] = true, -- < Boolean > Enabled For Buying
			["Volcanic Rod"] = true, -- < Boolean > Enabled For Buying
			["Challenger's Rod"] = true, -- < Boolean > Enabled For Buying
			["Rod Of The Zenith"] = true, -- < Boolean > Enabled For Buying
			['Ethereal Prism Rod'] = true, -- < Boolean > Enabled For Buying
		},
		["Buy Effect Luck"] = {
			["Allow Buying"] = true,  -- < Boolean > Enabled Buying Luck Effect
			["Min Money"] = 20000  -- < Number > Min Money For Buying Luck Effect
		},
		["Crystalized Rod"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Crystalized Rod
			["Min Money Doing"] = 300000, -- < Number > Min Money For Crystalized Rod
			["Rod In Glass Diamond"] = "Aurora Rod",  -- < String > Name Rod For Use In Puffer Pool
			["Level Doing"] = 1000, -- < Number > Level For Starting Doing Crystalized Rod
		},
		["Rod Of The Depths"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Rod Of The Depths
			["Min Money Doing"] = 2000000, -- < Number > Min Money For Do Rod Of The Depths
			["Rod In Vertigo"] = "Midas Rod", -- < String > Name Rod For Use In Vertigo Pool
			["Rod In Whitepool"] = "Aurora Rod", -- < String > Name Rod For Use In Vertigo Pool
			["Level Doing"] = 1000, -- < Number > Level For Starting Doing The Depths Rod
		},
		["Magma Rod"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Magma Rod
			["Min Money Doing"] = 0, -- < Number > Min Money For Do Magma Rod
			["Rod In Puffer Pool"] = "Aurora Rod",  -- < String > Name Rod For Use In Puffer Pool
			["Level Doing"] = 500, -- < Number > Level For Starting Doing Magma Rod
		},
		["Fungal Rod"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Fungal Rod
			["Min Money Doing"] = 0, -- < Number > Min Money For Do Fungal Rod
			["Rod In Alligator"] = "Aurora Rod",  -- < String > Name Rod For Use In Alligator Pool
			["Level Doing"] = 500, -- < Number > Level For Starting Doing Fungal Rod
		},
		["Heaven Rod"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Heaven Rod
			["Min Money Doing"] = 3000000, -- < Number > Min Money For Do Heaven Rod
			["Hopserver"] = false, -- < Boolean > Enabled Hopserver For Crystal Not Spawn
			["Level Doing"] = 500, -- < Number > Level For Starting Doing Heaven Rod
		},
		["Leviathan's Fang Rod"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Leviathan's Fang Rod
			["Min Money Doing"] = 3000000, -- < Number > Min Money For Do Leviathan's Fang Rod
			["Level Doing"] = 1000, -- < Number > Level For Starting Doing Leviathan's Fang Rod
		},
		["Rod of The Forgotten Fang"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Forgotten Fang Rod ( Req Lv 750 )
			["Min Money Doing"] = 3000000, -- < Number > Min Money For Do Forgotten Fang Rod
			["Using Rod"] = "Ethereal Prism Rod", -- < String > Name Rod For Use In Clam ( Change 1/650 Recommend Luckily )
			["Level Doing"] = 1000, -- < Number > Level For Starting Doing Forgotten Fang ( Level > 750 Only )
		},
		["Rod of The Eternal King"] = {
			["Allow Doing"] = true, -- < Boolean > Enabled Do Eternal King Rod ( Req Lv 650 )
			["Min Money Doing"] = 3000000, -- < Number > Min Money For Do Eternal King Rod
			["Rod In Clam"] = "Ethereal Prism Rod", -- < String > Name Rod For Use In Clam ( Change 1/650 Recommend Luckily )
			["Level Doing"] = 1000, -- < Number > Level For Starting Doing Eternal King ( Level > 650 Only )
		}
	}, 
	["After Max Level"] = {
		["Enabled"] = true, -- < Boolean > Enabled After Max Level Function
		["Min Money For Start After Max Level"] = 30000000, -- < Number > Min Money For Start After Max Level Function
		["Fishing Zone"] = { -- < Table > Fishing Zone Select ( Special Zone )
			"Megalodon",
			"Orcas",
			"Lovestorm",
			"Whales"
		},
		["Buying Rods"] = {"Challenger's Rod", "Rod Of The Zenith", "Kraken Rod", "Trident Rod", "Destiny Rod", "Kings Rod", "Midas Rod", "Mythical Rod", "Tempest Rod", "Long Rod", "Fast Rod", "Steady Rod", "Fortune Rod", "Nocturnal Rod", "Magnet Rod", "Scurvy Rod", "Phoenix Rod", "Stone Rod", "Abyssal Specter Rod", "Champions Rod", "Depthseeker Rod"},
		["Change Sell Setting"] = {
			["Sell Event Fish"] = true, -- < Boolean > Enabled Selling Event Fish
			["Sell Exotic Fish"] = true, -- < Boolean > Enabled Selling Exotic Fish
			["Sell Mythical Fish"] = true, -- < Boolean > Enabled Selling Mythical Fish
			["Sell Legendary"] = true, -- < Boolean > Enabled Selling Legendary Fish
			["Sell Secret"] = true, -- < Boolean > Enabled Selling Secret Fish
		},
	},
	["Roblox Account Manager"] = {
		["Enabled"] = false, -- < Boolean > Enabled For Set Ailas, Description
		["Black List Rods"] = {"Flimsy Rod", "Carbon Rod", "Destiny Rod", "Trident Rod", "Volcanic Rod", "Challenger's Rod", "Kings Rod", "Midas Rod", "Mythical Rod"}
	},
}
getgenv().key = '5724b1d5-de0e-4682-af15-6a9a345c17f5'
loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/965cbb37d5a810609ee8cf51fba2ebea.lua'))()
