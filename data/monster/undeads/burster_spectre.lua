local mType = Game.createMonsterType("Burster Spectre")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "19/03/2022"
}

monster.description = "a Burster Spectre"
monster.experience = 6000
monster.outfit = {
	lookType = 1122,
	lookHead = 7,
	lookBody = 19,
	lookLegs = 86,
	lookFeet = 19,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1726
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Haunted Tomb west of Darashia, Buried Cathedral."
}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "blood"
monster.corpse = 30163
monster.speed = 400
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
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "We came tooo thiiiiss wooorld to... get youuu!", yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 74610, maxCount = 7},
	{name = "great spirit potion", chance = 23380, maxCount = 3},
	{name = "protection amulet", chance = 7690},
	{name = "life crystal", chance = 7440},
	{name = "wand of voodoo", chance = 3470},
	{name = "wand of cosmic energy", chance = 3000},
	{name = "stone skin amulet", chance = 2270},
	{name = "glacier amulet", chance = 2110},
	{name = "dragon necklace", chance = 2080},
	{id = 30082, name = "blue ectoplasm", chance = 2060},
	{name = "platinum amulet", chance = 1680},
	{name = "orb", chance = 1410},
	{name = "hailstorm rod", chance = 890},
	{name = "glacial rod", chance = 630},
	{name = "hexagonal ruby", chance = 600},
	{name = "garlic necklace", chance = 510},
	{name = "elven amulet", chance = 340},
	{name = "shockwave amulet", chance = 290},
	{name = "strange symbol", chance = 170},
	{name = "mind stone", chance = 150}
}

monster.attacks = {
	-- Basic attack (0-400 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -400},
	-- Ice Box (250-350 ice, on target)
	{
		name = "iceBox",
		interval = 2000,
		chance = 25,
		minDamage = -260,
		maxDamage = -350
	},
	-- Icy Flake Cone-Wave (200-380 ice)
	{
		name = "icyFlakeConeWave",
		interval = 2000,
		chance = 25,
		minDamage = -200,
		maxDamage = -380
	},
	-- Blue Stars Box (200-300 physical, on self)
	{
		name = "blueStarsBox",
		interval = 2000,
		chance = 25,
		minDamage = -200,
		maxDamage = -300
	},
	-- Greater Blue Stars Ball (300-400 life drain, on self)
	{
		name = "greaterBlueStarsBall",
		interval = 2000,
		chance = 25,
		minDamage = -300,
		maxDamage = -400
	}
}

monster.defenses = {
	defense = 70,
	armor = 70,
	{
		name = "combat",
		interval = 2000,
		chance = 30,
		type = COMBAT_HEALING,
		minDamage = 150,
		maxDamage = 200,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	}
}

monster.reflects = {
	-- Reflect (Reflect ice attacks)
	{type = COMBAT_ICEDAMAGE, percent = 133},
	-- Healing (150-200 heal)
	{name = "monsterHealing", interval = 2000, chance = 8, minDamage = 150, maxDamage = 200}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
