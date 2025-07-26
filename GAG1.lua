getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,
	
	["Low Cpu"] = false,
	["Auto Rejoin"] = false,
	
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 290,

		["Safe Tree"] = {
			"Moon Blossom",
			"Burning Bud",
			"Embar Lily",
			"Cacao",
			"Sugar Apple",
			"Spiked Mango",
			"Giant Pinecone",
		  	"Beanstalk",
			"Fossilight",
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
				"Mushroom",
				"Avocado",
				"Feijoa",
				"Cauliflower",
				"Loquat",
				"Green Apple",
				"Nightshade",
				"Firefly Fern",
				"Soft Sunshine",
				"Zen Rocks",
				"Hinomai",
				"Beanstalk",
				"Ember Lily",
				"Sunflower",
				"Sugar Apple",
				"Burning Bud",
				"Giant Pinecone",
				"Spiked Mango",
			}
		},
		Place = {
			Mode = "Lock", -- Select , Lock
			Select = {
				"Carrot"
			},
			Lock = {
				"Maple Apple",
				"Tranquil Bloom",
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
				"Moon Melon",
				"Easter Egg",
				"Moon Mango",
				"Bone Blossom",
				"Fossilight",
			}
		}
	},

	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		["Zen Event"] = {
			["Restocking"] = { -- Minimumthing to restock
				Max_Restocks_Price = 3_000_000,
				Minimum_Money = 10_000_000,
				Minimum_Chi = 200
			},
			["Doing"] = {
				Minimum_Money = 30_000_000, -- minimum money to start play this event
				First_Upgrade_Tree = 4,
				Maximum_Chi = 250,
			}
		},
		["Traveling Shop"] = {
			"Bee Egg",
		},
		Craft = {
			"Ancient Seed Pack",
			"Anti Bee Egg",
			"Primal Egg",
		},
		Shop = {
			"Zen Egg",
			"Zen Seed Pack",
			"Spiked Mango",
			"Pet Shard Tranquil",
			"Pet Shard Corrupted",
			"Koi",
			"Soft Sunshine",
			"Sakura Bush",
			"Raiju",
		},
		Start_Do_Honey = 2_000_000 -- start trade fruit for honey at money
	},

	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
			"Level Up Lollipop",
			"Medium Treat",
			"Medium Toy",
		},
		Lock = {
			"Master Sprinkler"
		},
	},

	Eggs = {
		Place = {
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
			"Rare Summer Egg",
			"Mythical Egg",
			"Common Summer Egg",
			"Common Egg",
		},
		Buy = {
			"Bee Egg",
			"Oasis Egg",
			"Paradise Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Rare Summer Egg",
			"Bug Egg",
			"Mythical Egg",
			"Common Summer Egg",
			"Common Egg",
		}
	},

	Pets = {
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 6, 100, 1 },
			},
			["Limit Upgrade"] = 3,
			["Equip When Done"] = { 
				["Seal"] = { 1, 70, 1 },
				["Starfish"] = { 1, 70 },
				["Tanchozuru"] = { 5, 70 },
			},
		},
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
		Locked = {
			"Corrupted Kitsune",
			"Raiju",
			"Koi",
			"Tanuki",
			"Tanchozuru",
			"Kappa",
			"Kitsune",
			"Dilophosaurus",
			"Moon Cat",
			"Capybara",
			"Spinosaurus",
			"Bear Bee",
			"T-Rex",
			"Brontosaurus",
			"Disco Bee",
			"Butterfly",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Fennec Fox",
			"Mimic Octopus",
			"Red Fox",
			"Blood Owl",
			["Starfish"] = 10,
			["Tanchozuru"] = 5,
		},
		LockPet_Weight = 6, -- if Weight >= 10 they will locked,
		Instant_Sell = {		
			"Shiba Inu",
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
				"Tranquil Bloom",
				"Fossilight",
				"Maple Apple",
				"Elephant Ears",
				"Dragon Pepper",
				"Bone Blossom"
			},
			SeedPack = {
				"Idk"
			},
			Pets = {
				"T-Rex",
				"Corrupted Kitsune",
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
