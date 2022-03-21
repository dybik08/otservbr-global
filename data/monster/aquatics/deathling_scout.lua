local mType = Game.createMonsterType("Deathling Scout")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "21/03/2022"
}

monster.description = "a deathling scout"
monster.experience = 6300
monster.outfit = {
	lookType = 413,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1667
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Deepling Ancestorial Grounds and Sunken Temple."
}

monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 28629
monster.speed = 310
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100
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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "VBOX°O", yell = false},
	{text = 'O(J-"LJ-T =|-°', yell = false}
}

-- ordered descending
monster.loot = {
	{name = "crystalline arrow", chance = 24890, maxCount = 25},
	{name = "Vortex Bolt", chance = 22590, maxCount = 25},
	{name = "Small Emerald", chance = 21600, maxCount = 12},
	{name = "Deepling Warts", chance = 20880},
	{name = "Deepling Filet", chance = 13380},
	{name = "Deeptags", chance = 12780},
	{name = "Small Enchanted Sapphire", chance = 11230, maxCount = 8},
	{name = "Deepling Ridge", chance = 9230},
	{name = "Great Health Potion", chance = 8410},
	{name = "Great Mana Potion", chance = 8270},
	{name = "Eye of a Deepling", chance = 5420},
	{name = "Heavy Trident", chance = 5360},
	{name = "Warrior's Axe", chance = 2940},
	{id = 3052, name = "life ring", chance = 2820}, -- Life ring
	{name = "Warrior's Shield", chance = 2530},
	{name = "Fish Fin", chance = 730},
	{name = "Necklace of the Deep", chance = 390}
}

monster.attacks = {
	-- Basic attack (0-300 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
	-- Ranged attack (150-350 physical) (Spear)
	{
		name = "rangedAttackSpear",
		interval = 4000,
		chance = 15,
		minDamage = -150,
		maxDamage = -350
	},
	-- Explosion Strike (150-300 physical, on target) (Big Stone)
	{
		name = "explosionStrikeLargeRock",
		interval = 4000,
		chance = 15,
		minDamage = -150,
		maxDamage = -300
	},
	-- Groundshaker Ball (350-550 earth, on self)
	{
		name = "groundshakerBallEarth",
		interval = 4000,
		chance = 10,
		minDamage = -350,
		maxDamage = -550
	}
}

monster.defenses = {
	defense = 72,
	armor = 72
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
