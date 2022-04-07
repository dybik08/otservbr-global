local mType = Game.createMonsterType("Falcon Knight")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "7/04/2022"
}

monster.description = "a falcon knight"
monster.experience = 5985
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 75,
	lookLegs = 38,
	lookFeet = 86,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1646
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

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 28621
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
	chance = 10,
	{text = "Mmmhaarrrgh!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 5),
	MonsterLoot:withSoulOrb(41.9),
	MonsterLoot:withGreatHealthPotion(38.86, 3),
	MonsterLoot:withFlaskOfDemonicBlood(35.94, 4),
	MonsterLoot:withAssassinStar(31.36, 10),
	MonsterLoot:withGreatManaPotion(25.2, 3),
	MonsterLoot:withSmallEmerald(19.33, 3),
	MonsterLoot:withSmallDiamond(18.96, 3),
	MonsterLoot:withSmallRuby(17.79, 3),
	MonsterLoot:withOnyxArrow(17.67, 15),
	MonsterLoot:withSmallTopaz(5.96, 3),
	MonsterLoot:withTitanAxe(3, 97),
	MonsterLoot:withGiantShimmeringPearl(3.73),
	MonsterLoot:withKnightArmor(2.15),
	MonsterLoot:withSpikedSquelche(1.99),
	MonsterLoot:new():setLoot("falcon crest", 1.5),
	MonsterLoot:withGreenGem(1.46),
	MonsterLoot:withGoldenArmor(1.26),
	MonsterLoot:new():setLoot("Damaged Armor Plates", 1.18),
	MonsterLoot:withMastermindShield(0.81),
	MonsterLoot:withVioletGem(0.57),
	MonsterLoot:withDemonboneAmulet(0.53),
	MonsterLoot:withHeavyMace(0.32),
	MonsterLoot:withTrap(0.24)
}

monster.attacks = {
	-- Basic attack (0-400 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 400),
	-- Short Holy Beam (250-380 holy)
	CustomMonsterSpell:new():setDamageRange(250, 380):withHoly():withHolyDamage():withShortBeam(),
	-- Groundshaker Box (350-500 earth, on self)
	CustomMonsterSpell:new():setDamageRange(350, 500):setChance(18):withGroundShaker():withEarthDamage():withBox()
}

monster.defenses = {
	defense = 86,
	armor = 86
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
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
