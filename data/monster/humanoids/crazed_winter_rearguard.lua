local mType = Game.createMonsterType("Crazed Winter Rearguard")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "15/04/2022"
}

monster.description = "a Crazed Winter Rearguard"
monster.experience = 4700
monster.outfit = {
	lookType = 1136,
	lookHead = 86,
	lookBody = 85,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1731
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Court of Winter, Dream Labyrinth."
}

monster.health = 5200
monster.maxHealth = 5200
monster.race = "blood"
monster.corpse = 30126
monster.speed = 400
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
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
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
	MonsterLoot:withPlatinumCoins(84.53, 5),
	MonsterLoot:withUltimateHealthPotion(17.27),
	MonsterLoot:withIceRapier(16.21),
	MonsterLoot:withGreatSpiritPotion(15.12),
	MonsterLoot:withDreamEssenceEgg(8.95),
	MonsterLoot:withIceFlower(8.09, 2),
	MonsterLoot:withElvenAstralObserver(7.63),
	MonsterLoot:withLifeCrystal(6.75),
	MonsterLoot:withGlacierMask(5.49),
	MonsterLoot:withMoonlightRod(5.35),
	MonsterLoot:withSmallEnchantedSapphire(3.97),
	MonsterLoot:withGlacierAmulet(3.06),
	MonsterLoot:withHailstormRod(2.32),
	MonsterLoot:withNorthwindRod(2.17),
	MonsterLoot:withGlacierRobe(1.92),
	MonsterLoot:withCyanCrystalFragment(1.89),
	MonsterLoot:withElvenAmulet(1.11),
	MonsterLoot:withBlueGem(0.51)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 450),
	-- 	Ice Strike (240-300 ice, on target)
	CustomMonsterSpell:withIceStrike(240, 300):withIceDamage(),
	-- Icy Flake Box (230-300 ice, on target)
	CustomMonsterSpell:withIcyFlakeBox(230, 300):withIceDamage():withTarget()
}

monster.defenses = {
	defense = 20,
	armor = 70
}

monster.reflects = {
	{type = COMBAT_ICEDAMAGE, percent = 70}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -15},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = -20},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
