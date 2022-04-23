local mType = Game.createMonsterType("Lumbering Carnivor")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a Lumbering Carnivor"
monster.experience = 1452
monster.outfit = {
	lookType = 1133,
	lookHead = 0,
	lookBody = 39,
	lookLegs = 86,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1721
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Carnivora's Rocks."
}

monster.health = 2600
monster.maxHealth = 2600
monster.race = "blood"
monster.corpse = 30065
monster.speed = 400
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
	chance = 10
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(64.31, 3),
	MonsterLoot:new():setLoot("blue glass plate", 22.97, 3),
	MonsterLoot:withAxe(14.26),
	MonsterLoot:withIceRapier(7.23),
	MonsterLoot:withSword(5.3),
	MonsterLoot:withGiantShimmeringPearl(1.98),
	MonsterLoot:withGreenGem(1.83),
	MonsterLoot:withGloriousAxe(1.53),
	MonsterLoot:withGreenCrystalShard(1.39),
	MonsterLoot:withTwoHandedSword(1.24),
	MonsterLoot:withFurArmor(1.14),
	MonsterLoot:withVioletGem(1.14),
	MonsterLoot:withBlueGem(0.99),
	MonsterLoot:withBlueRobe(0.89),
	MonsterLoot:withFocusCape(0.1)
}

monster.attacks = {
	-- 	Basic attack (0-300 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 300),
	-- Ranged attack (0-200 physical) (Crystalline Arrow)
	CustomMonsterSpell:new():withCrystallineArrow():withBlood():setDamageRange(0, 200):withPhysicalDamage(),
	-- Explosion Box (190-240 earth, on target)
	CustomMonsterSpell:new():setDamageRange(190, 240):withBox():withExplosion():withEarthDamage():withTarget(),
	-- Tiny White Steam Beam (180-210 physical)
	CustomMonsterSpell:new():withTinyBeam():setDamageRange(180, 210):withWhiteSteam():withPhysicalDamage(),
	-- Short White Steam Beam (160-190 physical)
	CustomMonsterSpell:new():withShortTWave():setDamageRange(160, 190):withWhiteSteam():withPhysicalDamage()
}

monster.defenses = {
	defense = 20,
	armor = 71,
	CustomMonsterSpell:new():withHealing(150, 200)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -40},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
