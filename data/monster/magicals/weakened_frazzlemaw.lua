local mType = Game.createMonsterType("Weakened Frazzlemaw")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "7/04/2022"
}

monster.description = "a weakened frazzlemaw"
monster.experience = 1000
monster.outfit = {
	lookType = 594,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1442
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Feyrist."
}

monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 20233
monster.speed = 300
monster.manaCost = 450

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
	{text = "Mwaaaahnducate youuuuuu *gurgle*, mwaaah!", yell = false},
	{text = "Mwaaahgod! Overmwaaaaah! *gurgle*", yell = false},
	{text = "MMMWAHMWAHMWAHMWAAAAH!", yell = false},
	{text = "Mmmwhamwhamwhah, mwaaah!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 100),
	MonsterLoot:withPlatinumCoins(59.99, 1),
	MonsterLoot:new():setLoot("fairy wings", 11.86),
	MonsterLoot:new():setLoot("skull", 11.98):setItemId(30207),
	MonsterLoot:new():setLoot("frazzle tongue", 11.78),
	MonsterLoot:new():setLoot("remains of a fish", 10.18),
	MonsterLoot:new():setLoot("bone", 10.06):setItemId(1047),
	MonsterLoot:withGreatHealthPotion(9.96, 2),
	MonsterLoot:withGreatManaPotion(9.96, 3),
	MonsterLoot:new():setLoot("frazzle skin", 9.91),
	MonsterLoot:new():setLoot("fish", 6.23, 3):setItemId(3125),
	MonsterLoot:new():setLoot("ham", 6.12, 3),
	MonsterLoot:new():setLoot("fish fin", 4.86),
	MonsterLoot:new():setLoot("big bone", 4.84),
	MonsterLoot:new():setLoot("piece of iron", 4, 79),
	MonsterLoot:new():setLoot("iron ore", 3.21),
	MonsterLoot:new():setLoot("sai", 0.27),
	MonsterLoot:new():setLoot("nightmare blade", 0.26),
	MonsterLoot:new():setLoot("cluster of solace", 0.21)
}

monster.attacks = {
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		minDamage = -0,
		maxDamage = -350
	},
	-- bleed
	{
		name = "condition",
		type = CONDITION_BLEEDING,
		interval = 2000,
		chance = 10,
		minDamage = -80,
		maxDamage = -200,
		shootEffect = CONST_ANI_LARGEROCK,
		effect = CONST_ME_STONES,
		radius = 3,
		target = false
	},
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_PHYSICALDAMAGE,
		minDamage = 0,
		maxDamage = -400,
		length = 5,
		effect = CONST_ME_EXPLOSIONAREA,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = -600,
		radius = 5,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 15000
	}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 80,
		maxDamage = 225,
		effect = CONST_ME_HITBYPOISON,
		target = false
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
