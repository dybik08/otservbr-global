local mType = Game.createMonsterType("Roaring Lion")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "2/04/2022"
}

monster.description = "a roaring lion"
monster.experience = 800
monster.outfit = {
	lookType = 570,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 981
monster.Bestiary = {
	class = "Mammal",
	race = BESTY_RACE_MAMMAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Lion's Rock a few floors down."
}

monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 19103
monster.speed = 210
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Groarrrr! Rwarrrr!", yell = false},
	{text = "Growl!", yell = false}
}

monster.loot = {
	MonsterLoot:new():withGoldCoins(100, 115),
	MonsterLoot:new():setLoot("meat", 25.26, 4),
	MonsterLoot:new():setLoot("ham", 25.26, 4),
	MonsterLoot:new():setLoot("ham", 25.26, 4),
	MonsterLoot:new():setLoot("lion's mane", 20.46),
	MonsterLoot:new():withPlatinumCoins(9.57, 1),
	MonsterLoot:new():withSmallAmethyst(7.38, 1),
	MonsterLoot:new():withSmallSapphire(7.2, 1),
	MonsterLoot:new():withSmallRuby(7.12, 1),
	MonsterLoot:new():withSmallTopaz(6.34, 1),
	MonsterLoot:new():setLoot("ankh", 3.31),
	MonsterLoot:new():setLoot("crown helmet", 0.7),
	MonsterLoot:new():setLoot("might ring", 0.6)
}

monster.attacks = {
	-- 	Basic attack (0-170 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 170)
}

monster.defenses = {
	defense = 28,
	armor = 28
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
