local mType = Game.createMonsterType("Insane Siren")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "20/03/2022"
}

monster.description = "an insane siren"
monster.experience = 6000
monster.outfit = {
	lookType = 1137,
	lookHead = 94,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 20,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1735
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Court of Summer."
}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "blood"
monster.corpse = 30133
monster.speed = 420
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
	{text = "Dream or nightmare?", yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 75040, maxCount = 12},
	{name = "Ultimate Health Potion", chance = 12390},
	{name = "Dream Essence Egg", chance = 11250},
	{name = "Miraculum", chance = 9400},
	{name = "Wand of Draconia", chance = 5980},
	{name = "Holy Orchid", chance = 4040},
	{name = "Wand of Inferno", chance = 3080},
	{name = "Magma Amulet", chance = 3080},
	{name = "Wand of Dragonbreath", chance = 2810},
	{name = "Fire Axe", chance = 2370},
	{name = "Magma Coat", chance = 1850},
	{name = "Sun Fruit", chance = 1490},
	{name = "Magma Legs", chance = 790},
	{name = "Magma Monocle", chance = 350}
}

monster.attacks = {
	-- Basic attack (0-500 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- Fire Chain (100-250 fire)
	{
		name = "firechain",
		interval = 2000,
		chance = 20,
		minDamage = -100,
		maxDamage = -250,
		target = true
	},
	-- Flame Strike (100-200 fire, on target)
	{
		name = "flameStrike",
		interval = 2000,
		chance = 15,
		minDamage = -100,
		maxDamage = -200
	},
	-- Short Flame Beam (140-230 fire)
	{
		name = "shortFlameBeam",
		interval = 2000,
		chance = 10,
		minDamage = -140,
		maxDamage = -230
	},
	-- Detonation Box (250-400 fire, on self)
	{
		name = "detonationBoxSelf",
		interval = 2000,
		chance = 15,
		minDamage = -250,
		maxDamage = -400
	},
	-- Eruption Box (100-300 fire, on target) (Burst Arrow)
	{
		name = "eruptionBoxTarget",
		interval = 2000,
		chance = 15,
		minDamage = -100,
		maxDamage = -300
	},
	-- Eruption Ball (100-300 fire, on self)
	{
		name = "eruptionBall",
		interval = 2000,
		chance = 15,
		minDamage = -100,
		maxDamage = -300
	}
}

monster.defenses = {
	defense = 20,
	armor = 70
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 55},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE, percent = 25},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
