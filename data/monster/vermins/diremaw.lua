local mType = Game.createMonsterType("Diremaw")
local monster = {}

monster.description = "a diremaw"
monster.experience = 2500
monster.outfit = {
	lookType = 1034,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1532
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Gnome Deep Hub (north and south tasking areas), Warzone 6."
	}

monster.health = 3600
monster.maxHealth = 3600
monster.race = "blood"
monster.corpse = 27494
monster.speed = 150
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
	{text = "uuaarrrrrrr", yell = false},
	{text = "clic clic clic", yell = false}
}

--  ordered descending
monster.loot = {
	{name = "Ham", chance = 40110, maxCount = 1},
	{name = "Diremaw Brainpan", chance = 25430},
	{name = "Poisonous Slime", chance = 12980, maxCount = 1},
	{name = "Blue Crystal Shard", chance = 10540},
	{name = "Diremaw Legs", chance = 9940, maxCount = 1},
	{name = "Onyx Chip", chance = 8650, maxCount = 3},
	{name = "Violet Crystal Shard", chance = 8590},
	{name = "Green Crystal Shard", chance = 7580},
	{name = "Small Emerald", chance = 4840, maxCount = 2},
	{name = "Gold Ingot", chance = 3110},
	{id = 281, chance = 3040}, -- giant shimmering pearl
	{name = "Small Enchanted Emerald", chance = 2930, maxCount = 2},
	{name = "Suspicious Device", chance = 1510},
	{name = "Mushroom Backpack", chance = 210}
	{name = "Mycological Bow", chance = 130},
}





monster.attacks = {
    -- Basic attack (0-450 physical)
    {name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},

    -- Poison Strike (150-220 earth, on target)
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -225, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS, target = false},

	-- Envenom Ball (200-300 earth, on self)
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -300, radius = 4, effect = CONST_ME_POISONAREA, target = false},

	-- Smoke Ball (170-250 earth, on target)
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -170, maxDamage = -250, range = 7, radius = 4, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POFF, target = true},
}

monster.defenses = {
	defense = 5,
	armor = 71
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
