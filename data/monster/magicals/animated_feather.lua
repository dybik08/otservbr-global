local mType = Game.createMonsterType("Animated Feather")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "an animated feather"
monster.experience = 9860
monster.outfit = {
	lookType = 1058,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1671
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Secret Library."
}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "undead"
monster.corpse = 28578
monster.speed = 420
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
	MonsterLoot:withGlowingRune(79.06, 5),
	MonsterLoot:withPlatinumCoins(76.6, 21),
	MonsterLoot:withSmallSapphire(41.88, 12),
	MonsterLoot:withUltimateManaPotion(18.11, 2),
	MonsterLoot:withQuill(14.32),
	MonsterLoot:withIceCube(13.84),
	MonsterLoot:withEnergyRing(13.3),
	MonsterLoot:withGlacierMask(7.21),
	MonsterLoot:withDiamondSceptre(5.34),
	MonsterLoot:withSmallDiamond(4.81, 12),
	MonsterLoot:withLifeCrystal(3.42),
	MonsterLoot:withGlacierAmulet(3.42),
	MonsterLoot:withGoldenMug(2.72),
	MonsterLoot:withHailstormRod(2.35),
	MonsterLoot:withCrystalMace(2.14),
	MonsterLoot:withGlacialRod(1.07),
	MonsterLoot:withSapphireHammer(0.75),
	MonsterLoot:withLeviathansAmulet(0.48),
	MonsterLoot:withCrystallineArmor(0.16)
}

monster.attacks = {
	-- 	Basic attack (0-600 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 600),
	-- Ice Strike (600-800 ice, on target)
	CustomMonsterSpell:new():setDamageRange(600, 800):withIceDamage():withStrike():withIce():withTarget(),
	-- Ice Box (500-850 ice, on target)(Snowball)
	CustomMonsterSpell:new():setDamageRange(500, 850):withIceDamage():withBox():withIce():withTarget():withSnowball(),
	-- Short Ice Wave (800-1150 ice)
	CustomMonsterSpell:new():withIceDamage():setDamageRange(800, 1150),
	-- Icy Wind X-Cross (600-900 ice, on self)
	CustomMonsterSpell:new():withIceDamage():setDamageRange(600, 900):withIcyWind():withXCross()
}

monster.defenses = {
	defense = 40,
	armor = 79
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -18},
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
