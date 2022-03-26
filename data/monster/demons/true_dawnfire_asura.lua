local mType = Game.createMonsterType("True Dawnfire Asura")
local monster = {}

monster.description = "a true dawnfire asura"
monster.experience = 7475
monster.outfit = {
	lookType = 1068,
	lookHead = 79,
	lookBody = 94,
	lookLegs = 120,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1620
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace."
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 28664
monster.speed = 360
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10
}

monster.loot = {
	{name = "gold coin", chance = 97000, maxCount = 242},
	{id = 3035, name = "platinum coin", chance = 18200, maxCount = 6},
	{name = "flask of demonic blood", chance = 2000},
	{name = "great mana potion", chance = 2000},
	{name = "small amethyst", chance = 210, maxCount = 3},
	{name = "small diamond", chance = 300, maxCount = 3},
	{name = "small emerald", chance = 300, maxCount = 3},
	{name = "small ruby", chance = 350, maxCount = 3},
	{name = "small topaz", chance = 280, maxCount = 3},
	{name = "blue gem", chance = 400},
	{id = 6299, name = "death ring", chance = 460},
	{name = "demonic essence", chance = 430},
	{name = "focus cape", chance = 520},
	{name = "golden lotus brooch", chance = 800},
	{name = "magma coat", chance = 400},
	{name = "mysterious fetish", chance = 400},
	{name = "mystic turban", chance = 400},
	{name = "oriental shoes", chance = 400},
	{name = "peacock feather fan", chance = 600},
	{name = "red piece of cloth", chance = 300},
	{name = "ruby necklace", chance = 400},
	{name = "soul orb", chance = 400},
	{name = "spellbook of mind control", chance = 400},
	{name = "wand of inferno", chance = 400}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_MANADRAIN,
		minDamage = 0,
		maxDamage = -100,
		range = 7,
		target = false
	},
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_LIFEDRAIN,
		minDamage = -50,
		maxDamage = -200,
		length = 4,
		spread = 2,
		effect = CONST_ME_MAGIC_RED,
		target = false
	},
	{
		name = "combat",
		interval = 1000,
		chance = 15,
		type = COMBAT_FIREDAMAGE,
		minDamage = 120,
		maxDamage = 450,
		length = 1,
		spread = 0,
		effect = CONST_ME_HITBYFIRE,
		target = false
	},
	{
		name = "combat",
		interval = 1000,
		chance = 10,
		type = COMBAT_DEATHDAMAGE,
		minDamage = 150,
		maxDamage = 350,
		radius = 3,
		effect = CONST_ME_MORTAREA,
		target = true
	},
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_DEATHDAMAGE,
		minDamage = 100,
		maxDamage = 300,
		radius = 4,
		effect = CONST_ME_BLACKSMOKE,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = -100,
		radius = 1,
		effect = CONST_ME_MAGIC_RED,
		target = true,
		duration = 30000
	}
}

monster.defenses = {
	defense = 55,
	armor = 77,
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 50,
		maxDamage = 100,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 320,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 5000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE, percent = -10},
	{type = COMBAT_DEATHDAMAGE, percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
