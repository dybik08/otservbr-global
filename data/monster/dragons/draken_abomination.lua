local mType = Game.createMonsterType("Draken Abomination")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "13/04/2022"
}

monster.description = "a draken abomination"
monster.experience = 3800
monster.outfit = {
	lookType = 357,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 673
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Razachai including the Inner Sanctum."
}

monster.health = 6250
monster.maxHealth = 6250
monster.race = "venom"
monster.corpse = 11667
monster.speed = 270
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
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

monster.summon = {
	maxSummons = 2,
	summons = {
		{name = "Death Blob", chance = 10, interval = 2000, count = 2}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Uhhhg!", yell = false},
	{text = "Hmmnn!", yell = false},
	{text = "Aaag!", yell = false},
	{text = "Gll", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(97.08, 200),
	MonsterLoot:withMeat(50.07),
	MonsterLoot:withPlatinumCoins(49.85, 8),
	MonsterLoot:new():setLoot("eye of corruption", 12.01),
	MonsterLoot:withScaleOfCorruption(11.03),
	MonsterLoot:withUltimateHealthPotion(9.09, 3),
	MonsterLoot:withGreatManaPotion(9.04, 3),
	MonsterLoot:withTerraHood(8.23),
	MonsterLoot:new():setLoot("tail of corruption", 5.97),
	MonsterLoot:withGreatSpiritPotion(5.25, 3),
	MonsterLoot:withSmallTopaz(2.89),
	MonsterLoot:withWandOfVoodoo(1),
	MonsterLoot:withZaoanLegs(0.9),
	MonsterLoot:withZaoanArmor(0.84),
	MonsterLoot:withZaoanHelmet(0.68),
	MonsterLoot:withDrakenBoots(0.58),
	MonsterLoot:new():setLoot("bamboo leaves", 0.32),
	MonsterLoot:new():setLoot("snake god's wristguard", 0.01),
	MonsterLoot:new():setLoot("shield of corruption", 0.01)
}

monster.attacks = {
	-- 	Basic attack (0-300 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 300),
	-- Death Beam (170-370 death)
	CustomMonsterSpell:withDeathBeam(170, 370):withDeathDamage(),
	-- Envenom Box (100-200 physical, self)
	CustomMonsterSpell:withEnvenomBox(100, 200):withPhysicalDamage(),
	-- Eruption Wave (310-480 fire)
	CustomMonsterSpell:withEruptionWave(310, 480):withFireDamage(),
	{name = "draken abomination curse", interval = 2000, chance = 10, range = 5, target = false},
	{
		name = "drunk",
		interval = 2000,
		chance = 15,
		range = 7,
		radius = 4,
		shootEffect = CONST_ANI_POISON,
		effect = CONST_ME_POISONAREA,
		target = false,
		duration = 9000
	}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	-- Healing (200-400 heal)
	CustomMonsterSpell:new():withHealing(200, 400)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE, percent = -5},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
