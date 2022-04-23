local mType = Game.createMonsterType("Undead Elite Gladiator")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "an undead elite gladiator"
monster.experience = 4740
monster.outfit = {
	lookType = 306,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1675
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

monster.health = 8000
monster.maxHealth = 8000
monster.race = "undead"
monster.corpse = 8909
monster.speed = 300
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = false
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
	MonsterLoot:withPlatinumCoins(100, 39),
	MonsterLoot:withBeltedCape(24.46),
	MonsterLoot:withThrowingStar(15.07, 18),
	MonsterLoot:withScimitar(11.12),
	MonsterLoot:withUltimateHealthPotion(7.91),
	MonsterLoot:withKnightAxe(7.81),
	MonsterLoot:new():setLoot("broken gladiator shield", 5.11),
	MonsterLoot:withPlateLegs(5.02),
	MonsterLoot:new():setLoot("flask of warrior's sweat", 4.98),
	MonsterLoot:withHuntingSpear(4.9),
	MonsterLoot:withGreatHealthPotion(4.82),
	MonsterLoot:withPlateArmor(2),
	MonsterLoot:withTwoHandedSword(1.99),
	MonsterLoot:withProtectionAmulet(1.93),
	MonsterLoot:withDarkHelmet(1.36),
	MonsterLoot:withStealthRing(1.36),
	MonsterLoot:withRelicSword(0.26),
	MonsterLoot:withCrusaderHelmet(0.23)
}

monster.attacks = {
	-- 	Basic attack (0-800)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 800),
	-- Ranged attack Whirlwind Sword Throw(0-600)
	CustomMonsterSpell:new():setChance(20):setDamageRange(0, 600):withWhirlwindSword():withPhysicalDamage(),
	-- Short Acid Wave(200-400, physical) TODO: FIND CORRECT VALUES - dmg, chance
	CustomMonsterSpell:new():setDamageRange(200, 400):withAcid():withShortWave():withPhysicalDamage(),
	-- Spark Exori(200-300, physical) TODO: FIND CORRECT VALUES - dmg, chance
	CustomMonsterSpell:new():setDamageRange(200, 400):withSparky():withBox():withPhysicalDamage()
}

monster.defenses = {
	defense = 45,
	armor = 85,
	CustomMonsterSpell:new():withInvisible()
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 10},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
