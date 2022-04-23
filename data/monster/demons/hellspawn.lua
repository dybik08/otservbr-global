local mType = Game.createMonsterType("Hellspawn")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "13/04/2022"
}

monster.description = "a hellspawn"
monster.experience = 2550
monster.outfit = {
	lookType = 322,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 519
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Magician Quarter, Vengoth, Deeper Banuta, Formorgar Mines, Chyllfroest, Oramond Dungeon."
}

monster.health = 3500
monster.maxHealth = 3500
monster.race = "fire"
monster.corpse = 9009
monster.speed = 344
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15
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
	{text = "Your fragile bones are like toothpicks to me.", yell = false},
	{text = "You little weasel will not live to see another day.", yell = false},
	{text = "I'm just a messenger of what's yet to come.", yell = false},
	{text = "HRAAAAAAAAAAAAAAAARRRR!", yell = true},
	{text = "I'm taking you down with me!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(92.45, 234),
	MonsterLoot:withGreatHealthPotion(29.21),
	MonsterLoot:new():setLoot("hellspawn tail", 10.09),
	MonsterLoot:withMorningStar(7.57),
	MonsterLoot:withBattleShield(7.75),
	MonsterLoot:withAssassinStar(7.5),
	MonsterLoot:withDemonicEssence(7.22),
	MonsterLoot:withRedMushroom(5.92),
	MonsterLoot:withSmallTopaz(4.35, 3),
	MonsterLoot:withRustedArmor(2.34),
	MonsterLoot:withKnightLegs(2.07),
	MonsterLoot:withWarriorHelmet(1.6),
	MonsterLoot:withBerserkPotion(0.74),
	MonsterLoot:withSpikedSquelcher(0.56),
	MonsterLoot:new():setLoot("black skull", 0.25),
	MonsterLoot:withSlightlyRustedArmor(0.15),
	MonsterLoot:new():setLoot("dracoyle statue", 0.12):setItemId(9034),
	MonsterLoot:withOnyxFlail(0.07)
}

monster.attacks = {
	-- 	Basic attack (0-350 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 350),
	-- Fire Strike (on target, effect: burn 20/tick)
	CustomMonsterSpell:withFireStrike():withFireCondition(10, 20),
	-- Eruption Strike (150-180 fire, on target)
	CustomMonsterSpell:withEruptionStrike(150, 180):withFireDamage():setChance(20)
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Healing (150-220 heal)
	CustomMonsterSpell:new():withHealing(150, 220),
	-- Haste
	CustomMonsterSpell:new():withHaste(monster.speed)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
