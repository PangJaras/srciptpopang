getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = false,
	
	["Limit Tree"] = { -- จำกัดจำนวนต้นไม้
		["Limit"] = 400, -- ถ้าต้นไม่ถึงที่ตั้งไว้
		["Sell Untill"] = 350 -- มันจะขายจนเหลือที่ตั้งตรงนี้
	},

	["Seed"] = {
		["Mode"] = "Custom", -- Custom , Auto
		["Custom"] = { -- ถ้าปรับเป็น custom มันจะซื้อเเค่ที่ใส่ในด้านล่าง
			"Carrot",
			"Bamboo",
			"Pumpkin",
			"Daffodil",
			"Orange Tulip",
			"Watermelon",
			"Mushroom",
			"Nightshade",
			"Beanstalk",
		}
	},
	
	["Craft Event"] = {
		"Crafters Seed Pack",
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
		"Godly Sprinkler",
		"Advanced Sprinkler"
	},
	["Gear Lock"] = {
		"Master Sprinkler"
	},

	["Eggs"] = {
		["Hatch"] = { -- มันจะสุ่มไขซื้อไข่วางไข่ เรียงจากบนลงล่างก่อน
			"Bug Egg",
			"Bee Egg",
			"Anti Bee Egg",
			"Exotic Bug Egg",
			"Mythical Egg",
			"Uncommon Egg"
		},
		["Safe Eggs"] = { -- จะไม่วางหรือฟักไข่ให้
			"Bee Egg",
		}
	},
	
	["Limit Upgrade Slot"] = 5, -- เป็นการปลด ค่าสูงสุดของการวางไข่เเละใช้สัตว์ (สูงสุด 5)
	["Equip When Done"] = { -- จะให้มันใส่สัตว์อะไรหลังจากปลดอันบนเสร็จเเล้ว
		"Blood Kiwi",
		"Kiwi"
	},

	["Webhook"] = {-- webhook เเจ้งเตือน ถ้าได้สัตว์ใน Noti Pets หรือพวกที่มี Noti อื่นๆ
		UrlPet = "Url Here",
		UrlSeed = "Url Here",
		PcName = "Threadripper pro 7995wx"
	},
	["Noti Seeds"] = { -- ที่จะให้มันเเจ้งเตือนใน webhook
		"Sunflower",
	},
	["Lock Seeds"] = { -- มันจะไม่ใช้ seed pack ที่เลือก
		"Sunflower",
		"Bendboo",
		"Ember Lily",
		"Sugar Apple",
		"Dragon Pepper",
		"Cocovine"
	},
	["Noti Seed Packs"] = { -- ที่จะให้มันเเจ้งเตือนใน webhook
		"Idk"
	},
	["Lock Seed Packs"] = { -- มันจะไม่เปิด Seed pack นั้นๆให้
		"Flower Seed Pack"
	},
	["Noti Pets"] = { -- สัตว์ที่จะให้มันเเจ้งเตือนใน webhook
		"Queen Bee",
		"Petal Bee",
		"Dragonfly",
		"Raccoon",
		"Red Fox",
	},
	["Lock Pets"] = { -- สัตว์ที่จะเก็บไว้ไม่ขายไม่เอาไปเเลก slot
		"Queen Bee",
		"Disco Bee",
		"Butterfly",		
		"Petal Bee",
		"Dragonfly",
		"Raccoon",
		"Red Fox",
		"Blood Owl",
		"Blood Kiwi", -- ใส่เเบบนี้หมายความว่า เก็บหมดไม่มี limit
	}
}
License = "pYTVIT8AzmavMxhYrfowQJ4ijfefnU37"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
