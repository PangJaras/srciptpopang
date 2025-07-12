getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = false,
	
	["Rejoin When Update"] = true,

	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 250,

		["Safe Tree"] = {
			"Moon Blossom"
		}
	},

	Seed = {
		Buy = {
			Mode = "Custom", -- Custom , Auto
			Custom = {
				"Carrot",
				"Bamboo",
				"Pumpkin",
				"Daffodil",
				"Orange Tulip",
				"Watermelon",
				"Mushroom",
				"Nightshade",
				"Sugar Apple",
				"Ember Lily",
				"Burning Bud",
			}
		},
		Place = {
			Mode = "Lock", -- Select , Lock
			Select = {
				"Carrot",
				"Coconut",
				"Dragon Fruit",
				"Bamboo",
				"Pumpkin",
				"Daffodil",
				"Orange Tulip",
				"Watermelon",
				"Mushroom",
				"Nightshade",
				"Sugar Apple",
				"Ember Lily",
				"Burning Bud",
			},
			Lock = {
				"Sunflower",
				"Elephant Ears",
				"Dragon Pepper",
				"Bone Blossom"
			}
		}
	},

	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		Dino = true,
		
		["Traveling Shop"] = {
			"Bald Eagle",
			"Night Staff",
			"Star Caller"
		},
		Craft = {
			"Ancient Seed Pack",
			
			"Lightning Rod",
			"Anti Bee Egg",
		},
		Shop = {
			--"Traveler's Fruit",
			"Summer Seed Pack",
			"Hamster",
			"Oasis Egg",
			--"Delphinium",
			"Lily of the Valley",
		}
	},

	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Basic Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Watering Can",
			"Lightning Rod",
		},
		Lock = {
			"Master Sprinkler",
			"Godly Sprinkler",
			"Lightning Rod",
			"Watering Can",
		},
	},

	Eggs = {
		Place = {
			"Dinosaur Egg",
			"Primal Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
			"Rare Egg",
			"Common Summer Egg",
			"Rare Summer Egg",
			"Common Egg",
		},
		Buy = {
			"Anti Bee Egg",
			"Paradise Egg",
			"Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
			"Common Egg",
			"Rare Egg",
			"Common Summer Egg",
			"Rare Summer Egg",
		}
	},

	Pets = {
		["Upgrade Slot"] = {
			["Pet"] = {
				"Starfish",
			},
			["Limit Upgrade"] = 1,
			["Equip When Done"] = {
				"Blood Kiwi",
				"Rooster",
				"Seal",
			},
		},
		Locked = {
			"T-Rex",
			"Spinosaurus",
			"Brontosaurus",
			"Dragonfly",
			"Night Owl",
			"Queen Bee",
			"Raccoon",
			"Disco Bee",
			"Fennec Fox",
			"Disco Bee",
			"Butterfly",
			"Mimic Octopus",
			"Moon Cat",
			"Queen Bee",
			"Red Fox",
			"Blood Owl",
			"Blood Kiwi",
			"Night Owl",
			["Capybara"] = 3,
			["Triceratops"] = 5,
			["Rooster"] = 5,
		},
		LockPet_Weight = 6, -- if Weight >= 10 they will locked,
		Instant_Sell = {
			"Idk",
		}
	},

	Webhook = {
		UrlPet = "https://discord.com/api/webhooks/1392908710485164244/a8qAsqDiLG3W2Eqyw2l1WydHaUtEWXRmqE9Tj8xvdqd5JvFwUSFrHygW6v1UubzlvkAu",
		UrlSeed = "https://discord.com/api/webhooks/1392908808199602176/FwE2whuLZbj_4yfdWf_2hpCfkb4V-FFOhkO9Ke5JFP_4NKkJJokG5q8IE2hN0PUbbXXk",
		PcName = "ALL",

		Noti = {
			Seeds = {
				"Bone Blossom",
				"Dragon Pepper",
				"Elephant Ears",
			},
			SeedPack = {
				"Idk",
			},
			Pets = {
				"T-Rex",
				"Spinosaurus",
				"Brontosaurus",
				"Dragonfly",
				"Night Owl",
				"Queen Bee",
				"Raccoon",
				"Disco Bee",
				"Fennec Fox",
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Red Fox",
			},
			Pet_Weight_Noti = true,
		}
	},
}
License = "umTEBHmllI5M8SVYERRh5Nutv7RcYmWb"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
