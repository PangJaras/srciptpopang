getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = false,
	
	["Limit Tree"] = {
		["Limit"] = 800,
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
				"Avocado",
				"Banana",
				"Pineapple",
				"Kiwi",
				"Prickly Pear",
				"Loquat",
				"Pitcger Plant",
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
				"Avocado",
				"Banana",
				"Pineapple",
				"Kiwi",
				"Prickly Pear",
				"Loquat",
				"Pitcger Plant",
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
			["Do At Money"] = 10000000,
			["Point Limit"] = 50000,
		},
		Craft = {
			"Lightning Rod",
			"Honeysuckle",
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
			"Rere Summer Egg",
			"Paradise Egg",
			"Oasis Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg"
		},
		Buy = {
			"Paradise Egg",
			"Rere Summer Egg",
			"Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
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
			"Moon Cat",
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
