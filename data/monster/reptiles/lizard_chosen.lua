local mType = Game.createMonsterType("Lizard Chosen")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a lizard chosen"
monster.experience = 2200
monster.outfit = {
	lookType = 344,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 620
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Temple of Equilibrium (Zao) Hidden stairs, Fire Dragon Dojo, Corruption Hole, Razzachai."
}

monster.health = 3050
monster.maxHealth = 3050
monster.race = "blood"
monster.corpse = 10371
monster.speed = 272
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
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 50,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grzzzzzzz!", yell = false},
	{text = "Garrrblarrrrzzzz!", yell = false},
	{text = "Kzzzzzzz!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(97.59, 239),
	MonsterLoot:withSpikedIronBall(10.02),
	MonsterLoot:withGreatHealthPotion(6.89, 3),
	MonsterLoot:withCursedShoulderSpikes(5.97),
	MonsterLoot:withPlatinumCoins(3.04, 5),
	MonsterLoot:withScaleOfCorruption(2.97),
	MonsterLoot:withCorruptedFlag(2.96),
	MonsterLoot:withSmallDiamond(2.46),
	MonsterLoot:withLizardLeather(2.01),
	MonsterLoot:withZaoanArmor(1.04),
	MonsterLoot:withTowerShield(1),
	MonsterLoot:withLizardScale(0.97),
	MonsterLoot:withZaoanLegs(0.93),
	MonsterLoot:withZaoanShoes(0.78),
	MonsterLoot:withZaoanHelmet(0.11)
}

monster.attacks = {
	-- 	Basic attack (0-1000 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 300),
	-- Poison Box (190-300 earth, self)
	CustomMonsterSpell:new():withEarthDamage():setDamageRange(190, 300):withPoison():withBox(),
	-- Poison Beam (100-150)
	CustomMonsterSpell:new():withEarthDamage():setDamageRange(100, 150):withPoison():withBeam(),
	-- Shorter Poison T-Wave(effect: poison 12-16/tick)
	CustomMonsterSpell:new():setDamageRange(0, 0):withPoison():withShorterTWave():setCondition(
		{type = CONDITION_POISON, minDamage = -240, maxDamage = -320, interval = 2000}
	)
}

monster.defenses = {
	defense = 45,
	armor = 28,
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_HEALING,
		minDamage = 75,
		maxDamage = 125,
		effect = CONST_ME_MAGIC_GREEN,
		target = false
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
