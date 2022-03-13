local mType = Game.createMonsterType("Deepworm")
local monster = {}

monster.description = "a deepworm"
monster.experience = 2300
monster.outfit = {
	lookType = 1033,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1531
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Gnome Deep Hub."
	}

monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 27545
monster.speed = 102
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	{text = "*bluuuuuure*", yell = false},
	{text = "*slurp slurp ... slurp*", yell = false}
}

--  ordered descending
monster.loot = {
	{name = "Deepworm Jaws", chance = 24010},
	{name = "Wood Mushroom", chance = 22280},
	{name = "Ham", chance = 19660, maxCount = 1},
	{name = "Meat", chance = 19660, maxCount = 1},
	{name = "Green Mushroom", chance = 18520},
	{name = "Dark Mushroom", chance = 14960},
	{id = 27593, chance = 11450, maxCount = 1}, -- deepworm spike roots
	{name = "Deepworm Spikes", chance = 10120},
	{id = 3052, chance = 7780}, -- Life ring
	{name = "Green Crystal Shard", chance = 6060},
	{name = "Terra Amulet", chance = 4870},
	{name = "Small Enchanted Amethyst", chance = 3430, maxCount = 2},
	{name = "Sacred Tree Amulet", chance = 2640},
	{name = "Springsprout Rod", chance = 1250},
	{name = "Suspicious Device", chance = 1250},
	{id = 281, chance = 920}, -- giant shimmering pearl
}

monster.attacks = {
    -- Basic attack (0-380 physical)
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -380},
	-- Envenom Ball (320-390 earth, on target)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -320, maxDamage = -390, range = 7, radius = 4, effect = SPELL_ANIMATIONS.ENVENOM, target = true},
	-- Envenom Beam (200-300 earth)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -300, length = 4, effect = SPELL_ANIMATIONS.ENVENOM, target = false}
}

monster.defenses = {
	defense = 5,
	armor = 10,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 80, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false},
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
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
