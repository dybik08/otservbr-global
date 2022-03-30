local mType = Game.createMonsterType("Adult Goanna")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "30/03/2022"
}

monster.description = "an adult goanna"
monster.experience = 6650
monster.outfit = {
	lookType = 1195,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1818
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh Central Steppe, Kilmaresh Southern Steppe, Green Belt."
}

monster.health = 8300
monster.maxHealth = 8300
monster.race = "blood"
monster.corpse = 31405
monster.speed = 420
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
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
	MonsterLoot:withPlatinumCoins(100, 3),
	MonsterLoot:withEnvenomedArrow(59.9, 8),
	MonsterLoot:new():setLoot("earth arrow", 13.53, 30),
	MonsterLoot:withEmeraldBangle(12.44),
	MonsterLoot:withGoannaMeat(11.44),
	MonsterLoot:withSmallEnchantedEmerald(10.15),
	MonsterLoot:withGreenCrystalSplinter(9.05),
	MonsterLoot:withTerraRod(8.36),
	MonsterLoot:withRedGoannaScale(8.16),
	MonsterLoot:withBlueCrystalShard(7.66),
	MonsterLoot:withSmallSapphire(6.87, 2),
	MonsterLoot:withTerraHood(6.57),
	MonsterLoot:withGoannaClaw(6.37),
	MonsterLoot:withTerraAmulet(5.77),
	MonsterLoot:withYellowGem(4.48),
	MonsterLoot:withSilverBrooch(4.18),
	MonsterLoot:withGreenGem(3.08),
	MonsterLoot:withOpal(2.79, 2),
	MonsterLoot:withSerpentSword(2.79),
	MonsterLoot:withOnyxChip(2.69),
	MonsterLoot:withScaredFrog(2.49),
	MonsterLoot:withGemmedFigurine(1.49),
	MonsterLoot:withWoodCape(1.29),
	MonsterLoot:withFurArmor(1.29),
	MonsterLoot:withWhitePearl(1.29),
	MonsterLoot:withSmallAmethyst(1.19),
	MonsterLoot:new():setLoot("small tortoise", 1.09),
	MonsterLoot:withSacredTreeAmulet(1),
	MonsterLoot:new():setLoot("lizard heart", 0.9),
	MonsterLoot:new():setLoot("coral brooch", 0.7)
}

monster.attacks = {
	-- 	Basic attack (0-400 physical, effect: poison)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 400):setCondition(
		{type = CONDITION_POISON, totalDamage = 400, interval = 4000}
	),
	-- Short Poison T-Wave (300-380 earth)
	CustomMonsterSpell:new():setChance(15):setDamageRange(300, 380):withShortTWave():withPoison():withEarthDamage(),
	-- Terra Strike (300-600 earth, on target)
	CustomMonsterSpell:new():withStrike():setDamageRange(300, 600):withTerra():withEarthDamage():withTarget(),
	-- Groundshaker Ball (200-380 earth, on self)
	CustomMonsterSpell:new():setChance(12):setDamageRange(200, 380):withBall():withGroundShaker():withEarthDamage()
}

monster.defenses = {
	defense = 84,
	armor = 84,
	-- Strong Haste (effect: haste)
	CustomMonsterSpell:new():withStrongHaste(monster.speed, 5000):setChance(15)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
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
