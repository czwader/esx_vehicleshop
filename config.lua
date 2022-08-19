Config = {}
Config.Locale = 'cs'

Config.DrawDistance = 20

Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true


Config.shops = {
	shop1 = {
		ShopEnteringPos =  vector3(-155.3599, -1348.3154, 29.9227),

		ShopInside = {
			Pos     = vector3(-144.1738, -1355.3391, 29.5824),
			Heading = 264.9440,
		},

		ShopOutside = { 
			Pos     = vector3(-151.2227, -1355.8848, 29.3776),
			Heading = 358.4012,
		},

		Categories = {
			[1] = {
				name = "test",
				label = "test"
			},
			[2] = {
				name = "test2",
				label = "test2"
			}
		},

		Cars = {
			[1] = {
				model = "adder",
				name = "Adder",
				price = 1,
				category = "test"
			},
			[2] = {
				model = "buffalo",
				name = "Buffalo",
				price = 1,
				category = "test2"
			}
		},
	},
	shop2 = {
		ShopEnteringPos =  vector3(-147.24,-1342.84,29.92),

		ShopInside = { 
			Pos     = vector3(-144.1738, -1355.3391, 29.5824),
			Heading = 264.9440,
		},

		ShopOutside = { 
			Pos     = vector3(-151.2227, -1355.8848, 29.3776),
			Heading = 358.4012,
		},
		
		Categories = {
			[1] = {
				name = "test3",
				label = "test3"
			},
			[2] = {
				name = "test4",
				label = "test4"
			}
		},

		Cars = {
			[1] = {
				model = "adder",
				name = "Adder",
				price = 1,
				category = "test3"
			},
			[2] = {
				model = "buffalo",
				name = "Buffalo",
				price = 1,
				category = "test4"
			}
		},
	}
}