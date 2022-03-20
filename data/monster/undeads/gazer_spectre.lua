local mType = Game.createMonsterType("Gazer Spectre")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "20/03/2022"
}

monster.description = "a Gazer Spectre"
monster.experience = 4200
monster.outfit = {
	lookType = 1122,
	lookHead = 94,
	lookBody = 20,
	lookLegs = 77,
	lookFeet = 20,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1725
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Haunted Temple, Buried Cathedral."
}

monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 30167
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Deathhh... is... a.... doooor!!", yell = false},
	{text = "Tiiimeee... is... a... windowww!", yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 73550, maxCount = 5},
	{name = "Small Diamond", chance = 12230},
	{name = "Brown Crystal Splinter", chance = 11010},
	{name = "Small Sapphire", chance = 10570},
	{id = 3039, name = "red gem", chance = 9740},
	{name = "Red Crystal Fragment", chance = 8170},
	{id = 29299, name = "golden idol of Tukh", chance = 5190},
	{name = "Small Enchanted Ruby", chance = 5080},
	{name = "Yellow Gem", chance = 4290},
	{name = "Wand of Draconia", chance = 3040},
	{name = "Wand of Inferno", chance = 2510},
	{id = 30084, name = "red ectoplasm", chance = 1710},
	{name = "Magma Coat", chance = 1590},
	{name = "Onyx Chip", chance = 1380, maxCount = 2},
	{name = "Prismatic Quartz", chance = 1270},
	{name = "Small Enchanted Emerald", chance = 1180, maxCount = 3},
	{name = "Hexagonal Ruby", chance = 860}
}

monster.attacks = {
	-- Basic attack (0-350 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -350},
	-- Fire Chain (300-400 fire)
	{
		name = "singlefirechain",
		interval = 2000,
		chance = 25,
		minDamage = -300,
		maxDamage = -400,
		target = true
	},
	-- Flame Box (200-350 fire, on target)
	{
		name = "flameBox",
		interval = 2000,
		chance = 15,
		minDamage = -200,
		maxDamage = -350
	},
	-- Red Stars Strike (300-400 life drain, on target)
	{
		name = "redStarsStrike",
		interval = 2000,
		chance = 15,
		minDamage = -300,
		maxDamage = -400
	}
}

monster.defenses = {
	defense = 78,
	armor = 78,
	-- Healing (100-200 heal)
	{
		name = "monsterHealing",
		interval = 2000,
		chance = 10,
		minDamage = 100,
		maxDamage = 200
	}
}

monster.reflects = {
	{type = COMBAT_FIREDAMAGE, percent = 133}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 85},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 60},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -30},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
