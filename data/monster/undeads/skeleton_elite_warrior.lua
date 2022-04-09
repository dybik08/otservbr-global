local mType = Game.createMonsterType("Skeleton Elite Warrior")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a skeleton elite warrior"
monster.experience = 4500
monster.outfit = {
	lookType = 298,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1674
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Deep Desert."
}

monster.health = 7800
monster.maxHealth = 7800
monster.race = "undead"
monster.corpse = 5972
monster.speed = 155
monster.manaCost = 350

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
	chance = 10
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 15),
	MonsterLoot:withBone(49.92),
	MonsterLoot:withWhiteMushroom(25.29),
	MonsterLoot:withSoulOrb(24.42),
	MonsterLoot:withPelvisBone(16.4, 3),
	MonsterLoot:withUnholyBone(9.72),
	MonsterLoot:withKnightAxe(6.16),
	MonsterLoot:withMammothWhopper(5),
	MonsterLoot:new():setLoot("bone toothpick", 4.95),
	MonsterLoot:withSkullHelmet(3.04),
	MonsterLoot:withBrownMushroom(2.08),
	MonsterLoot:withSword(2.01),
	MonsterLoot:withMace(1.97),
	MonsterLoot:withRuthlessAxe(0.48)
}

monster.attacks = {
	-- 	Basic attack (0-550 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 550),
	-- Death Box(400-500 death, target)
	CustomMonsterSpell:new():withDeath(400, 500):setDamageRange(400, 500):withEnergyStrike():withBox():withDeathDamage():withTarget(

	),
	-- Groundshaker Ball(400-500 physical, self)
	CustomMonsterSpell:new():withGroundshaker():setDamageRange(400, 500):withPhysicalDamage():withBall(),
	-- Death Strike(400-600 death, target)
	CustomMonsterSpell:new():setDamageRange(400, 600):setChance(20):withDeath():withLifeDrainDamage():withSuddenDeathRune()
}

monster.defenses = {
	defense = 15,
	armor = 75
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
