local mType = Game.createMonsterType("Ghastly Dragon")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a ghastly dragon"
monster.experience = 4600
monster.outfit = {
	lookType = 351,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 643
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Ghastly Dragon Lair, Corruption Hole, Razachai including the Inner Sanctum, Zao Palace, Deeper Banuta, Chyllfroest."
}

monster.health = 7800
monster.maxHealth = 7800
monster.race = "undead"
monster.corpse = 10445
monster.speed = 320
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 366,
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
	chance = 10,
	{text = "EMBRACE MY GIFTS!", yell = true},
	{text = "I WILL FEAST ON YOUR SOUL!", yell = true}
}

monster.loot = {
	MonsterLoot:withGoldCoins(99.58, 274),
	MonsterLoot:withPlateLegs(50.16),
	MonsterLoot:withSmallEmerald(39.97, 5),
	MonsterLoot:withDarkArmor(34.84),
	MonsterLoot:withGreatManaPotion(30.08, 2),
	MonsterLoot:withPlatinumCoins(30.05, 2),
	MonsterLoot:withGreatSpiritPotion(29.98, 2),
	MonsterLoot:withUltimateHealthPotion(24.92),
	MonsterLoot:withUndeadHeart(19.83),
	MonsterLoot:withZaoanHalberd(15.03),
	MonsterLoot:withTwinHooks(14.71),
	MonsterLoot:withSoulOrb(11.93),
	MonsterLoot:withSlightlyRustedArmor(10.09),
	MonsterLoot:withDemonicEssence(9.08),
	MonsterLoot:new():setLoot("ghastly dragon head", 6.92),
	MonsterLoot:withTerraLegs(3.08),
	MonsterLoot:withDrakinata(1.58),
	MonsterLoot:withZaoanShoes(0.98),
	MonsterLoot:withZaoanLegs(0.97),
	MonsterLoot:withShinyStone(0.83),
	MonsterLoot:withZaoanArmor(0.82),
	MonsterLoot:withJadeHat(0.8),
	MonsterLoot:withSpellweaversRobe(0.68),
	MonsterLoot:withZaoanHelmet(0.23),
	MonsterLoot:withGuardianBoots(0.22),
	MonsterLoot:withZaoanSword(0.12)
}

monster.attacks = {
	-- 	Basic attack (0-470 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 470):setCondition(
		{type = CONDITION_POISON, minDamage = -920, maxDamage = -1280, interval = 4000}
	),
	-- Water Wave (110-300 death)
	CustomMonsterSpell:new():withDeathDamage():withWater():setDamageRange(110, 300):withWave(),
	-- Death Ball (80-120 death, on self)
	CustomMonsterSpell:new():withDeathDamage():withDeath():setDamageRange(80, 120):withBall(),
	-- Red Stars Strike (100-210 life drain, on target)
	CustomMonsterSpell:new():withLifeDrainDamage():withRedStars():setDamageRange(100, 210):withTarget():withStrike(),
	-- Bats Strike (on target, effect: paralyze)
	CustomMonsterSpell:new():withParalyze():withBats():withStrike():withTarget(),
	-- Death Strike (on target, effect: curse 1 -> 272)
	{name = "ghastly dragon curse", interval = 2000, chance = 5, range = 5, target = false}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	-- Healing (170-250 heal)
	CustomMonsterSpell:new():withHealing(170, 250)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE, percent = -15},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
