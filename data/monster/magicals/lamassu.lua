local mType = Game.createMonsterType("Lamassu")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "26/03/2022"
}

monster.description = "a lamassu"
monster.experience = 9000
monster.outfit = {
	lookType = 1190,
	lookHead = 50,
	lookBody = 2,
	lookLegs = 0,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1806
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh."
}

monster.health = 8700
monster.maxHealth = 8700
monster.race = "blood"
monster.corpse = 31394
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
	{id = 3035, name = "platinum coin", chance = 100000},
	{id = 3039, name = "red gem", chance = 18260, maxCount = 2},
	{name = "Lamassu Horn", chance = 13480, maxCount = 1},
	{name = "Violet Crystal Shard", chance = 11130, maxCount = 2},
	{name = "Blue Crystal Shard", chance = 11040, maxCount = 2},
	{name = "Red Crystal Fragment", chance = 9570},
	{name = "Lamassu Hoof", chance = 8280},
	{name = "Terra Amulet", chance = 8140},
	{name = "Opal", chance = 8100},
	{name = "small emerald", chance = 6260},
	{name = "Terra Hood", chance = 5980},
	{name = "onyx chip", chance = 5010},
	{name = "green Crystal Fragment", chance = 4050},
	{name = "green Crystal splinter", chance = 4050},
	{name = "rainbow quartz", chance = 3130, maxCount = 2},
	{name = "Sacred Tree Amulet", chance = 2210},
	{name = "Violet Gem", chance = 2120},
	{name = "Elven Amulet", chance = 1930},
	{name = "Blue Gem", chance = 1580},
	{name = "green Crystal Shard", chance = 1380}
}

monster.attacks = {
	-- Basic attack (0-500 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- Terra Box (300-400 earth, on target)
	{
		name = "TerraBoxEarthTarget",
		interval = 2000,
		chance = 20,
		minDamage = -300,
		maxDamage = -400
	},
	-- Holy Box (300-500 holy, on self)
	{
		name = "HolyBoxHolySelf",
		interval = 2000,
		chance = 20,
		minDamage = -300,
		maxDamage = -500
	},
	-- Holy Ball (400-500 holy, on self)
	{
		name = "HolyBallHolySelf",
		interval = 2000,
		chance = 20,
		minDamage = -400,
		maxDamage = -500
	}
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
