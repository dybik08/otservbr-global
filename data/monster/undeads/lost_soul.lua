local mType = Game.createMonsterType("Lost Soul")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a lost soul"
monster.experience = 4000
monster.outfit = {
	lookType = 232,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 283
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Pits of Inferno, Formorgar Mines, Helheim, Roshamuul Prison and in The Arcanum (Part of the Inquisition quest)."
}

monster.health = 5800
monster.maxHealth = 5800
monster.race = "undead"
monster.corpse = 6309
monster.speed = 380
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 15
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
	runHealth = 450,
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
	{text = "Forgive Meee!", yell = false},
	{text = "Mouuuurn meeee!", yell = false},
	{text = "Help meee!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 200),
	MonsterLoot:withPlatinumCoins(100, 7),
	MonsterLoot:withBlankRune(34.85, 3),
	MonsterLoot:withUnholyBone(32.82),
	MonsterLoot:withSoulOrb(15.24),
	MonsterLoot:withGreatManaPotion(14.7, 2),
	MonsterLoot:withBlackPearl(13.13, 3),
	MonsterLoot:withWhitePearl(11.85, 3),
	MonsterLoot:withGreatHealthPotion(9.88, 2),
	MonsterLoot:withDemonicEssence(5.92),
	MonsterLoot:new():setLoot("silver goblet", 4.92):setItemId(5806),
	MonsterLoot:withSlightlyRustedArmor(3.91),
	MonsterLoot:withStoneSkinAmulet(2.99),
	MonsterLoot:withDeathRing(2.46),
	MonsterLoot:withRedGem(1.95),
	MonsterLoot:new():setLoot("skeleton decoration", 1.6),
	MonsterLoot:withRubyNecklace(1.26),
	MonsterLoot:withTitanAxe(1.17),
	MonsterLoot:withSkullStaff(1),
	MonsterLoot:withHauntedBlade(0.95),
	MonsterLoot:withTowerShield(0.61),
	MonsterLoot:withSkullHelmet(0.21)
}

monster.attacks = {
	-- 	Basic attack (0-380 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 520),
	-- Ultimate Curse Ball (on self, effect: paralyze)
	CustomMonsterSpell:withUltimateCurseBall():withParalyze(),
	-- Shorter Red Stars Beam (200-250 death)
	CustomMonsterSpell:withShorterRedStarsBeam(200, 250):withDeathDamage()
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
