local mType = Game.createMonsterType("Retching Horror")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a retching horror"
monster.experience = 4100
monster.outfit = {
	lookType = 588,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1018
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

monster.health = 5300
monster.maxHealth = 5300
monster.race = "fire"
monster.corpse = 20174
monster.speed = 360
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
	{text = "Wait for us, little maggot...", yell = false},
	{text = "We will devour you...", yell = false},
	{text = "My little beetles, go forth, eat, feast!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(98.36, 9),
	MonsterLoot:withGoldCoins(79.93, 100),
	MonsterLoot:withGreatManaPotion(12.3),
	MonsterLoot:new():setLoot("pool of chitinous glue", 12.26),
	MonsterLoot:new():setLoot("goosebump leather", 12.08),
	MonsterLoot:withBrownMushroom(11.96, 2),
	MonsterLoot:withGreatHealthPotion(10.1),
	MonsterLoot:new():setLoot("broken dream", 4.96),
	MonsterLoot:withBeastslayerAxe(4.23),
	MonsterLoot:withMercenarySword(2.16),
	MonsterLoot:withUnderworldRod(1.38),
	MonsterLoot:withCrownShield(1.34),
	MonsterLoot:withFireSword(1.34),
	MonsterLoot:withWandOfStarstorm(1.21),
	MonsterLoot:withSpikedSquelcher(1.12),
	MonsterLoot:withOnyxFlail(0.73),
	MonsterLoot:withTowerShield(0.39),
	MonsterLoot:withButchersAxe(0.39),
	MonsterLoot:withClusterOfSolace(0.3),
	MonsterLoot:withSteelBoots(0.22)
}

monster.attacks = {
	-- Basic attack (0-400 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 400),
	-- Ranged attack (0-200 physical) (Arrow)
	CustomMonsterSpell:new():withArrow():setDamageRange(0, 200):withPhysicalDamage(),
	-- Short Green Stars Wave (200-400 fire)
	CustomMonsterSpell:new():withShortWave():setDamageRange(200, 400):withFireDamage():withGreenStars(),
	-- Dizzy Ball (100-300 life drain, on target)
	CustomMonsterSpell:new():withBall():setDamageRange(100, 300):withLifeDrainDamage():withDizzy():withTarget(),
	-- Berserk Ball (on self, effect: paralyze)
	CustomMonsterSpell:new():withParalyze():withBall():withBerserk()
}

monster.defenses = {
	defense = 30,
	armor = 30,
	-- Healing (100-200 heal)
	CustomMonsterSpell:new():withHealing(100, 200)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 85},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 22}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
