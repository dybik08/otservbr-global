local mType = Game.createMonsterType("Cobra Assassin")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "16/03/2022"
}

monster.description = "a cobra assassin"
monster.experience = 6980
monster.outfit = {
	lookType = 1217,
	lookHead = 2,
	lookBody = 2,
	lookLegs = 77,
	lookFeet = 1,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1775
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Cobra Bastion."
}

monster.health = 8200
monster.maxHealth = 8200
monster.race = "blood"
monster.corpse = 31547
monster.speed = 280
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
	chance = 10,
	{text = "Hey, maybe you want to strike a deal... no?", yell = false},
	{text = "Stand and deliver! Your money... AND your life actually!", yell = false},
	{text = "You will not leave this place breathing!", yell = false}
}

-- order descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 74990, maxCount = 9},
	{name = "opal", chance = 33630, maxCount = 5},
	{name = "small emerald", chance = 27820, maxCount = 3},
	{name = "knife", chance = 23610},
	{id = 3307, name = "scimitar", chance = 17630},
	{name = "cobra crest", chance = 14990},
	{name = "protection amulet", chance = 14090},
	{name = "bone sword", chance = 9860},
	{name = "heavy machete", chance = 7430},
	{id = 16121, name = "green crystal shard", chance = 7380},
	{name = "machete", chance = 5500},
	{id = 9058, name = "gold ingot", chance = 5140},
	{name = "carlin sword", chance = 4700},
	{id = 5944, name = "soul orb", chance = 1810},
	{id = 16126, name = "red crystal fragment", chance = 1030},
	{id = 31297, name = "empty ritual flask", chance = 100}
}

monster.attacks = {
	-- Basic attack (0-500 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- Eruption Ball (350-500 physical, on self)
	{name = "EruptionBallPhysicalSelf", interval = 2000, chance = 10, minDamage = -350, maxDamage = -500},
	-- Shorter Poison T-Wave (240-400 earth)
	{name = "ShorterPoisonTWaveEarth", interval = 2000, chance = 15, minDamage = -240, maxDamage = -400},
	-- Sparky Beam (380-500 physical)
	{name = "SparkyBeamPhysical", interval = 2000, chance = 92, minDamage = -380, maxDamage = -500}
}

monster.defenses = {
	defense = 81,
	armor = 81
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
