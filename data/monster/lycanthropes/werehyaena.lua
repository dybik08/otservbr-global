local mType = Game.createMonsterType("Werehyaena")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a werehyaena"
monster.experience = 2200
monster.outfit = {
	lookType = 1300,
	lookHead = 57,
	lookBody = 77,
	lookLegs = 1,
	lookFeet = 1,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1963
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

monster.health = 2700
monster.maxHealth = monster.health
monster.race = "blood"
monster.corpse = 33821
monster.speed = 120
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
	canWalkOnEnergy = true,
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
	MonsterLoot:withGreatHealthPotion(50.63, 3),
	MonsterLoot:withMeat(17.86, 3),
	MonsterLoot:withKnife(17.11),
	MonsterLoot:withAxe(16),
	MonsterLoot:new():setLoot("werehyaena nose", 12.15),
	MonsterLoot:withHalberd(11.25),
	MonsterLoot:withRedCrystalFragment(9.52),
	MonsterLoot:withYellowGem(5.74),
	MonsterLoot:withRedGem(5.65),
	MonsterLoot:new():setLoot("life preserver", 5.53),
	MonsterLoot:withSmallEnchantedAmethyst(5.44),
	MonsterLoot:withCombatKnife(5.22),
	MonsterLoot:withGreenCrystalFragment(9.52),
	MonsterLoot:withRatana(3.84),
	MonsterLoot:withMoonlightCrystal(1.23),
	MonsterLoot:new():setLoot("werehyaena talisman", 0.5),
	MonsterLoot:new():setLoot("werehyaena trophy", 0.17)
}

monster.attacks = {
	-- 	Basic attack (0-300 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 300),
	-- Poison Box (170-270 earth, on self)
	CustomMonsterSpell:new():withBox():withPoison():setDamageRange(170, 270):withEarthDamage(),
	-- Death Strike (250-400 death, on target)
	CustomMonsterSpell:new():withStrike():withDeath():setDamageRange(250, 400):withSuddenDeathRune():withDeathDamage(),
	-- Shorter Death Beam (200-300 death)
	CustomMonsterSpell:new():withShorterBeam():withDeath():setDamageRange(200, 300):withDeathDamage()
}

monster.defenses = {
	{name = "speed", chance = 15, interval = 2000, speed = 200, duration = 5000, effect = CONST_ME_MAGIC_BLUE},
	defense = 0,
	armor = 38
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = true}
}

mType:register(monster)
