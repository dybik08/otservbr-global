local mType = Game.createMonsterType("Soul-Broken Harbinger")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "15/04/2022"
}

monster.description = "a Soul-Broken Harbinger"
monster.experience = 5800
monster.outfit = {
	lookType = 1137,
	lookHead = 124,
	lookBody = 31,
	lookLegs = 17,
	lookFeet = 81,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1734
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Court of Winter."
}

monster.health = 6300
monster.maxHealth = 6300
monster.race = "blood"
monster.corpse = 30137
monster.speed = 420
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
	chance = 10
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 12),
	MonsterLoot:withIceFlower(15.13, 3),
	MonsterLoot:withDreamEssenceEgg(12.98),
	MonsterLoot:withElvishTalisman(10.73),
	MonsterLoot:withIceRapier(5.1),
	MonsterLoot:withGlacierKilt(3.55),
	MonsterLoot:withGlacierShoes(2.82),
	MonsterLoot:withRingofBluePlasma(2.49),
	MonsterLoot:withKnightLegs(2.39),
	MonsterLoot:withTowerShield(1.96),
	MonsterLoot:withWoodCape(1.67),
	MonsterLoot:withSpellbookOfMindControl(1.27),
	MonsterLoot:withCrownShield(1.23),
	MonsterLoot:withCollarOfGreenPlasma(0.82)
}

monster.attacks = {
	-- 	Basic attack (0-550 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 550),
	-- Ice Strike (0-350 ice, on target)
	CustomMonsterSpell:withIceStrike(0, 350):withIceDamage(),
	-- Ice Ball (200-300 ice, on self)
	CustomMonsterSpell:withIceBall(200, 300):withIceDamage(),
	-- Ice Chain (90-130 ice)
	{
		name = "singleicechain",
		interval = 2000,
		chance = 10,
		minDamage = -240,
		maxDamage = -300,
		range = 5,
		effect = CONST_ME_ICEATTACK,
		target = true
	},
	-- Icy Wind Box (100-300 ice, on self)
	CustomMonsterSpell:withIcyWindBox(100, 300):withIceDamage(),
	-- Icy Flake Box (170-300 ice, on target)
	CustomMonsterSpell:withIcyFlakeBox(170, 300):withIceDamage():withTarget(),
	-- Shorter Icy Crystal Beam (100-200 ice)
	CustomMonsterSpell:withShorterIcyCrystalBeam(100, 200):withIceDamage()
	-- Short Icy Wall Beam (120-200 ice) -- same as in vanguard - attack prob not exist
}

monster.defenses = {
	defense = 40,
	armor = 40,
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_HEALING,
		minDamage = 200,
		maxDamage = 250,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	}
}

monster.reflects = {
	{type = COMBAT_ICEDAMAGE, percent = 70}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 55},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
