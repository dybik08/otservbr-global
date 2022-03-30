local mType = Game.createMonsterType("Manticore")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "30/03/2022"
}

monster.description = "a manticore"
monster.experience = 5100
monster.outfit = {
	lookType = 1189,
	lookHead = 116,
	lookBody = 97,
	lookLegs = 113,
	lookFeet = 20,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1816
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

monster.health = 6700
monster.maxHealth = 6700
monster.race = "blood"
monster.corpse = 31390
monster.speed = 300
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
	targetDistance = 4,
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

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 3),
	MonsterLoot:new():setLoot("manticore tail", 9.89),
	MonsterLoot:new():setLoot("manticore ear", 7.41),
	MonsterLoot:withGreenCrystalFragment(5.89),
	MonsterLoot:withSmallEmerald(5.51),
	MonsterLoot:new():setLoot("flaming arrow", 5.13, 9),
	MonsterLoot:withRainbowQuartz(4.18, 3),
	MonsterLoot:withPrismaticQuartz(4.18),
	MonsterLoot:withMagmaCoat(3.42),
	MonsterLoot:withVioletGem(3.23),
	MonsterLoot:withMagmaBoots(3.04),
	MonsterLoot:withMagmaMonocle(2.09),
	MonsterLoot:withWandOfDragonbreath(1.71),
	MonsterLoot:withWandOfDraconia(1.33),
	MonsterLoot:withRoyalStar(1.14, 3),
	MonsterLoot:withWandOfEverblazing(0.76),
	MonsterLoot:withMagmaLegs(0.38)
}

monster.attacks = {
	-- 	Basic attack (0-250 physical, effect: poison 20hp/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 250):setCondition(
		{type = CONDITION_POISON, totalDamage = 400, interval = 4000}
	),
	-- Longer Fire Beam (300-450 fire)
	CustomMonsterSpell:new():setChance(100):setDamageRange(300, 450):withLongerBeam():withFire():withFireDamage(),
	-- Eruption Box (450-550 fire, on target)
	CustomMonsterSpell:new():setDamageRange(450, 550):withBox():withEruption():withFireDamage():withTarget(),
	-- Poison Box (300-400 earth, on target)
	CustomMonsterSpell:new():setDamageRange(300, 400):withBox():withPoison():withEarthDamage():withTarget()
}

monster.defenses = {
	defense = 78,
	armor = 78
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
