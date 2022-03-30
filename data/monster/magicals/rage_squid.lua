local mType = Game.createMonsterType("Rage Squid")
local monster = {}

monster.description = "a rage squid"
monster.experience = 14820
monster.outfit = {
	lookType = 1059,
	lookHead = 94,
	lookBody = 78,
	lookLegs = 78,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1668
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library."
}

monster.health = 17000
monster.maxHealth = 17000
monster.race = "undead"
monster.corpse = 28782
monster.speed = 430
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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

--  ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 100000, maxCount = 29},
	{name = "ultimate health potion", chance = 30310, maxCount = 5},
	{name = "great spirit potion", chance = 18580, maxCount = 3},
	{name = "great mana potion", chance = 18580, maxCount = 3},
	{id = 28570, chance = 18580, maxCount = 3}, -- glowing rune
	{name = "fire mushroom", chance = 14990, maxCount = 6},
	{id = 28568, chance = 10010}, -- inkwell
	{name = "small emerald", chance = 8300, maxCount = 5},
	{name = "small ruby", chance = 7850, maxCount = 5},
	{name = "small amethyst", chance = 7800, maxCount = 5},
	{name = "small topaz", chance = 7470, maxCount = 5},
	{name = "demonic essence", chance = 7190},
	{name = "fire axe", chance = 5530},
	{name = "orb", chance = 2710},
	{name = "slime heart", chance = 2600},
	{id = 3039, chance = 2540, maxCount = 1}, -- red gem
	{name = "giant sword", chance = 2430},
	{name = "talon", chance = 2380},
	{name = "platinum amulet", chance = 2100},
	{name = "might ring", chance = 1940},
	{name = "demonrage sword", chance = 1710},
	{name = "demon shield", chance = 1660},
	{name = "purple tome", chance = 1380},
	{name = "devil helmet", chance = 1000},
	{name = "piece of dead brain", chance = 1000},
	{name = "magic plate armor", chance = 330},
	{id = 7393, chance = 280}, -- demon trophy
	{name = "wand of everblazing", chance = 220}
}

monster.attacks = {
	-- Basic attack (0-650 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -650},
	-- Fire Strike (600-750 fire, on target)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_FIREDAMAGE,
		minDamage = -600,
		maxDamage = -750,
		range = 7,
		radius = 1,
		shootEffect = CONST_ANI_FLAMMINGARROW,
		effect = SPELL_ANIMATIONS.FIRE,
		target = true
	},
	-- Eruption Box (600-750 fire, on target)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_FIREDAMAGE,
		minDamage = -500,
		maxDamage = -750,
		range = 7,
		radius = 3,
		shootEffect = CONST_ANI_FIRE,
		effect = SPELL_ANIMATIONS.ERUPTION,
		target = true
	},
	-- Red Stars Beam (400-500 fire)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_FIREDAMAGE,
		minDamage = -400,
		maxDamage = -500,
		length = 5,
		effect = SPELL_ANIMATIONS.RED_STARS,
		target = false
	},
	-- Fire Box (500-700 fire, on self)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_FIREDAMAGE,
		minDamage = -500,
		maxDamage = -700,
		radius = 3,
		effect = SPELL_ANIMATIONS.FIRE,
		target = false
	},
	-- Detonation Cross (850-1200 fire, on self)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_FIREDAMAGE,
		minDamage = -850,
		maxDamage = -1200,
		radius = 2,
		effect = SPELL_ANIMATIONS.DETONATION,
		target = false
	}
}

monster.defenses = {
	defense = 78,
	armor = 78
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
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
