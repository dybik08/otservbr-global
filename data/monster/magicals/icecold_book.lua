local mType = Game.createMonsterType("Icecold Book")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "an icecold book"
monster.experience = 12750
monster.outfit = {
	lookType = 1061,
	lookHead = 87,
	lookBody = 85,
	lookLegs = 79,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1664
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

monster.health = 21000
monster.maxHealth = 21000
monster.race = "undead"
monster.corpse = 28774
monster.speed = 440
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
	canWalkOnFire = true,
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
	MonsterLoot:withPlatinumCoins(91.88, 5),
	MonsterLoot:withBookPage(62.92, 8),
	MonsterLoot:withSmallDiamond(45.94),
	MonsterLoot:withSmallSapphire(26.77, 9),
	MonsterLoot:withUltimateManaPotion(20.8),
	MonsterLoot:withIceRapier(20.67),
	MonsterLoot:withQuill(18.52),
	MonsterLoot:withUltimateHealthPotion(18.36),
	MonsterLoot:withSilkenBookmark(17.63),
	MonsterLoot:withGlacierMask(14.26),
	MonsterLoot:withFrostyHeart(11.66),
	MonsterLoot:withDiamondSceptre(6.58),
	MonsterLoot:withIceCube(4.75),
	MonsterLoot:withGlacierKilt(4.47),
	MonsterLoot:withGlacierShoes(3.49),
	MonsterLoot:withCrystalMace(2.44),
	MonsterLoot:withSapphireHammer(1.83),
	MonsterLoot:withGlacierRobe(1.75),
	MonsterLoot:withStrangeHelmet(1.62),
	MonsterLoot:withCrystallineArmor(0.89),
	MonsterLoot:withGlacialRod(0.53),
	MonsterLoot:withLeviathansAmulet(0.12)
}

monster.attacks = {
	-- 	Basic attack (0-700 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 700),
	-- Icy Wind Box (700-900 ice, on self)
	CustomMonsterSpell:new():withIceDamage():setDamageRange(700, 900):withIcyWind():withBox(),
	-- Icy Flake Strike (700-850 ice, on target)
	CustomMonsterSpell:new():withIceDamage():setDamageRange(700, 850):withIcyFlake():withStrike():withTarget(),
	-- Icy Flake Beam (800-1350 ice)
	CustomMonsterSpell:new():withIceDamage():setDamageRange(800, 1350):withIcyFlake():withBeam()
}

monster.defenses = {
	defense = 40,
	armor = 82,
	-- Healing
	CustomMonsterSpell:new():withHealing(100, 300)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -10},
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
