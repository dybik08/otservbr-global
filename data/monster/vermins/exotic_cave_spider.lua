local mType = Game.createMonsterType("Exotic Cave Spider")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a exotic cave spider"
monster.experience = 1400
monster.outfit = {
	lookType = 1344,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 2024
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Exotic cave spider cave."
}

monster.health = 1900
monster.maxHealth = 1900
monster.race = "venom"
monster.corpse = 35358
monster.speed = 264
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 20,
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
	staticAttackChance = 70,
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
	MonsterLoot:new():withPlatinumCoins(100, 4),
	MonsterLoot:new():withPoisonArrow(15.75, 15),
	MonsterLoot:new():withGreatHealthPotion(10.17),
	MonsterLoot:new():withTerraBoots(4.76),
	MonsterLoot:new():withSilverAmulet(4.59),
	MonsterLoot:new():withSpiderSilk(2.79),
	MonsterLoot:new():withTerraMantle(1.48)
}

monster.attacks = {
	-- 	Basic attack (0-303 physical, effect: poison 10/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 303):setCondition(
		{type = CONDITION_POISON, totalDamage = 200, interval = 4000}
	),
	-- Poison Field (5 earth, on target, effect: poison)
	{
		name = "poisonfield",
		interval = 2000,
		chance = 10,
		range = 7,
		radius = 1,
		shootEffect = CONST_ANI_POISON,
		target = true
	},
	-- Poison Box (0-111 earth, on target)
	CustomMonsterSpell:new():withBox():setDamageRange(50, 111):withTarget():withEarthDamage():withPoison()
}

monster.defenses = {
	defense = 40,
	armor = 40
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
