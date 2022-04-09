local mType = Game.createMonsterType("Spiky Carnivor")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a Spiky Carnivor"
monster.experience = 1650
monster.outfit = {
	lookType = 1139,
	lookHead = 79,
	lookBody = 119,
	lookLegs = 57,
	lookFeet = 86,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1722
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Carnivora's Rocks."
}

monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 30099
monster.speed = 320
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

monster.loot = {
	MonsterLoot:withPlatinumCoins(67.02, 6),
	MonsterLoot:withDarkArmor(12.46),
	MonsterLoot:new():setLoot("green glass plate", 10.81, 2),
	MonsterLoot:withBlueCrystalSplinter(7.08),
	MonsterLoot:withBrownCrystalSplinter(5.82),
	MonsterLoot:withGuardianShield(5.63),
	MonsterLoot:withWarriorHelmet(3.73),
	MonsterLoot:withRainbowQuartz(3.01,2),
	MonsterLoot:withTerraAmulet(2.42),
	MonsterLoot:new():setLoot("talon", 2.23),
	MonsterLoot:withBlueRobe(1.55),
	MonsterLoot:withGlacierAmulet(1.45),
	MonsterLoot:withLightningPendant(0.87),
	MonsterLoot:withPrismaticQuartz(0.78),
	MonsterLoot:new():setLoot("doublet", 0.48),
	MonsterLoot:withTerraMantle(0.34),
	MonsterLoot:withShockwaveAmulet(0.29),
	MonsterLoot:withBuckle(0.1),
}

monster.attacks = {
	-- Basic attack (0-310 physical, effect: poison 10/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 310):setCondition(
		{type = CONDITION_POISON, totalDamage = 200, interval = 4000}
	),
	-- Long Envenom Beam (110-170 earth)
	CustomMonsterSpell:new():withLongBeam():setDamageRange(110, 170):withEnvenom():withEarthDamage(),
	-- Groundshaker Ball (180-230 physical, on self)
	CustomMonsterSpell:new():withBall():setDamageRange(180, 230):withGroundShaker():withPhysicalDamage(),
	-- Tiny White Steam Beam (110-170 physical)
	CustomMonsterSpell:new():withTinyBeam():setDamageRange(110, 170):withWhiteSteam():withPhysicalDamage(),
	-- Short White Steam T-Wave (190-230 physical)
	CustomMonsterSpell:new():withShortTWave():setDamageRange(190, 230):withWhiteSteam():withPhysicalDamage()
}

monster.defenses = {
	defense = 20,
	armor = 71,
	CustomMonsterSpell:withHealing(150,200)
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
