local mType = Game.createMonsterType("Undead Dragon")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "13/04/2022"
}

monster.description = "an undead dragon"
monster.experience = 7200
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 282
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Helheim (single, isolated spawn), Pits of Inferno (Ashfalor's throneroom), \z
		Demon Forge (The Shadow Nexus and The Arcanum), under Razachai (including the Inner Sanctum), \z
		Chyllfroest, Oramond Fury Dungeon."
}

monster.health = 8350
monster.maxHealth = 8350
monster.race = "undead"
monster.corpse = 6305
monster.speed = 330
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 20,
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
	interval = 5000,
	chance = 10,
	{text = "FEEEED MY ETERNAL HUNGER!", yell = true},
	{text = "I SENSE LIFE", yell = true}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 200),
	MonsterLoot:withPlatinumCoins(49, 72, 5),
	MonsterLoot:withUnholyBone(32.92),
	MonsterLoot:withSmallSapphire(26.77, 2),
	MonsterLoot:withAssassinStar(25.08, 5),
	MonsterLoot:withGreatManaPotion(24.97, 3),
	MonsterLoot:withGreatHealthPotion(24.77, 3),
	MonsterLoot:withBlackPearl(22.63, 2),
	MonsterLoot:withPowerBolt(15.2, 15),
	MonsterLoot:withHardenedBone(15.12),
	MonsterLoot:withDemonicEssence(14.83),
	MonsterLoot:withGoldenMug(5.25),
	MonsterLoot:withKnightArmor(5.17),
	MonsterLoot:withDragonboneStaff(4.24),
	MonsterLoot:withDeathRing(1.94),
	MonsterLoot:withLifeCrystal(1.45),
	MonsterLoot:withWarAxe(1.39),
	MonsterLoot:withGoldIngot(1.34),
	MonsterLoot:withBlueGem(1.09),
	MonsterLoot:withRoyalHelmet(1.03),
	MonsterLoot:withDragonSlayer(0.99),
	MonsterLoot:withGoldenArmor(0.71),
	MonsterLoot:withSpellweaversRobe(0.62),
	MonsterLoot:withDivinePlate(0.54),
	MonsterLoot:withSkullcrackerArmor(0.32)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 450),
	-- Poison Ball (100-410 earth, on target)
	CustomMonsterSpell:withPoisonBall(100, 410):withEarthDamage():withTarget(),
	-- Death Strike (260-550 physical, on target)
	CustomMonsterSpell:withDeathStrike(260, 550):withPhysicalDamage():withTarget(),
	-- Great Death Wave (500-600 death)
	CustomMonsterSpell:withGreatDeathWave(500, 600):withDeathDamage(),
	-- Blood Ball (290-400 life drain, on target)
	CustomMonsterSpell:withBloodBall(290, 400):withLifeDrainDamage():withTarget(),
	-- Great Red Stars Wave (250-440 life drain)
	CustomMonsterSpell:withGreatRedStarsWave(250, 440):withLifeDrainDamage(),
	{name = "undead dragon curse", interval = 2000, chance = 10, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Healing (200-300 heal)
	CustomMonsterSpell:new():withHealing(200, 300)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE, percent = -25},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
