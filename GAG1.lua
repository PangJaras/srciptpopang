getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = false,
	
	["Rejoin When Update"] = true,

	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 250,

		["Safe Tree"] = {
			"Sugar Apple",
			"Ember Lily",
			"Burning Bud"
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
			Mode = "Select", -- Select , Lock
			Select = {
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
				"Burning Bud"
			},
			Lock = {
				"Sunflower",
				"Elephant Ears",
				"Dragon Pepper",
			}
		}
	},

	["Seed Pack"] = {
		Locked = {
			"Sugar Apple"
		}
	},

	Events = {
		Dino = true,
		["Traveling Shop"] = {
			"Liberty Lily",
			"Firework Flower",
			--"Firework",
			"Bald Eagle",
			--"July 4th Crate",
		},
		["Summer Harvest"] = {
			["Do At Money"] = 1000000,
			["Point Limit"] = 15000,
		},
		Craft = {
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
			"Basic Sprinkler",
			"Lightning Rod",
			"Watering Can",
			"Advanced Sprinkler"
		},
	},

	Eggs = {
		Place = {
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
			"Disco Bee",
			"T-Rex",
			"Triceratops",			
			"Butterfly",
			"Fennec Fox",
			"Hyacinth Macaw",
			"Mimic Octopus",
			"Toucan",
			"Peacock",
			"Scarlet Macaw",
			"Echo Frog",
			"Moon Cat",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Red Fox",
			"Blood Owl",
			"Blood Kiwi",
			"Night Owl",
			["Rooster"] = 5,
		},
		LockPet_Weight = 10, -- if Weight >= 10 they will locked,
		Instant_Sell = {
			"Dog",
		}
	},

	Webhook = {
		UrlPet = "",
		UrlSeed = "",
		PcName = "PC",

		Noti = {
			Seeds = {
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
			},
			SeedPack = {
				"Idk",
			},
			Pets = {
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
