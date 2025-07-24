getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,
	
	["Low Cpu"] = true,
	["Auto Rejoin"] = true,
	
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 290,

		["Safe Tree"] = {
			"Moon Blossom",
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
			"Koi",
		},
		Restocks_limit = 5000000,
		MinimumChi = 10
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
				["Starfish"] = { 5, 100 },
			},
			["Limit Upgrade"] = 2,
			["Equip When Done"] = {
				["Seal"] = { 1, 70, 1 }, -- 1 mean equip only 1 pet , 70 mean equip only level pet lower than 70 the one on the last mean first priority will ues first if possible 
				["Starfish"] = { 1, 70 },
				["Koi"] = { 1, 70 },
				["Tanuki"] = { 1, 70 },
				["Tanchozuru"] = { 1, 70 },
				["Kappa"] = { 1, 70 },
				["Kitsune"] = { 1, 70 },
				["Dilophosaurus"] = { 1, 70 },
				["Moon Cat"] = { 1, 70 },
				["Capybara"] = { 1, 70 },
				["Spinosaurus"] = { 1, 70 },
				["Bear Bee"] = { 1, 70 },
				["T-Rex"] = { 1, 70 },
				["Brontosaurus"] = { 1, 70 },
				["Disco Bee"] = { 1, 70 },
				["Butterfly"] = { 1, 70 },
				["Queen Bee"] = { 1, 70 },
				["Dragonfly"] = { 1, 70 },
				["Raccoon"] = { 1, 70 },
				["Fennec Fox"] = { 1, 70 },
				["Mimic Octopus"] = { 1, 70 },
				["Red Fox"] = { 1, 70 },
				["Blood Owl"] = { 1, 70 },
			},
		},
		Locked = {
			"Kitsune",
			"Dragonfly",
			"T-Rex",
			"Spinosaurus",
			"Raccoon",
			"Mimic Octopus",
			"Butterfly",
			"Disco Bee",
			"Fennec Fox",
			"Queen Bee",
			"Red Fox",
			"Koi",
			"Kappa",
			"Night Owl",
			"Blood Owl",
			"Blood Kiwi",
			"Pterodactyl",
			"Brontosaurus",
			["Nihonzaru"] = 2,
			["Starfish"] = 10,
			["Rooster"] = 5,
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
