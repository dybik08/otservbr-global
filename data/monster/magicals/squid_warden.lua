local mType = Game.createMonsterType("Squid Warden")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a squid warden"
monster.experience = 15300
monster.outfit = {
	lookType = 1059,
	lookHead = 9,
	lookBody = 21,
	lookLegs = 41,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1669
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library."
}

monster.health = 16500
monster.maxHealth = 16500
monster.race = "undead"
monster.corpse = 28786
monster.speed = 430
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	MonsterLoot:withSmallSapphire(67.03, 3),
	MonsterLoot:withPlatinumCoins(48.56, 50),
	MonsterLoot:withGlowingRune(36.68, 6),
	MonsterLoot:withFrostyHeart(19.96),
	MonsterLoot:withUltimateManaPotion(16.81),
	MonsterLoot:withInkwell(16.07),
	MonsterLoot:withUltimateHealthPotion(15.94),
	MonsterLoot:withIceCube(12.58),
	MonsterLoot:withGlacierMask(7.51),
	MonsterLoot:withCrystalSword(5.68),
	MonsterLoot:withIceRapier(5.41),
	MonsterLoot:withCrystalMace(4.63),
	MonsterLoot:withDiamondSceptre(4.19),
	MonsterLoot:withSlimeHeart(4.1),
	MonsterLoot:withPieceOfDeadBrain(3.93),
	MonsterLoot:withGlacierKilt(2.62),
	MonsterLoot:withGlacierRobe(2.1),
	MonsterLoot:withGlacialRod(0.96),
	MonsterLoot:withSapphireHammer(0.74),
	MonsterLoot:withCrystallineArmor(0.66),
	MonsterLoot:withLeviathansAmulet(0.09)
}

monster.attacks = {
	-- Basic attack (0-800 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 800),
	-- GroundShaker Box (600-800 ice, on target)(Snowball)
	CustomMonsterSpell:new():setDamageRange(600, 800):withSnowball():withTarget():withIceDamage():withBox():withGroundShaker(

	),
	-- Ice Box (600-850 ice, on self)
	CustomMonsterSpell:new():setDamageRange(600, 850):withIceDamage():withBox():withIce(),
	-- Icy Wind Cross (800-1100 ice, on self)
	CustomMonsterSpell:new():setDamageRange(800, 1100):withIceDamage():withIcyWind():withCross(),
	-- Blue Notes Strike (700-900 ice, on target)
	CustomMonsterSpell:new():setDamageRange(700, 900):withIceDamage():withStrike():withBlueNotes():withTarget(),
	-- Blue Notes Beam (500-600 ice)
	CustomMonsterSpell:new():setDamageRange(500, 600):withIceDamage():withBeam():withBlueNotes():withIcicleRune()
}

monster.defenses = {
	defense = 40,
	armor = 78
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
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
