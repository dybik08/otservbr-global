local mType = Game.createMonsterType("Energetic Book")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "an energetic book"
monster.experience = 12034
monster.outfit = {
	lookType = 1061,
	lookHead = 15,
	lookBody = 91,
	lookLegs = 85,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1665
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library."
}

monster.health = 18500
monster.maxHealth = 18500
monster.race = "undead"
monster.corpse = 28778
monster.speed = 440
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
	MonsterLoot:withPlatinumCoins(78.77, 35),
	MonsterLoot:withGlowingRune(62.85, 6),
	MonsterLoot:withBookPage(41.62, 8),
	MonsterLoot:withUltimateManaPotion(16.76),
	MonsterLoot:withSilkenBookmark(16.48),
	MonsterLoot:withUltimateHealthPotion(13.97),
	MonsterLoot:withEnergyBall(9.5),
	MonsterLoot:withLightningHeadband(3.07),
	MonsterLoot:withLightningPendant(1.68),
	MonsterLoot:withMightRing(1.4),
	MonsterLoot:withLightningBoots(1.12),
	MonsterLoot:withSpellweaversRobe(1.12),
	MonsterLoot:withLightningLegs(0.56),
	MonsterLoot:withWandOfDefiance(0.56),
	MonsterLoot:withHauntedBlade(0.28)
}

monster.attacks = {
	-- 	Basic attack (0-1000 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 1000),
	-- Energy Strike (660-800 energy, on target)
	CustomMonsterSpell:new():withEnergyDamage():setDamageRange(650, 800):withEnergy():withStrike():withTarget(),
	-- Energy Box (800-1100 energy, on self)
	CustomMonsterSpell:new():withEnergyDamage():setDamageRange(800, 1100):withEnergy():withBox(),
	-- Dizzy Beam (650-800 holy)
	CustomMonsterSpell:new():withHolyDamage():setDamageRange(650, 800):withDizzy():withBeam()
}

monster.defenses = {
	defense = 40,
	armor = 82,
	-- 	Haste (effect: haste)
	CustomMonsterSpell:new():withHaste(monster.speed),
	-- Healing
	CustomMonsterSpell:new():withHealing(100, 300)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 100},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
