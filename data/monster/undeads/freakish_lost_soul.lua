local mType = Game.createMonsterType("Freakish Lost Soul")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "22/04/2022"
}

monster.description = "Freakish Lost Soul"
monster.experience = 7020
monster.outfit = {
	lookType = 1268,
	lookHead = 0,
	lookBody = 112,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1866
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Brain Grounds, Netherworld, Zarganash."
}

monster.health = 7000
monster.maxHealth = 7000
monster.race = "undead"
monster.corpse = 32610
monster.speed = 260
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
	illusionable = true,
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
	MonsterLoot:withPlatinumCoins(100, 5),
	MonsterLoot:withLostSoul(40.98),
	MonsterLoot:withDeathToll(8.93),
	MonsterLoot:withEmeraldBangle(4.92),
	MonsterLoot:withEnsouledEssence(3.1),
	MonsterLoot:withRingofBluePlasma(1.64),
	MonsterLoot:withSilverHandMirror(1.64),
	MonsterLoot:withOrnateCrossbow(0.36),
	MonsterLoot:withCrystalCrossbow(0.18)
}

monster.attacks = {
	-- 	Basic attack (0-650 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 650),
	-- Ranged attack (240-300 mana drain) (Onyx Arrow, Druid)
	{
		name = "lost soul mana leech",
		interval = 2000,
		chance = 100,
		minDamage = -240,
		maxDamage = -300,
		target = true
	},
	-- Envenom Strike (450-800 life drain, on target)
	CustomMonsterSpell:withEnvenomStrike(300, 420):withLifeDrainDamage(),
	-- Shorter Blue Electric Beam (400-620 energy)
	CustomMonsterSpell:withShorterBlueElectricBeam(400, 620):withEnergyDamage(),
	-- Great Death Ball (500-600 death, on self)
	CustomMonsterSpell:withGreatDeathBall(500, 600):withDeathDamage(),
	-- Ranged attack (0-400 physical) (Drill Bolt)
	CustomMonsterSpell:new():withDrillBolt():withPhysicalDamage():setDamageRange(0, 400)
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 60},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -40},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
