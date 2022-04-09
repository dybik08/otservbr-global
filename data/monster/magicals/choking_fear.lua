local mType = Game.createMonsterType("Choking Fear")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a choking fear"
monster.experience = 4700
monster.outfit = {
	lookType = 586,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1015
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "All over the surface of Upper Roshamuul and Nightmare Isles."
}

monster.health = 5800
monster.maxHealth = 5800
monster.race = "undead"
monster.corpse = 20159
monster.speed = 380
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
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
	canWalkOnEnergy = false,
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
	{text = "Ah, sweet air... don't you miss it?", yell = false},
	{text = "Murr tat muuza!", yell = false},
	{text = "kchh", yell = false},
	{text = "hsssss", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(91.82, 8),
	MonsterLoot:withGoldCoins(82.91, 100),
	MonsterLoot:withBrownCrystalSplinter(41.49, 2),
	MonsterLoot:withGreatManaPotion(17.49, 3),
	MonsterLoot:withUltimateHealthPotion(16.82, 3),
	MonsterLoot:withGreatSpiritPotion(15.62, 3),
	MonsterLoot:new():setLoot("dead weight", 12.33),
	MonsterLoot:new():setLoot("hemp rope", 12.06),
	MonsterLoot:withBlueCrystalSplinter(8.24, 3),
	MonsterLoot:withLifeRing(4.36),
	MonsterLoot:withBrownPieceOfCloth(3.55),
	MonsterLoot:withBeastslayerAxe(3.15),
	MonsterLoot:withRingofHealing(2.82),
	MonsterLoot:withEnergyRing(2.68),
	MonsterLoot:withYellowPieceOfCloth(2.08),
	MonsterLoot:withGuardianShield(1.34),
	MonsterLoot:withGreenCrystalShard(1.14),
	MonsterLoot:withShadowSceptre(1.01),
	MonsterLoot:withSai(0.94),
	MonsterLoot:withSpellbookOfMindControl(0.87),
	MonsterLoot:withTerraMantle(0.74),
	MonsterLoot:withTerraBoots(0.67),
	MonsterLoot:withRedPieceOfCloth(0.6),
	MonsterLoot:withClusterOfSolace(0.27),
	MonsterLoot:withSpringsproutRod(0.27),
	MonsterLoot:withUnderworldRod(0.27)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 450),
	-- Long Envenom Wave (effect: poison 45hp/tick)
	CustomMonsterSpell:new():setCondition({type = CONDITION_POISON, totalDamage = 900, interval = 4000}):withLongWave():setDamageRange(
		0,
		0
	):withEnvenom(),
	-- Death Ball (250-500 death, on target)
	CustomMonsterSpell:new():withDeath():setDamageRange(250, 500):withBall():withDeathDamage():withTarget(),
	-- Sleeping Strike (400-500 life drain, on target)
	CustomMonsterSpell:new():setDamageRange(400, 500):withLifeDrainDamage():withTarget():withSleeping(),
	-- Sleeping Ball (25-100 mana drain, on self)
	CustomMonsterSpell:new():setDamageRange(25, 100):setChance(20):withManaDrainDamage():withBall():withSleeping(),
	-- The Greatest Bubble Ball (on target, effect: drown 20hp/tick)
	CustomMonsterSpell:new():withTheGreatestBall():withTarget():setCondition(
		{type = CONDITION_DROWN, totalDamage = 400, interval = 4000}
	):withBubbles():setChance(20):setDamageRange(0, 0)
}

monster.defenses = {
	defense = 35,
	armor = 35,
	-- Healing (80-150 heal)
	CustomMonsterSpell:new():withHealing(80, 150)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 55}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
