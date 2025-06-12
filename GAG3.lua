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
        	"Bamboo",
        	"Carrot",
        	"Watermelon",
        	"Pumpkin",
        	"Mushroom",
        	"Beanstalk",
        	"Cacao",
        	"Pepper",
        	"Grape",
        	"Mango",
        	"Dragon Fruit",
        	"Coconut",
        	"Rose",
        	"Foxglove",
        	"Lilac",
        	"Ember Lily",
        	"Pink Lily",
        	"Purple Dahlia",
		}
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
		"Master Sprinkler",
	},

	["Eggs"] = {
		["Hatch"] = { -- มันจะสุ่มไขซื้อไข่วางไข่ เรียงจากบนลงล่างก่อน
			"Bee Egg",
			"Night Egg",
			"Premium Night Egg",
			"Bug Egg",
			"Exotic Bug Egg",
			"Mythical Egg",
			"Uncommnon Egg"
		},
		["Safe Eggs"] = { -- จะไม่วางหรือฟักไข่ให้
			"Idk",
		}
	},
	
	["Limit Upgrade Slot"] = 5, -- เป็นการปลด ค่าสูงสุดของการวางไข่เเละใช้สัตว์ (สูงสุด 5)
	["Equip When Done"] = { -- จะให้มันใส่สัตว์อะไรหลังจากปลดอันบนเสร็จเเล้ว
		"Blood Kiwi",
		"Kiwi"
	},

	["Webhook"] = {-- webhook เเจ้งเตือน ถ้าได้สัตว์ใน Noti Pets หรือพวกที่มี Noti อื่นๆ
		Url = "Url Here",
		PcName = "Threadripper pro 7995wx"
	},
	["Noti Seeds"] = { -- ที่จะให้มันเเจ้งเตือนใน webhook
		"Sunflower",
	},
	["Lock Seeds"] = { -- มันจะไม่ใช้ seed pack ที่เลือก
		"Sunflower",
	},
	["Noti Seed Packs"] = { -- ที่จะให้มันเเจ้งเตือนใน webhook
		"Idk"
	},
	["Lock Seed Packs"] = { -- มันจะไม่เปิด Seed pack นั้นๆให้
		"Idk"
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
		"Petal Bee",
		"Dragonfly",
		"Raccoon",
		"Red Fox",
		"Blood Owl",
    		"Kiwi",
		"Blood Kiwi", -- ใส่เเบบนี้หมายความว่า เก็บหมดไม่มี limit
	}
}
License = "X1uDG0QsdBLQ2OjCnluEJ1zFHwA71IKv"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
