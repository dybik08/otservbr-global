local mType = Game.createMonsterType("Wyrm")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "3/04/2022"
}

monster.description = "a wyrm"
monster.experience = 1550
monster.outfit = {
	lookType = 291,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 461
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Drefia Wyrm Lair (after the Medusa Shield Quest room), Darashia Wyrm Hills, Arena and Zoo Quarter, beneath Fenrock, Deeper Razachai, Lower Spike, Vandura Wyrm Cave and Vandura Mountain in Liberty Bay."
}

monster.health = 1825
monster.maxHealth = 1825
monster.race = "blood"
monster.corpse = 8113
monster.speed = 280
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 10,
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
	MonsterLoot:withGoldCoins(96.9, 232),
	MonsterLoot:withDragonHam(34.88, 3),
	MonsterLoot:withStrongHealthPotion(20.22),
	MonsterLoot:withStrongManaPotion(15.21),
	MonsterLoot:new():setLoot("wyrm scale", 14.97),
	MonsterLoot:new():setLoot("burst arrow", 7.95, 10):setItemId(22119),
	MonsterLoot:withCrossbow(6.05),
	MonsterLoot:withFocusCape(1.23),
	MonsterLoot:withWandOfDraconia(1.01),
	MonsterLoot:withSmallDiamond(0.91, 3),
	MonsterLoot:withLightningPendant(0.74),
	MonsterLoot:withWandOfStarstorm(0.46),
	MonsterLoot:new():setLoot("hibiscus dress", 0.31),
	MonsterLoot:new():setLoot("composite hornbow", 0.11),
	MonsterLoot:new():setLoot("dragonbone staff", 0.1),
	MonsterLoot:new():setLoot("shockwave amulet", 0.08)
}

monster.attacks = {
	-- 	Basic attack (0-235 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 235),
	-- Ranged attack (100-125 energy)
	CustomMonsterSpell:new():withHeavyMagicMissileRune():setDamageRange(100, 125):withEnergyDamage(),
	-- Yellow Electric Box (100-220 energy, on self)
	CustomMonsterSpell:new():setDamageRange(100, 220):withYellowElectric():withEnergyDamage():withBox(),
	-- Violet Electric Long Wave (130-200 energy)
	CustomMonsterSpell:new():setDamageRange(130, 200):withVioletElectric():withEnergyDamage():withLongWave(),
	-- Short Smoke Beam (0-145 life drain)
	CustomMonsterSpell:new():setDamageRange(0, 145):withSmoke():withLifeDrainDamage():withShortBeam()
}

monster.defenses = {
	defense = 35,
	armor = 35,
	-- Healing (100-150 heal)
	CustomMonsterSpell:new():withHealing(100, 150),
	{name = "effect", interval = 2000, chance = 10, radius = 1, effect = CONST_ME_SOUND_YELLOW, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 75},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
