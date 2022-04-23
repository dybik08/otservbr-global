local mType = Game.createMonsterType("Werehyaena Shaman")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a werehyaena shaman"
monster.experience = 2200
monster.outfit = {
	lookType = 1300,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 94,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1964
monster.Bestiary = {
	class = "Lycanthrope",
	race = BESTY_RACE_LYCANTHROPE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "This monster you can find in Hyaena Lairs."
}

monster.health = 2500
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 34189
monster.speed = 110
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
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
	runHealth = 30,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 0,
	chance = 0
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 3),
	MonsterLoot:withGreatManaPotion(19.75),
	MonsterLoot:new():setLoot("werehyaena nose", 15.34),
	MonsterLoot:withGreenCrystalSplinter(9.93),
	MonsterLoot:withSmallAmethyst(9.37, 2),
	MonsterLoot:withHailstormRod(7.95),
	MonsterLoot:withWandOfStarstorm(5.62),
	MonsterLoot:new():setLoot("doublet", 5.22),
	MonsterLoot:withBrownCrystalSplinter(4.84),
	MonsterLoot:withSwordRing(4.42),
	MonsterLoot:withSmallEnchantedEmerald(4.34),
	MonsterLoot:withWandOfVoodoo(3.21),
	MonsterLoot:withProtectionAmulet(2.92),
	MonsterLoot:withBlackShield(2.7),
	MonsterLoot:withMoonlightCrystal(1.45),
	MonsterLoot:new():setLoot("werehyaena talisman", 0.59),
	MonsterLoot:new():setLoot("werehyaena trophy", 0.24)
}

monster.attacks = {
	-- 	Basic attack (0-250 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 250),
	-- 	Poison Box (200-350 death, on self)
	CustomMonsterSpell:new():withBox():withPoison():setDamageRange(200, 350):withDeathDamage(),
	-- Poison Ball (250-350 earth, on target)
	CustomMonsterSpell:new():withBall():withPoison():setDamageRange(200, 350):withEarthDamage():withTarget(),
	-- Death Strike (300-450 death, on target)
	CustomMonsterSpell:new():withStrike():withDeath():setDamageRange(300, 450):withSuddenDeathRune():withDeathDamage(),
	-- Shorter Death Beam (200-300 death)
	CustomMonsterSpell:new():withShorterBeam():withDeath():setDamageRange(200, 300):withDeathDamage()
}

monster.defenses = {
	{name = "speed", interval = 2 * 1000, chance = 15, speed = 200, duration = 5 * 1000, effect = CONST_ME_MAGIC_BLUE},
	defense = 0,
	armor = 38
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
