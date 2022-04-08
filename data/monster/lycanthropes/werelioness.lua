local mType = Game.createMonsterType("Werelioness")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "8/04/2022"
}

monster.description = "a werelioness"
monster.experience = 2500
monster.outfit = {
	lookType = 1301,
	lookHead = 58,
	lookBody = 2,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1966
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "This monster we can find in Hyaena Lairs."
}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 34185
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 20
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
	runHealth = 5,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 1,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 99),
	MonsterLoot:withPlatinumCoins(100, 8),
	MonsterLoot:withHam(78.65, 3),
	MonsterLoot:withSoulOrb(20.49),
	MonsterLoot:withMeat(19.17, 3),
	MonsterLoot:new():setLoot("lion's mane", 14.65),
	MonsterLoot:new():setLoot("rapier", 13.23),
	MonsterLoot:new():setLoot("leather helmet", 11.75),
	MonsterLoot:withCrystalSword(10.36),
	MonsterLoot:new():setLoot("ankh", 10.13),
	MonsterLoot:withSmallEnchantedSapphire(9.17, 6),
	MonsterLoot:withBlackPearl(7.4, 1),
	MonsterLoot:withSerpentSword(6.01),
	MonsterLoot:new():setLoot("steel helmet", 4.21),
	MonsterLoot:new():setLoot("ivory carving", 3.6),
	MonsterLoot:withWhitePearl(2.97),
	MonsterLoot:withMoonlightCrystal(1.99),
	MonsterLoot:withLightningHeadband(1.93),
	MonsterLoot:withCrownHelmet(1.11),
	MonsterLoot:withMagmaLegs(0.78),
	MonsterLoot:new():setLoot("Lion Figurine", 0.4),
	MonsterLoot:new():setLoot("White Silk Flower", 0.31)
}

monster.attacks = {
	-- 	Basic attack (0-350 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 350),
	-- Short Detonation Cone-Wave (250-350 fire)
	CustomMonsterSpell:new():setDamageRange(250, 350):withShortConeWave():withDetonation():withFireDamage(),
	-- Holy Strike (300-350 holy, on target)
	CustomMonsterSpell:new():setDamageRange(300, 350):withHolyDamage():withTarget():withHoly()
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Healing (100-150 heal)
	CustomMonsterSpell:new():withHealing(100, 150)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
