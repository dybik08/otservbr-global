local mType = Game.createMonsterType("Menacing Carnivor")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "9/04/2022"
}

monster.description = "a Menacing Carnivor"
monster.experience = 2112
monster.outfit = {
	lookType = 1139,
	lookHead = 86,
	lookBody = 70,
	lookLegs = 81,
	lookFeet = 91,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1723
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Carnivora's Rocks."
}

monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 30103
monster.speed = 340
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
	MonsterLoot:withPlatinumCoins(67.38, 8),
	MonsterLoot:withMorningStar(17.95),
	MonsterLoot:withUltimateManaPotion(9.33),
	MonsterLoot:new():setLoot("violet glass plate", 6.77),
	MonsterLoot:withCrystalSword(5.74),
	MonsterLoot:withTerraRod(5.13),
	MonsterLoot:withSmallRuby(4.72),
	MonsterLoot:withGreenCrystalFragment(3.28),
	MonsterLoot:withSmallEnchantedRuby(2.77),
	MonsterLoot:withWandOfStarstorm(2.77),
	MonsterLoot:withMachete(2.56),
	MonsterLoot:withHeavyMachete(2.26),
	MonsterLoot:withOnyxChip(2.26),
	MonsterLoot:withWandOfVoodoo(2.05),
	MonsterLoot:withSerpentSword(1.95),
	MonsterLoot:withKnightLegs(1.85),
	MonsterLoot:withTerraLegs(1.64),
	MonsterLoot:withWandOfDragonbreath(1.54),
	MonsterLoot:withOpal(1.33),
	MonsterLoot:withWandOfDecay(0.72),
	MonsterLoot:withIronHelmet(0.51)
}

monster.attacks = {
	-- Basic attack (0-370 physical, effect: poison 9/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 310):setCondition(
		{type = CONDITION_POISON, totalDamage = 180, interval = 4000}
	),
	-- Ranged attack (0-280 physical) (Stalagmite)
	CustomMonsterSpell:new():withStalagmiteRune():setDamageRange(0, 280):withPhysicalDamage():withBlood(),
	-- Longer Envenom Beam (170-250 earth)
	CustomMonsterSpell:new():withEnvenom():setDamageRange(170, 250):withEarthDamage():withLongerBeam(),
	-- Explosion Box (140-200 earth, on target)
	CustomMonsterSpell:new():withExplosion():setDamageRange(140, 200):withEarthDamage():withBox():withTarget(),
	-- Groundshaker Ball (170-230 earth, on self)
	CustomMonsterSpell:new():withGroundShaker():setDamageRange(170, 230):withEarthDamage():withBall(),
	-- Tiny White Steam Beam (110-180 physical)
	CustomMonsterSpell:new():withTinyBeam():setDamageRange(110, 180):withWhiteSteam():withPhysicalDamage(),
	-- Short White Steam T-Wave (160-230 physical)
	CustomMonsterSpell:new():withShortTWave():setDamageRange(160, 230):withWhiteSteam():withPhysicalDamage()
}

monster.defenses = {
	defense = 0,
	armor = 68,
	CustomMonsterSpell:withHealing(150, 200)
}

monster.reflects = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
