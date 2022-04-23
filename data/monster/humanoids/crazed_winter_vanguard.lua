local mType = Game.createMonsterType("Crazed Winter Vanguard")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "14/04/2022"
}

monster.description = "a Crazed Winter Vanguard"
monster.experience = 5400
monster.outfit = {
	lookType = 1136,
	lookHead = 0,
	lookBody = 123,
	lookLegs = 28,
	lookFeet = 20,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1730
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

monster.health = 5800
monster.maxHealth = 5800
monster.race = "blood"
monster.corpse = 30122
monster.speed = 380
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
	MonsterLoot:withPlatinumCoins(85.56, 13),
	MonsterLoot:withIceFlower(13.16),
	MonsterLoot:withSmallEnchantedRuby(12.69),
	MonsterLoot:withMiraculum(10.51),
	MonsterLoot:withUltimateHealthPotion(8.87),
	MonsterLoot:withDreamEssenceEgg(8.27),
	MonsterLoot:withTigerEye(6.74),
	MonsterLoot:withNorthwindRod(5.76),
	MonsterLoot:withGlacierAmulet(5.59),
	MonsterLoot:withIceRapier(5.54),
	MonsterLoot:withGlacierRobe(2.02),
	MonsterLoot:withElvenAmulet(0.71),
	MonsterLoot:withBlueGem(0.16)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 450),
	-- 	Ice Ball (200-300 ice, on self)
	CustomMonsterSpell:withIceBall(200, 300):withIceDamage(),
	-- -- Ice Chain (240-300 ice)
	{
		name = "singleicechain",
		interval = 2000,
		chance = 10,
		minDamage = -240,
		maxDamage = -300,
		range = 5,
		effect = CONST_ME_ICEATTACK,
		target = true
	},
	-- Icy Wind Box (200-300 ice, on self)
	CustomMonsterSpell:withIcyWindBox(200, 300):withIceDamage(),
	-- -- Shorter Icy Crystal Beam (150-250 ice)
	CustomMonsterSpell:withShorterIcyCrystalBeam(200, 250):withIceDamage()
	-- -- Short Icy Wall Beam (200-250 ice) - TODO CONFIRM
	-- CustomMonsterSpell:new():withIcyCrystal():setDamageRange(150, 250):withLongBeam():withIceDamage():setChance(10),
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
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = -30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
