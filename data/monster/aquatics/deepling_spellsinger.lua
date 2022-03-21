local mType = Game.createMonsterType("Deathling Spellsinger")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "21/03/2022"
}

monster.description = "a deathling spellsinger"
monster.experience = 6400
monster.outfit = {
	lookType = 1088,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1677
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Ancient Ancestorial Grounds and Sunken Temple."
}

monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 28851
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
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 20,
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
	{text = 'BOQOL"°', yell = false},
	{text = 'QOL" VBOXCL°', yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 84530, maxCount = 14},
	{name = "crystalline arrow", chance = 25440, maxCount = 25},
	{name = "Deepling Filet", chance = 13940},
	{name = "Deeptags", chance = 13160},
	{name = "Small Emerald", chance = 11770, maxCount = 14},
	{name = "Deepling Ridge", chance = 10110},
	{name = "Great Health Potion", chance = 8770},
	{name = "Deepling Warts", chance = 8590},
	{name = "Great Mana Potion", chance = 7200},
	{name = "Vortex Bolt", chance = 5820, maxCount = 25},
	{name = "Eye of a Deepling", chance = 4890},
	{name = "Fish Fin", chance = 4340},
	{name = "Warrior's Shield", chance = 3550},
	{name = "Heavy Trident", chance = 2860},
	{name = "Warrior's Axe", chance = 2450},
	{id = 3052, name = "life ring", chance = 2310}, -- Life ring
	{name = "Small Enchanted Sapphire", chance = 2080, maxCount = 4},
	{name = "Necklace of the Deep", chance = 280}
}

monster.attacks = {
	-- Basic attack (0-300 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300, effect = CONST_ME_DRAWBLOOD},
	-- Ranged attack (100-400 physical) (Spear)
	{
		name = "rangedAttackSpear",
		interval = 4000,
		chance = 15,
		minDamage = -100,
		maxDamage = -400
	},
	-- Long Holy Beam (400-700 holy)
	{
		name = "longHolyBeam",
		interval = 2000,
		chance = 14,
		minDamage = -400,
		maxDamage = -700
	},
	-- Explosion Strike (150-300 physical, on target) (Big Stone)
	{
		name = "explosionStrikeLargeRock",
		interval = 4000,
		chance = 15,
		minDamage = -150,
		maxDamage = -300
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
