local mType = Game.createMonsterType("Ripper Spectre")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "19/03/2022"
}

monster.description = "a ripper spectre"
monster.experience = 3500
monster.outfit = {
	lookType = 1119,
	lookHead = 101,
	lookBody = 39,
	lookLegs = 61,
	lookFeet = 39,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1724
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Haunted Cellar, Buried Cathedral."
}

monster.health = 3800
monster.maxHealth = 3800
monster.race = "blood"
monster.corpse = 30026
monster.speed = 380
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 74450, maxCount = 4},
	{name = "Great Spirit Potion", chance = 22730, maxCount = 2},
	{name = "Two Handed Sword", chance = 11500},
	{name = "Terra Rod", chance = 6920},
	{name = "Emerald Bangle", chance = 3650},
	{name = "Silver Brooch", chance = 3570},
	{name = "Twin Hooks", chance = 3070},
	{name = "Springsprout Rod", chance = 2190},
	{id = 30083, name = "green ectoplasm", chance = 2160},
	{name = "Serpent Sword", chance = 1080},
	{name = "Coral Brooch", chance = 900},
	{name = "Hexagonal Ruby", chance = 780},
	{name = "Assassin Dagger", chance = 680},
	{name = "Spike Sword", chance = 230},
	{name = "Wyvern Fang", chance = 100}
}

monster.attacks = {
	-- Basic attack (0-350 physical, effect: poison 10hp/tick)
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		minDamage = 0,
		maxDamage = -370,
		condition = {type = CONDITION_POISON, totalDamage = 10, interval = 4000}
	},
	-- Poison Ball (210-300 earth, on self)
	{
		name = "poisonBall",
		interval = 2000,
		chance = 20,
		minDamage = -210,
		maxDamage = -300
	},
	-- Explosion Ball (150-300 earth, on self)
	{
		name = "explosionBall",
		interval = 2000,
		chance = 15,
		minDamage = -150,
		maxDamage = -300
	},
	-- Tiny Groundshaker T-Wave (80-200 life drain)
	{
		name = "tinyGroundshakerTWave",
		interval = 2000,
		chance = 20,
		minDamage = -80,
		maxDamage = -200
	}
}

monster.defenses = {
	defense = 69,
	armor = 69,
	-- Healing (60-140 heal)
	{
		name = "monsterHealing",
		interval = 2000,
		chance = 10,
		minDamage = 60,
		maxDamage = 140
	}
}

-- Reflect (Odbija ataki z ziemi)
monster.reflects = {
	{type = COMBAT_EARTHDAMAGE, percent = 133}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
