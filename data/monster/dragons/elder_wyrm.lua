local mType = Game.createMonsterType("Elder Wyrm")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "4/04/2022"
}

monster.description = "an elder wyrm"
monster.experience = 2500
monster.outfit = {
	lookType = 561,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 963
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Drefia Wyrm Lair, Vandura Wyrm Cave, Glooth Factory (west)."
}

monster.health = 2700
monster.maxHealth = 2700
monster.race = "blood"
monster.corpse = 18966
monster.speed = 280
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 250,
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
	chance = 10,
	{text = "GRROARR", yell = false},
	{text = "GRRR", yell = false}
}

monster.loot = {
	MonsterLoot:new():withGoldCoins(100, 179),
	MonsterLoot:new():withDragonHam(35.4, 4),
	MonsterLoot:new():withPlatinumCoins(24.98, 3),
	MonsterLoot:new():withStrongManaPotion(20.02),
	MonsterLoot:new():withStrongHealthPotion(19.89),
	MonsterLoot:new():setLoot("wyrm scale", 17.12),
	MonsterLoot:new():withCrossbow(7.99),
	MonsterLoot:new():withSoulOrb(4.97),
	MonsterLoot:new():withSmallDiamond(4.27, 5),
	MonsterLoot:new():withWandOfDraconia(1.51),
	MonsterLoot:new():withPowerBolt(1.03, 10),
	MonsterLoot:new():withWandOfStarstorm(0.83),
	MonsterLoot:new():withLightningPendant(0.75),
	MonsterLoot:new():withLightningLegs(0.6),
	MonsterLoot:new():withLightningRobe(0.29),
	MonsterLoot:new():setLoot("dragonbone staff", 0.24),
	MonsterLoot:new():setLoot("composite hornbow", 0.22),
	MonsterLoot:new():setLoot("shadow sceptre", 0.17),
	MonsterLoot:new():withLightningBoots(0.14),
	MonsterLoot:new():setLoot("shockwave amulet", 0.12)
}

monster.attacks = {
	-- 	Basic attack (0-235 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 350),
	-- 	Energy Ball (90-130 energy, on target)
	CustomMonsterSpell:new():withEnergy():setDamageRange(90, 130):withBall():withEnergyDamage():withTarget(),
	-- Great Violet Electric Ball (140-200 energy, on self)
	CustomMonsterSpell:new():withVioletElectric():setDamageRange(140, 200):withGreatBeam():withEnergyDamage(),
	-- Greater Sparky Beam (0-150 physical, effect: electrify 25hp/tick)
	CustomMonsterSpell:new():withEnergyCondition():withSparky():setDamageRange(0, 150):withGreatBeam():withPhysicalDamage(),
	-- Long Black Steam Cone-Wave (200-250 life drain)
	CustomMonsterSpell:new():withBlackSteam():setDamageRange(200, 250):withLongConeWave():withLifeDrainDamage()
}

monster.defenses = {
	defense = 45,
	armor = 45,
	-- Healing (100-150 heal)
	CustomMonsterSpell:new():withHealing(100, 150)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 75},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
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
