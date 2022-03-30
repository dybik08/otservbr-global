local mType = Game.createMonsterType("Young Goanna")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "30/03/2022"
}

monster.description = "a young goanna"
monster.experience = 6100
monster.outfit = {
	lookType = 1196,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1817
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

monster.health = 6200
monster.maxHealth = 6200
monster.race = "blood"
monster.corpse = 31409
monster.speed = 380
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
	MonsterLoot:withEnvenomedArrow(71.1, 35),
	MonsterLoot:withSnakebiteRod(10.89),
	MonsterLoot:withGoannaMeat(8.9),
	MonsterLoot:withBlueCrystalShard(8.59),
	MonsterLoot:withTerraRod(8.59),
	MonsterLoot:withBlueGoannaScale(7.96),
	MonsterLoot:withLeafStar(4.82, 3),
	MonsterLoot:withSmallEnchantedEmerald(4.5),
	MonsterLoot:withOnyxChip(3.98),
	MonsterLoot:withVioletGem(3.77),
	MonsterLoot:withGoannaClaw(3.66),
	MonsterLoot:withRainbowQuartz(3.56, 3),
	MonsterLoot:withGreenCrystalShard(3.56),
	MonsterLoot:withSpringsproutRod(3.56),
	MonsterLoot:withSerpentSword(3.35),
	MonsterLoot:withYellowGem(2.3),
	MonsterLoot:withScaredFrog(2.3),
	MonsterLoot:withSilverAmulet(2.2),
	MonsterLoot:withTerraAmulet(1.47),
	MonsterLoot:withBlueGem(1.47),
	MonsterLoot:withTerraHood(1.05),
	MonsterLoot:withSacredTreeAmulet(0.94),
	MonsterLoot:withBlueCrystalSplinter(0.84),
	MonsterLoot:new():setLoot("small tortoise", 0.73),
	MonsterLoot:new():setLoot("lizard heart", 0.42),
	MonsterLoot:withWoodenSpellbook(0.21),
	MonsterLoot:withFurArmor(0.1)
}

monster.attacks = {
	-- Basic attack (0-500 physical, effect: poison)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 500):setCondition(
		{type = CONDITION_POISON, totalDamage = 400, interval = 4000}
	),
	-- Tiny Poison Beam (300-450 earth)
	CustomMonsterSpell:new():setChance(15):withTinyBeam():withPoison():withEarthDamage():setDamageRange(300, 450),
	-- Terra Strike (350-500 earth, on target)
	CustomMonsterSpell:new():withStrike():setDamageRange(350, 500):withTerra():withEarthDamage():withTarget(),
	-- Groundshaker Box (300-450 earth, on self)
	CustomMonsterSpell:new():setChance(12):setDamageRange(300, 450):withBox():withGroundShaker():withEarthDamage()
}

monster.defenses = {
	defense = 78,
	armor = 78,
	CustomMonsterSpell:new():withHaste(350, 5000):setChance(15)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
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
