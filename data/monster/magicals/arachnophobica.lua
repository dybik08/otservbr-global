local mType = Game.createMonsterType("Arachnophobica")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "20/03/2022"
}

monster.description = "an arachnophobica"
monster.experience = 4700
monster.outfit = {
	lookType = 1135,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1729
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Buried Cathedral, Haunted Cellar, Court of Summer, Court of Winter, Dream Labyrinth."
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 30073
monster.speed = 400
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
	{text = "Tip tap tip tap!", yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 81510, maxCount = 13},
	{name = "great spirit potion", chance = 30070, maxCount = 3},
	{name = "spider fangs", chance = 10200},
	{name = "essence of a bad dream", chance = 7600},
	{name = "silver amulet", chance = 6750},
	{id = 3091, name = "sword ring", chance = 5560}, -- Sword ring
	{name = "mind stone", chance = 4540},
	{name = "wand of cosmic energy", chance = 4260},
	{id = 3051, name = "energy ring", chance = 4240}, -- Energy ring
	{name = "underworld rod", chance = 2810},
	{id = 3052, name = "life ring", chance = 2650}, -- Life ring
	{id = 3092, name = "axe ring", chance = 2600}, -- Axe ring
	{name = "elven amulet", chance = 2450, maxCount = 1},
	{id = 3050, name = "power ring", chance = 2250}, -- Power ring
	{id = 6299, name = "death ring", chance = 2000},
	{name = "magma amulet", chance = 1940},
	{name = "orb", chance = 1910},
	{name = "platinum amulet", chance = 1810},
	{name = "sacred tree amulet", chance = 1670},
	{id = 23544, name = "collar of red plasma", chance = 1270},
	{name = "spider silk", chance = 1180},
	{id = 3098, name = "Ring of healing", name = "ring of healing", chance = 1070}, -- Ring of healing
	{name = "necklace of the deep", chance = 1070},
	{id = 23529, name = "ring of blue plasma", chance = 1050},
	{name = "garlic necklace", chance = 1010},
	{name = "strange talisman", chance = 660},
	{name = "stone skin amulet", chance = 620},
	{name = "Strange Symbol", chance = 530},
	{id = 23543, name = "collar of green plasma", chance = 400} -- Collar of green plasma
}

monster.attacks = {
	-- Basic attack (0-450 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	-- Shorter Energy T-Wave (200-350 energy)
	{
		name = "ShorterEnergyTWaveEnergy",
		interval = 2000,
		chance = 20,
		minDamage = -250,
		maxDamage = -350
	},
	-- Death Strike (200-300 death, on target)
	{
		name = "DeathStrikeDeathTarget",
		interval = 2000,
		chance = 20,
		minDamage = -200,
		maxDamage = -300
	},
	-- Death Box (250-300 death, on target)
	{
		name = "DeathBoxDeathTarget",
		interval = 2000,
		chance = 10,
		minDamage = -250,
		maxDamage = -300
	},
	-- Sparky Ball (200-300 energy, on self)
	{
		name = "SparkyBallEnergySelf",
		interval = 2000,
		chance = 10,
		minDamage = -200,
		maxDamage = -300
	},
	-- Longer Diceroll Beam (130-200 death)
	{
		name = "LongerDicerollBeamDeath",
		interval = 2000,
		chance = 10,
		minDamage = -130,
		maxDamage = -200
	},
	-- Death Box (250-300 death, on self)
	{
		name = "DeathBoxDeathSelf",
		interval = 2000,
		chance = 10,
		minDamage = -250,
		maxDamage = -300
	}
}

monster.defenses = {
	defense = 0,
	armor = 70,
	-- Healing (100-200 heal)
	{
		name = "monsterHealing",
		interval = 2000,
		chance = 10,
		minDamage = 150,
		maxDamage = 250
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -40},
	{type = COMBAT_DEATHDAMAGE, percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
