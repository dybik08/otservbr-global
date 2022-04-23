local mType = Game.createMonsterType("Draken Warmaster")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "13/04/2022"
}

monster.description = "a draken warmaster"
monster.experience = 2400
monster.outfit = {
	lookType = 334,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 617
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Zao Palace, Chazorai, Razzachai, and Zzaion."
}

monster.health = 4150
monster.maxHealth = 4150
monster.race = "blood"
monster.corpse = 10190
monster.speed = 324
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
	chance = 10,
	{text = "Attack aggrezzively! Dezztroy zze intruderzz!", yell = false},
	{text = "Hizzzzzz!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 200),
	MonsterLoot:withPlatinumCoins(49.97, 5),
	MonsterLoot:withMeat(29.91),
	MonsterLoot:new():setLoot("bone shoulderplate", 12.05),
	MonsterLoot:withZaoanHalberd(7.95),
	MonsterLoot:new():setLoot("warmaster's wristguards", 7.03),
	MonsterLoot:withGreatHealthPotion(4.97, 3),
	MonsterLoot:withUltimateHealthPotion(3.95),
	MonsterLoot:withZaoanShoes(2.03),
	MonsterLoot:withTowerShield(1.97),
	MonsterLoot:withSmallRuby(1.44, 5),
	MonsterLoot:withZaoanLegs(0.91),
	MonsterLoot:withZaoanArmor(0.81),
	MonsterLoot:withDrakinata(0.8),
	MonsterLoot:withRingOfTheSky(0.22)
}

monster.attacks = {
	-- 	Basic attack (0-250 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 250),
	-- Eruption Wave(120-480)
	CustomMonsterSpell:withEruptionWave(120, 480):withFireDamage()
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Healing (200-300 heal)
	CustomMonsterSpell:new():withHealing(200, 300)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE, percent = 5},
	{type = COMBAT_DEATHDAMAGE, percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
