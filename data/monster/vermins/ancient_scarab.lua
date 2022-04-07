local mType = Game.createMonsterType("Ancient Scarab")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "2/04/2022"
}

monster.description = "an ancient scarab"
monster.experience = 720
monster.outfit = {
	lookType = 79,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 79
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Ankrahmun Library Tomb, Stone Tomb, Peninsula Tomb, Mother of Scarabs Lair, \z
		Kha'zeel Scarab Lair, deep in Larva Caves (found beneath steps underground), Lion's Rock, \z
		Arena and Zoo Quarter and beneath Fenrock."
}

monster.health = 1000
monster.maxHealth = 1000
monster.race = "venom"
monster.corpse = 6021
monster.speed = 218
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
	staticAttackChance = 80,
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

monster.summon = {
	maxSummons = 3,
	summons = {
		{name = "Larva", chance = 10, interval = 2000, count = 3}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 186),
	MonsterLoot:new():setLoot("magic light wand", 10.18):setItemId(3047),
	MonsterLoot:new():setLoot("scarab coin", 8.08, 2),
	MonsterLoot:new():setLoot("scarab pincers", 7.45),
	MonsterLoot:new():withSmallEmerald(6.02, 3),
	MonsterLoot:new():withSmallAmethyst(5.9, 4),
	MonsterLoot:new():setLoot("plate armor", 4.93),
	MonsterLoot:new():setLoot("scarab amulet", 3.41),
	MonsterLoot:new():setLoot("ancient amulet", 2.49):setItemId(7532),
	MonsterLoot:new():setLoot("strong health potion", 1.51),
	MonsterLoot:new():withSpringsproutRod(1.02),
	MonsterLoot:new():setLoot("scarab shield", 0.52),
	MonsterLoot:new():setLoot("terra hood", 0.43),
	MonsterLoot:new():setLoot("daramian waraxe", 0.43)
}

monster.attacks = {
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		minDamage = 0,
		maxDamage = -200,
		condition = {type = CONDITION_POISON, totalDamage = 56, interval = 4000}
	},
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_EARTHDAMAGE,
		minDamage = -15,
		maxDamage = -145,
		range = 7,
		shootEffect = CONST_ANI_POISON,
		effect = CONST_ME_POISONAREA,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = -700,
		range = 7,
		shootEffect = CONST_ANI_POISON,
		effect = CONST_ME_POISONAREA,
		target = false,
		duration = 25000
	},
	-- poison
	{
		name = "condition",
		type = CONDITION_POISON,
		interval = 2000,
		chance = 30,
		minDamage = -440,
		maxDamage = -520,
		radius = 5,
		effect = CONST_ME_POISONAREA,
		target = false
	}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 380,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 5000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
