local mType = Game.createMonsterType("Enfeebled Silencer")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "7/04/2022"
}

monster.description = "an enfeebled silencer"
monster.experience = 1100
monster.outfit = {
	lookType = 585,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1443
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

monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 20155
monster.speed = 330
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
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Prrrroooaaaah!!! PRROAAAH!!", yell = false},
	{text = "PRRRROOOOOAAAAAHHHH!!!", yell = false},
	{text = "HUUUSSSSSSSSH!!", yell = false},
	{text = "Hussssssh!!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 100),
	MonsterLoot:withPlatinumCoins(40.1, 1),
	MonsterLoot:new():setLoot("fairy wings", 11.86),
	MonsterLoot:withAssassinStar(7.62, 10),
	MonsterLoot:new():setLoot("silencer claws", 4.05),
	MonsterLoot:new():setLoot("haunted blade", 1.5),
	MonsterLoot:new():setLoot("stealer's ring", 1.47):setItemId(3049),
	MonsterLoot:new():setLoot("glorious axe", 1.01),
	MonsterLoot:new():setLoot("terra boots", 0.92),
	MonsterLoot:new():setLoot("terra legs", 0.88),
	MonsterLoot:new():setLoot("diamond sceptre", 0.82),
	MonsterLoot:new():setLoot("shadow sceptre", 0.72),
	MonsterLoot:new():setLoot("boots of haste", 0.55)
}

monster.attacks = {
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		minDamage = -0,
		maxDamage = -350,
		condition = {type = CONDITION_POISON, totalDamage = 200, interval = 4000}
	},
	{name = "silencer skill reducer", interval = 2000, chance = 10, range = 3, target = false},
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_MANADRAIN,
		minDamage = -40,
		maxDamage = -130,
		radius = 4,
		shootEffect = CONST_ANI_ONYXARROW,
		effect = CONST_ME_MAGIC_RED,
		target = true
	}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 450,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 5000
	},
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		type = COMBAT_HEALING,
		minDamage = 80,
		maxDamage = 225,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 60},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 65}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
