local mType = Game.createMonsterType("Exotic Bat")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a exotic bat"
monster.experience = 1200
monster.outfit = {
	lookType = 1373,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2051
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Exotic cave Spider cave."
}

monster.health = 1500
monster.maxHealth = 1500
monster.race = "venom"
monster.corpse = 35690
monster.speed = 200
monster.manaCost = 250

monster.changeTarget = {
	interval = 4000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 100
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
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
	chance = 0
}

monster.loot = {
	MonsterLoot():withPlatinumCoins(100, 4),
	MonsterLoot():withGreatManaPotions(31.03),
	MonsterLoot():withDarkMushroom(15.18, 6),
	MonsterLoot():withGreenMushroom(10.64, 5),
	MonsterLoot():withTerraAmulet(6.01),
	MonsterLoot():withGarlicNecklace(4.6),
	MonsterLoot():new():setLoot("bat wing", 4.38, 2)
}

monster.attacks = {
	-- Basic attack (0-310 physical, effect: poison 10/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 310):setCondition(
		{type = CONDITION_POISON, totalDamage = 200, interval = 4000}
	),
	-- Groundshaker Box (0-100 physical) (Small Stone)
	CustomMonsterSpell:new():withBox():setDamageRange(0, 100):withSmallStone():withGroundShaker():withPhysicalDamage():withTarget(

	),
	-- Great Poison Wave (50-110 earth)
	CustomMonsterSpell:new():withGreatWave():setDamageRange(50, 110):withPoison():withEarthDamage()
}

monster.defenses = {
	defense = 40,
	armor = 40
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 1},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE, percent = 5},
	{type = COMBAT_DEATHDAMAGE, percent = 5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
