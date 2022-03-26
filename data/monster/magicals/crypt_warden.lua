local mType = Game.createMonsterType("Crypt Warden")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "26/03/2022"
}

monster.description = "a crypt warden"
monster.experience = 8400
monster.outfit = {
	lookType = 1190,
	lookHead = 41,
	lookBody = 38,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1805
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh Catacombs."
}

monster.health = 8300
monster.maxHealth = 8300
monster.race = "blood"
monster.corpse = 31650
monster.speed = 290
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
	chance = 10
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 100000, maxCount = 6},
	{name = "cyan crystal fragment", chance = 19770},
	{name = "lamassu horn", chance = 16890},
	{name = "lamassu hoof", chance = 10610},
	{name = "small amethyst", chance = 10570},
	{name = "gold ingot", chance = 6810},
	{name = "green crystal fragment", chance = 3990},
	{name = "green gem", chance = 3930},
	{name = "elven amulet", chance = 880}
}

monster.attacks = {
	-- Basic attack (0-600 physical)
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		minDamage = 0,
		maxDamage = -600
	},
	-- Holy Beam (300-500 holy)
	{
		name = "HolyBeamHoly",
		chance = 15,
		minDamage = -300,
		maxDamage = -500
	},
	-- Groundshaker Cross (250-350 earth, on self)
	{
		name = "GroundshakerCrossEarthSelf",
		chance = 8,
		minDamage = -250,
		maxDamage = -350
	},
	-- Groundshaker X-Cross (250-350 earth, on self)
	{
		name = "GroundshakerXCrossEarthSelf",
		chance = 12,
		minDamage = -250,
		maxDamage = -350
	},
	-- Groundshaker Circle (250-350 earth, on self)
	{
		name = "GroundshakerCircleEarthSelf",
		chance = 13,
		minDamage = -250,
		maxDamage = -350
	}
}

monster.defenses = {
	defense = 84,
	armor = 84
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = -35}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
