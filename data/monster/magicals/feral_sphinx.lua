local mType = Game.createMonsterType("Feral Sphinx")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "26/03/2022"
}

monster.description = "a feral sphinx"
monster.experience = 8800
monster.outfit = {
	lookType = 1188,
	lookHead = 76,
	lookBody = 75,
	lookLegs = 38,
	lookFeet = 50,
	lookAddons = 2,
	lookMount = 0
}

monster.raceId = 1807
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh, south of Issavi."
}

monster.health = 9800
monster.maxHealth = 9800
monster.race = "blood"
monster.corpse = 31658
monster.speed = 320
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
	{id = 3035, name = "platinum coin", chance = 100000, maxCount = 3},
	{name = "green Crystal Shard", chance = 8610},
	{id = 3039, name = "red gem", chance = 8340},
	{name = "cyan Crystal Fragment", chance = 7070},
	{name = "small sapphire", chance = 6060, maxCount = 2},
	{name = "magma amulet", chance = 5920},
	{name = "sphinx feather", chance = 5920},
	{name = "dragon necklace", chance = 5920},
	{name = "Blue Gem", chance = 5520},
	{name = "wand of inferno", chance = 5380},
	{id = 31438, name = "sphinx tiara", chance = 5110},
	{name = "fire axe", chance = 3770},
	{name = "wand of draconia", chance = 2960},
	{name = "green Gem", chance = 2830},
	{name = "magma monocle", chance = 1480},
	{name = "magma boots", chance = 1350},
	{name = "small enchanted emerald", chance = 1210, maxCount = 2},
	{name = "magma legs", chance = 940}
}

monster.attacks = {
	-- Basic attack (0-450 physical)

	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
	-- Fire Strike (350-550 fire, on target)

	{
		name = "FlameStrikeFireTarget",
		chance = 15,
		minDamage = -350,
		maxDamage = -550
	},
	-- Great Fire Wave (350-500 fire)

	{
		name = "GreatFireWaveFire",
		chance = 12,
		minDamage = -300,
		maxDamage = -500
	},
	-- Energy Ball (300-500 energy, on self)

	{
		name = "EnergyBallEnergySelf",
		chance = 10,
		minDamage = -300,
		maxDamage = -500
	},
	-- Holy Beam (100-460 holy)

	{
		name = "HolyBeamHoly",
		chance = 8,
		minDamage = -100,
		maxDamage = -460
	}
}

monster.defenses = {
	defense = 90,
	armor = 90,
	-- Intense Healing
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_HEALING,
		minDamage = 200,
		maxDamage = 425,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
