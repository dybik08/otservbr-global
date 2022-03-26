local mType = Game.createMonsterType("Frost Flower Asura")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "16/03/2022"
}

monster.description = "a frost flower asura"
monster.experience = 4200
monster.outfit = {
	lookType = 150,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 86,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1619
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Asura Palace."
}

monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 28807
monster.speed = 220
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
	targetDistance = 3,
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
	chance = 10
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 100000, maxCount = 6},
	{name = "gold coin", chance = 100000, maxCount = 242},
	{name = "soul orb", chance = 20020},
	{name = "flask of demonic blood", chance = 19640},
	{name = "golden lotus brooch", chance = 16350},
	{name = "peacock feather fan", chance = 15970},
	{name = "demonic essence", chance = 15090},
	{name = "great health potion", chance = 12350, maxCount = 2},
	{name = "assassin star", chance = 9400, maxCount = 5},
	{name = "white pearl", chance = 8760, maxCount = 2},
	{name = "small diamond", chance = 8200, maxCount = 3},
	{name = "small sapphire", chance = 7820, maxCount = 3},
	{name = "black pearl", chance = 5520, maxCount = 2},
	{name = "silver brooch", chance = 4670},
	{name = "small topaz", chance = 4470, maxCount = 2},
	{name = "small emerald", chance = 4470, maxCount = 2},
	{name = "small ruby", chance = 3910, maxCount = 2},
	{name = "tribal mask", chance = 3210},
	{name = "northwind rod", chance = 2540},
	{name = "silver amulet", chance = 1660},
	{name = "hailstorm rod", chance = 1400},
	{name = "yellow gem", chance = 1340},
	{name = "blue robe", chance = 960},
	{name = "oriental shoes", chance = 550},
	{id = 3007, chance = 550}, -- crystal ring,
	{name = "assassin dagger", chance = 500},
	{name = "spellbook of mind control", chance = 290},
	{name = "blue gem", chance = 260},
	{name = "gold ingot", chance = 260},
	{name = "skullcracker armor", chance = 150}
}

monster.attacks = {
	-- Basic attack (0-200 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -200},
	-- Short Violet Electric Beam (70-130 mana drain)
	{name = "ShortVioletElectricBeamManaDrain", interval = 2000, chance = 10, minDamage = -70, maxDamage = -130},
	-- Ice Strike (150-200 ice, on target)
	{name = "IceStrikeIceTarget", interval = 2000, chance = 10, minDamage = -150, maxDamage = -200},
	-- Great Icy Wind Beam (effect: freeze 8hp/tick)
	{name = "GreatIcyWindBeamIceFreezing", interval = 2000, chance = 10, minDamage = -0, maxDamage = -0}
}

monster.defenses = {
	defense = 30,
	armor = 56,
	-- Healing
	{name = "monsterHealing", interval = 2000, chance = 75, minDamage = 50, maxDamage = 100}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
