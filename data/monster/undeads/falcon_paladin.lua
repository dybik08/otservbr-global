local mType = Game.createMonsterType("Falcon Paladin")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "7/04/2022"
}

monster.description = "a falcon paladin"
monster.experience = 6544
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 94,
	lookLegs = 38,
	lookFeet = 86,
	lookAddons = 2,
	lookMount = 0
}

monster.raceId = 1647
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Falcon Bastion."
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 28861
monster.speed = 220
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
	staticAttackChance = 70,
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
	chance = 10,
	{text = "Uuunngh!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(90, 6),
	MonsterLoot:withGreatSpiritPotion(50.49, 2),
	MonsterLoot:withSmallAmethyst(48.85, 2),
	MonsterLoot:withSmallEmerald(48.42, 2),
	MonsterLoot:withSmallDiamond(45.81, 2),
	MonsterLoot:withAssassinStar(30.52, 10),
	MonsterLoot:withSmallRuby(24.7, 2),
	MonsterLoot:withSmallTopaz(22.15, 2),
	MonsterLoot:withOnyxArrow(16.87, 15),
	MonsterLoot:withRedGem(7.16),
	MonsterLoot:withGreenGem(6.01),
	MonsterLoot:withVioletGem(5.64),
	MonsterLoot:withGiantShimmeringPearl(2.55),
	MonsterLoot:new():setLoot("Damaged Armor Plates", 1.52),
	MonsterLoot:new():setLoot("falcon crest", 1.46),
	MonsterLoot:withMastermindShield(0.79),
	MonsterLoot:withGoldenArmor(0.06)
}

monster.attacks = {
	-- Basic attack (0-400 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 400),
	-- Ranged attack (0-500 physical) (Royal Spear)
	CustomMonsterSpell:new():withRoyalSpear():setChance(50):setDamageRange(0, 500):withPhysicalDamage(),
	-- Ranged attack (0-200 physical) (Bolt)
	CustomMonsterSpell:new():withBolt():setChance(20):setDamageRange(0, 200):withPhysicalDamage(),
	-- Energy Box (400-500 energy, on target) (Power Bolt)
	CustomMonsterSpell:new():withPowerBolt():withBox():withEnergy():setDamageRange(400, 500):withTarget():withEnergyDamage(

	),
	-- Short Blue Electric Beam (250-350 energy)
	CustomMonsterSpell:new():withShortBeam():withBlueElectric():setDamageRange(250, 350):withEnergyDamage()
}

monster.defenses = {
	defense = 50,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
