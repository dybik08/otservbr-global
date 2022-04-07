local mType = Game.createMonsterType("Stonerefiner")
local monster = {}

monster.description = "a Stonerefiner"
monster.experience = 500
monster.outfit = {
	lookType = 1032,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1525
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Corym Mines."
}

monster.health = 800
monster.maxHealth = 800
monster.race = "blood"
monster.corpse = 27536
monster.speed = 220
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
	chance = 10,
	{text = "knak knak knak", yell = false},
	{text = "nomnomnom", yell = false}
}

monster.loot = {
	MonsterLoot:new():withPlatinumCoins(50.65, 4),
	MonsterLoot:new():setLoot("rare earth", 40.32),
	MonsterLoot:new():setLoot("coal", 30.22, 4):setItemId(12600),
	MonsterLoot:new():setLoot("glob of acid slime", 25.31),
	MonsterLoot:new():setLoot("poisonous slime", 20.6),
	MonsterLoot:new():setLoot("stonerefiner's skull", 19.54),
	MonsterLoot:new():setLoot("half-digested stones", 14.86),
	MonsterLoot:new():setLoot("rat cheese", 9.79)
}

monster.attacks = {
	-- 	Basic attack (0-130 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 130),
	-- Stone Shower (60-100 physical, target)
	CustomMonsterSpell:new():setDamageRange(60, 100):withPhysicalDamage():withStoneShower():withBall():withTarget(),
	-- Poison Berserk (50-90 earth)
	CustomMonsterSpell:new():setDamageRange(50, 90):withEarthDamage():withPoison():withBox()
}

monster.defenses = {
	defense = 45,
	armor = 20
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
