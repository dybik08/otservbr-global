local mType = Game.createMonsterType("Werelion")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "8/04/2022"
}

monster.description = "a werelion"
monster.experience = 2400
monster.outfit = {
	lookType = 1301,
	lookHead = 58,
	lookBody = 2,
	lookLegs = 94,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1965
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 3,
	Occurrence = 0,
	Locations = "This monster you can find in Hyaena Lairs."
}

monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 33825
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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	MonsterLoot:withPlatinumCoins(100, 5),
	MonsterLoot:withGreatSpiritPotion(63.74, 2),
	MonsterLoot:new():setLoot("lion's mane", 15.84),
	MonsterLoot:new():setLoot("meat", 11.19),
	MonsterLoot:withCrystalSword(7.65),
	MonsterLoot:withSmallEnchantedRuby(6.1, 5),
	MonsterLoot:withSilverBrooch(5.01),
	MonsterLoot:withSmallDiamond(4.84),
	MonsterLoot:new():setLoot("ivory carving", 4.12),
	MonsterLoot:withWarHammer(4.04),
	MonsterLoot:withDarkShield(3.36),
	MonsterLoot:withGloriousAxe(2.64),
	MonsterLoot:withRainbowQuartz(2.5, 3),
	MonsterLoot:new():setLoot("doublet", 2.5),
	MonsterLoot:new():setLoot("spirit cloak", 2.23),
	MonsterLoot:withOpal(2.14),
	MonsterLoot:withMoonlightCrystal(1.95),
	MonsterLoot:new():setLoot("coral brooch", 1.93),
	MonsterLoot:withTitanAxe(1.7),
	MonsterLoot:withSpikedSquelcher(1.57),
	MonsterLoot:withNobleAxe(1.21),
	MonsterLoot:new():setLoot("White Silk Flower", 0.55),
	MonsterLoot:new():setLoot("Lion Figurine", 0.5)
}

monster.attacks = {
	-- 	Basic attack (0-350 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 350),
	-- Great Fire Ball (250-370 fire, on self)
	CustomMonsterSpell:new():withFire():withGreatBeam():setDamageRange(250, 370):withFireDamage(),
	-- Holy Strike (350-450 holy, on target)
	CustomMonsterSpell:new():withHoly():withStrike():setDamageRange(350, 450):withTarget():withHolyDamage(),
	-- Shorter Berserk Cone-Wave (230-300 holy)
	CustomMonsterSpell:new():withShorterConeWave():withBerserk():withHolyDamage():setDamageRange(230, 300)
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
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 45}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
