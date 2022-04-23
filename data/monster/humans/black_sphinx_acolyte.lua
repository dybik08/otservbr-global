local mType = Game.createMonsterType("Black Sphinx Acolyte")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "15/04/2022"
}

monster.description = "a black sphinx acolyte"
monster.experience = 7200
monster.outfit = {
	lookType = 1200,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 94,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1800
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Issavi Sewers, Kilmaresh Catacombs and Kilmaresh Mountains (above and under ground)."
}

monster.health = 8100
monster.maxHealth = 8100
monster.race = "blood"
monster.corpse = 31423
monster.speed = 310
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
	staticAttackChance = 70,
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

monster.summon = {
	maxSummons = 1,
	summons = {
		{name = "Skeleton Elite Warrior", chance = 10, interval = 2000, count = 1}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Darkness is the mother of all knowledge!", yell = false},
	{text = "Get thee gone, unworthy!", yell = false},
	{text = "The Black Sphinx will prevail!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 7),
	MonsterLoot:withUnderworldRod(7.71),
	MonsterLoot:withSnakebiteRod(7.07),
	MonsterLoot:withBlueCrystalShard(6.96),
	MonsterLoot:new():setLoot("empty honey glass", 3.64),
	MonsterLoot:withSmallEnchantedEmerald(2.68, 3),
	MonsterLoot:withVioletGem(2.57),
	MonsterLoot:withOpal(2.46, 2),
	MonsterLoot:withWandOfVoodoo(1.93)
}

monster.attacks = {
	-- 	Basic attack (0-400 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 400),
	-- Terra Box (400-600 earth, on self)
	CustomMonsterSpell:withTerraBox(400, 600):withEarthDamage():setChance(10),
	-- Death Box (400-450 death, on target)(Sudden Death Rune)
	CustomMonsterSpell:withDeathBox(400, 450):withDeathDamage():setChance(13):withSuddenDeathRune():withTarget()
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -30},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
