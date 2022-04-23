local mType = Game.createMonsterType("Flimsy Lost Soul")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "20/04/2022"
}

monster.description = "Flimsy Lost Soul"
monster.experience = 4500
monster.outfit = {
	lookType = 1268,
	lookHead = 0,
	lookBody = 26,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1864
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

monster.health = 4000
monster.maxHealth = 4000
monster.race = "undead"
monster.corpse = 32610
monster.speed = 240
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
	MonsterLoot:withLostSoul(29.72),
	MonsterLoot:withWandOfCosmicEnergy(7.15),
	MonsterLoot:withSpringsproutRod(5.58),
	MonsterLoot:withDeathToll(4.18),
	MonsterLoot:withTerraRod(3.96),
	MonsterLoot:withHailstormRod(3.24),
	MonsterLoot:withEnsouledEssence(2.71),
	MonsterLoot:withWandOfStarstorm(1.91),
	MonsterLoot:withNecklaceOfTheDeep(1.87),
	MonsterLoot:withCursedBone(1.79),
	MonsterLoot:withGlacialRod(1.05),
	MonsterLoot:withWandOfVoodoo(0.33)
}

monster.attacks = {
	-- 	Basic attack (0-400 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 400),
	-- Ranged attack (105-210 mana drain) (Onyx Arrow, Druid)
	{
		name = "lost soul mana leech",
		interval = 2000,
		chance = 100,
		minDamage = -105,
		maxDamage = -210,
		target = true
	},
	-- Envenom Strike (320-400 life drain, on target)
	CustomMonsterSpell:withEnvenomStrike(300, 420):withLifeDrainDamage(),
	-- Blue Electric Beam (300-420 energy)
	CustomMonsterSpell:withBlueElectricBeam(300, 420):withEnergyDamage(),
	-- Death Box (360-500 death, on self)
	CustomMonsterSpell:withDeathBox(360, 500):withDeathDamage(),
	-- Ranged attack (0-450 physical) (Drill Bolt)
	CustomMonsterSpell:new():withDrillBolt():withPhysicalDamage():setDamageRange(0, 450)
}

monster.defenses = {
	defense = 40,
	armor = 79
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -20},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
