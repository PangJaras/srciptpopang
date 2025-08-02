getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,

	Collect_Cooldown = 60, -- cooldown to collect fruit
	JustFuckingCollectAll = true, -- Collect all (fruit not wait mutation)

	["Low Cpu"] = false,
	["Auto Rejoin"] = false,

	["Rejoin When Update"] = true,
	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Untill"] = 280,

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
			Mode = "Select", -- Select , Lock
			Select = {
				"Carrot",
				"Tomato",
				"Blueberry",
				"Corn",
				"Bamboo",
				"Starwberry",
				"Apple",
				"Pumpkin",
				"OrangeTulip",
				"Pepper",
				"Cactus",
				"Watermelon",
				"Mushroom",
				"GiantPinecone"
			},
			Lock = {
				"Maple Apple",
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
				"Tranquil Bloom",
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
		["Cook Event"] = {
			Minimum_Money = 30, -- minimum money to start play this event
		},
		["Zen Event"] = {
			["Restocking"] = { -- Minimumthing to restock
				Max_Restocks_Price = 5_000_000,
				Minimum_Money = 1_000,
				Minimum_Chi = 200
			},
			["Doing"] = {
				Minimum_Money = 30, -- minimum money to start play this event
				First_Upgrade_Tree = 4,
				Maximum_Chi = 250,

				-- // thing to skip doing
				Skip_Fox = false, -- Skip The Middle Fox Trade (Corrupted Kitsune)
				Skip_Corrupted_OldMan = false, -- Skip The OldMan Trade (Kodama)
				-- If u need to skip Tranquill OldMan Set "First Upgrade Tree" To 0 and Max Chi To 99999
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
			"Zenflare",
			"Zen Seed Pack",
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
			"Watering Can",
			"Medium Treat",
			"Medium Toy",
		},
		Lock = {
			"Watering Can",
		},
	},

	Eggs = {
		Place = {
			"Gourmet Egg",
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
				["Starfish"] = { 6, 70 },
			},
		},
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
			"Corrupted Kitsune",
			"French Fry Ferret",
		 	"Mochi Mouse",
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
		LockPet_Weight = 5, -- if Weight >= 10 they will locked,
		Instant_Sell = {		
			"Shiba Inu",
			"Dog",
		}
	},

	Webhook = {
		UrlPet = "https://discord.com/api/webhooks/1399275807074942986/Y8pLYZ6617b1SvXR3PAjqEqPio6zhAGvZFUML2MGGW6glcAGcTbtFfMbIWGaHAtDQipI",
		UrlSeed = "xxx",
		PcName = "PC-ALL 2-13",

		Noti = {
			Seeds = {
				"Sunflower",
				"Fossilight",
				"Tranquil Bloom",
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
				"French Fry Ferret",
				"Mochi Mouse",
				"Corrupted Kitsune",
				"Raiju",
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
