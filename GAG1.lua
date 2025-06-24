getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = false,
	
	["Summer Harvest Event"] = true,
	
	["Limit Tree"] = { -- จำกัดจำนวนต้นไม้
		["Limit"] = 400, -- ถ้าต้นไม่ถึงที่ตั้งไว้
		["Sell Untill"] = 350 -- มันจะขายจนเหลือที่ตั้งตรงนี้
	},

	["Seed"] = {
		["Mode"] = "Custom", -- Custom , Auto
		["Custom"] = { -- ถ้าปรับเป็น custom มันจะซื้อเเค่ที่ใส่ในด้านล่าง
			"Carrot",
			"Tomato",
			"Watermelon",
			"Green Apple",
			"Sugar Apple",
			"Feijoa",
			"Loquat",
			"Bell Pepper",
			"Kiwi",
			"Pineapple",
			"Banana",
		}
	},
	
	["Craft Event"] = {
		"Lightning Rod",
		"Anti Bee Egg"
	},
	
	["Event Shop"] =  { -- จะให้ซื้ออะไรบ้างจาก event shop อยากได้อันไหนเพิ่ม เอา -- ออก
		"Flower Seed Pack",
		--"Nectarine",
		--"Hive Fruit",
		--"Honey Sprinkler",
		"Bee Egg",
		--"Bee Crate",
	},
	
	["Gear Shop"] = {
		"Master Sprinkler",
		"Watering Can",
		"Basic Sprinkler",
		"Godly Sprinkler",
		"Advanced Sprinkler"
	},
	["Gear Lock"] = {
		"Master Sprinkler",
		"Watering Can",
		"Lightning Rod",
		"Basic Sprinkler",
		"Godly Sprinkler",
		"Advanced Sprinkler"
	},

	["Eggs"] = {
		["Hatch"] = { -- มันจะสุ่มไขซื้อไข่วางไข่ เรียงจากบนลงล่างก่อน
			"Anti Bee Egg",
			"Paradise Egg",
			"Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Mythical Egg",
            		"Rare Summer Egg",
			"Uncommon Egg"
		},
		["Safe Eggs"] = { -- จะไม่วางหรือฟักไข่ให้
			"Bee Egg",
		}
	},
	
	["Limit Upgrade Slot"] = 1, -- เป็นการปลด ค่าสูงสุดของการวางไข่เเละใช้สัตว์ (สูงสุด 5)
	["Equip When Done"] = { -- จะให้มันใส่สัตว์อะไรหลังจากปลดอันบนเสร็จเเล้ว
		"Blood Kiwi",
		"Chicken"
	},

	["Webhook"] = {-- webhook เเจ้งเตือน ถ้าได้สัตว์ใน Noti Pets หรือพวกที่มี Noti อื่นๆ
		UrlPet = "Url Here",
		UrlSeed = "Url Here",
		PcName = "Threadripper pro 7995wx"
	},
	["Noti Seeds"] = { -- ที่จะให้มันเเจ้งเตือนใน webhook
		"Sunflower",
		"Dragon Pepper",
		"Elephant Ears"
	},
	["Lock Seeds"] = { -- มันจะไม่ใช้ seed ที่เลือก
		"Sunflower",
		"Dragon Pepper",
		"Elephant Ears",
		"Rosy Delight",
        	"Moon Melon",
		"Parasol Flower"
	},
	["Noti Seed Packs"] = { -- ที่จะให้มันเเจ้งเตือนใน webhook
		""
	},
	["Lock Seed Packs"] = { -- มันจะไม่เปิด Seed pack นั้นๆให้
		""
	},
	["Noti Pets"] = { -- สัตว์ที่จะให้มันเเจ้งเตือนใน webhook
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
	["Lock Pets"] = { -- สัตว์ที่จะเก็บไว้ไม่ขายไม่เอาไปเเลก slot
		"Disco Bee",
		"Butterfly",
		"Mimic Octopus",
		"Peacock",
		"Scarlet Macaw",
		"Moth",
		"Queen Bee",
		"Dragonfly",
		"Raccoon",
		"Red Fox",
		"Moon Cat",
		"Blood Kiwi", -- ใส่เเบบนี้หมายความว่า เก็บหมดไม่มี limit
		["Capybara"] = 5,
        	["Chicken"] = 5,
        	["Turtle"] = 5,
        	["Praying Mantis"] = 5,
	}
}
License = "umTEBHmllI5M8SVYERRh5Nutv7RcYmWb"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
