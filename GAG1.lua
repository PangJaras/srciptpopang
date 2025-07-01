getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = false,
	
	["Limit Tree"] = {
		["Limit"] = 500,
		["Destroy Untill"] = 350,
		
		["Safe Tree"] = {
			"Moon Blossom",
			"Feijoa",
			"Moon Mango",
			"Moon Melon",
			"Sugar Apple",
			"Pitcger Plant",			
			"Loquat"
		}
	},

	Seed = {
		Buy = {
			Mode = "Custom", -- Custom , Auto
			Custom = {
				"Carrot",
				"Tomato",
				"Watermelon",
				"Green Apple",
				"Bell Pepper",
				"Kiwi",
				"Pineapple",
				"Banana",
				"Loquat",
				"Pitcger Plant",
				"Sugar Apple",
				"Feijoa",
			}
		},
		Place = {
			Mode = "Select", -- Select , Lock
			Select = {
				"Carrot",
				"Tomato",
				"Watermelon",
				"Green Apple",
				"Bell Pepper",
				"Kiwi",
				"Pineapple",
				"Banana",
				"Loquat",
				"Pitcger Plant",
				"Sugar Apple",
				"Feijoa"
			},
			Lock = {
				"Sunflower",
				"Dragon Pepper",
				"Moon Melon",
				"Rosy Delight",
				"Moon Blossom",
				"Elephant Ears",
			}
		}
	},
	
	["Seed Pack"] = {
		Locked = {
			
		}
	},
	
	Events = {
		["Summer Harvest"] = {
			["Do At Money"] = 1000000,
			["Point Limit"] = 20000,
		},
		Craft = {
			"Lightning Rod",
			"Anti Bee Egg"
		},
		Shop = {
			"Traveler's Fruit",
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
			"Godly Sprinkler",
			"Basic Sprinkler",
			"Watering Can",
			"Advanced Sprinkler"
		},
		Lock = {
			"Master Sprinkler",
			"Godly Sprinkler",
			"Basic Sprinkler",
			"Watering Can",
			"Advanced Sprinkler"
		},
	},

	Eggs = {
		Place = {
			"Anti Bee Egg",
			"Paradise Egg",
			"Oasis Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
			"Uncommon Egg"
		},
		Buy = {
			"Paradise Egg",
			"Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
			"Uncommon Egg"
		}
	},
	
	Pets = {
		["Upgrade Slot"] = {
			["Pet"] = {
				
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				"Blood Kiwi",
				"Chicken"
			},
		},
		Locked = {
			"Disco Bee",
			"Butterfly",
			"Fennec Fox",
			"Hyacinth Macaw",
			"Mimic Octopus",
			"Toucan",
			"Peacock",
			"Scarlet Macaw",
			"Echo Frog",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Red Fox",
			"Blood Owl",
			"Blood Kiwi",
			"Night Owl",
			["Capybara"] = 5,
			["Chicken"] = 5,
			["Giant Ant"] = 5,
		}
	},

	Webhook = {
		UrlPet = "Url Here",
		UrlSeed = "Url Here",
		PcName = "Threadripper pro 7995wx",
		
		Noti = {
			Seeds = {
				"Sunflower",
				"Dragon Pepper",
				"Moon Melon",
				"Rosy Delight",
				"Moon Blossom",
				"Elephant Ears",
			},
			SeedPack = {
				"Idk"
			},
			Pets = {
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Peacock",
				"Scarlet Macaw",
				"Moth",
				"Brown Mouse",
				"Queen Bee",
				"Dragonfly",
				"Raccoon",
				"Red Fox",
			},
		}
	},
}
License = "umTEBHmllI5M8SVYERRh5Nutv7RcYmWb"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
