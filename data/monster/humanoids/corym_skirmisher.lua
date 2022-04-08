local mType = Game.createMonsterType("Corym Skirmisher")
local monster = {}

monster.description = "a corym skirmisher"
monster.experience = 260
monster.outfit = {
	lookType = 533,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 101,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 917
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Venore Corym Cave, Tiquanda Corym Cave, Corym Black Market, \z
		Carlin Corym Cave/Dwarf Mines Diggers Depths Mine, Upper Spike."
}

monster.health = 450
monster.maxHealth = 450
monster.race = "blood"
monster.corpse = 17446
monster.speed = 200
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
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
	{text = "Squeak! Squeak!", yell = false},
	{text = "<sniff> <sniff> <sniff>", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(79.14, 45),
	MonsterLoot:new():setLoot("cheese", 20.21):setItemId(3607),
	MonsterLoot:new():setLoot("soft cheese", 15.12),
	MonsterLoot:new():setLoot("rat cheese", 13.14),
	MonsterLoot:new():setLoot("earflap", 9.1),
	MonsterLoot:new():setLoot("cheese cutter", 8.22),
	MonsterLoot:new():setLoot("bola", 8.09),
	MonsterLoot:new():setLoot("life preserver", 1.68),
	MonsterLoot:new():setLoot("ratana", 1.61),
	MonsterLoot:new():setLoot("cheesy figurine", 1.01),
	MonsterLoot:new():setLoot("leather harness", 0.64),
	MonsterLoot:new():setLoot("spike shield", 0.59),
	MonsterLoot:new():setLoot("spiky club", 0.59),
	MonsterLoot:new():setLoot("rat god doll", 0.02)
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_PHYSICALDAMAGE,
		minDamage = 0,
		maxDamage = -90,
		range = 7,
		shootEffect = CONST_ANI_WHIRLWINDCLUB,
		target = false
	}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
