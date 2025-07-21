getgenv().ConfigsKaitun = {
	["Low Cpu"] = false,

	["Rejoin When Update"] = true,

	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 300,

		["Safe Tree"] = {
			"Moon Blossom",
			"Bone Blossom",
			"Moon Melon",
			"Horned Dinoshroom",
			"Firefly Fern",
			"Fossilight"
		}
	},


	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = {
				"Carrot",
				"Bamboo",
				"Pumpkin",
				"Daffodil",
				"Orange Tulip",
				"Watermelon",
				"Beanstalk",
				"Mushroom",
				"Pepper",
				"Grape",
				"Mango",
				"Cacao",
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
			},
			Lock = {
				"Sunflower",
				"Fossilight",
				"Maple Apple",
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
			"Star Caller",
			"Bee Egg"
		},
		Craft = {
			"Primal Egg",

			"Lightning Rod",
			"Anti Bee Egg",
		},
		Shop = {
			"Zen Seed Pack",
			"Zen Egg",
			"Zenflare",
			"Soft Sunshine",
			"Koi",
			"Spiked Mango",
			"Pet Shard Tranquil"
		}
	},

	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Basic Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Watering Can"
		},
		Lock = {
			"Master Sprinkler",
		},
	},

	Eggs = {
		Place = {
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
			"Rare Egg",
			"Rare Summer Egg",
		},
		Buy = {
			"Anti Bee Egg",
			"Paradise Egg",
			"Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
			"Rare Egg",
			"Rare Summer Egg",
			"Common Egg"
		}
	},

	Pets = {
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				"Starfish",
			},
			["Limit Upgrade"] = 1,
			["Equip When Done"] = {
				"Blood Kiwi",
				"Rooster",
				"Tanchozuru",
			},
		},
		Locked = {
			"Kitsune",
			"Kappa",
			"T-Rex",
			"Spinosaurus",
			"Dragonfly",
			"Night Owl",
			"Queen Bee",
			"Raccoon",
			"Disco Bee",
			"Fennec Fox",
			"Disco Bee",
			"Butterfly",
			"Mimic Octopus",
			"Queen Bee",
			"Red Fox",
			"Blood Owl",
			"Blood Kiwi",
			"Pterodactyl",
			"Brontosaurus",
			["Nihonzaru"] = 5,
			["Rooster"] = 5,
			["Tanchozuru"] = 5,
		},
		LockPet_Weight = 6, -- if Weight >= 10 they will locked,
		Instant_Sell = {
			"Dog",
		}
	},

	Webhook = {
		UrlPet = "https://discord.com/api/webhooks/1392908710485164244/a8qAsqDiLG3W2Eqyw2l1WydHaUtEWXRmqE9Tj8xvdqd5JvFwUSFrHygW6v1UubzlvkAu",
		UrlSeed = "https://discord.com/api/webhooks/1392908808199602176/FwE2whuLZbj_4yfdWf_2hpCfkb4V-FFOhkO9Ke5JFP_4NKkJJokG5q8IE2hN0PUbbXXk",
		PcName = "All PC2-13",

		Noti = {
			Seeds = {
				"Sunflower",
				"Fossilight",
				"Maple Apple",
				"Elephant Ears",
				"Dragon Pepper",
				"Bone Blossom"
			},
			SeedPack = {
				"Idk",
			},
			Pets = {
				"T-Rex",
				"Kitsune",
				"Spinosaurus",
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
