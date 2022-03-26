local mType = Game.createMonsterType("Cobra Scout")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "17/03/2022"
}

monster.description = "a cobra scout"
monster.experience = 7310
monster.outfit = {
	lookType = 1217,
	lookHead = 1,
	lookBody = 1,
	lookLegs = 101,
	lookFeet = 78,
	lookAddons = 2,
	lookMount = 0
}

monster.raceId = 1776
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

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 31635
monster.speed = 300
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
	targetDistance = 4,
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
	{text = "Think I can't see you? Think again...", yell = false},
	{text = "You don't stand a chance!", yell = false},
	{text = "What are you looking for?", yell = false}
}

monster.loot = {
	{id = 3035, name = "platinum coin", chance = 74000, maxCount = 9},
	{name = "opal", chance = 24670, maxCount = 5},
	{id = 774, name = "earth arrow", chance = 20900, maxCount = 28},
	{name = "cobra crest", chance = 15450},
	{name = "cheesy figurine", chance = 11940},
	{name = "stone skin amulet", chance = 6140},
	{name = "gold ingot", chance = 5890, maxCount = 1},
	{name = "sacred tree amulet", chance = 4560},
	{id = 3039, name = "red gem", name = "red gem", chance = 4410},
	{name = "yellow gem", chance = 3020},
	{name = "small emerald", chance = 2580, maxCount = 2},
	{name = "green crystal shard", chance = 2030},
	{name = "violet gem", chance = 1780},
	{name = "green gem", chance = 1680},
	{id = 23533, name = "ring of red plasma", chance = 840},
	-- ring of red plasma
	{id = 31297, name = "empty ritual flask", chance = 100}
}

monster.attacks = {
	-- Basic attack (0-450 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- Ranged attack (300-500 earth) (Poison Arrow)
	{name = "PosionArrowEarthTarget", interval = 2000, chance = 22, minDamage = -300, maxDamage = -500},
	-- Poison Ball (200-350 earth, on target)
	{name = "PoisonBallEarthTarget", interval = 2000, chance = 16, minDamage = -200, maxDamage = -350},
	-- Groundshaker Box (300-400 physical, on self)
	{name = "GroundshakerBoxPhysicalSelf", interval = 2000, chance = 12, minDamage = -300, maxDamage = -400}
}

monster.defenses = {
	defense = 81,
	armor = 81
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
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
