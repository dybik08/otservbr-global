local mType = Game.createMonsterType("Brain Squid")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a brain squid"
monster.experience = 17672
monster.outfit = {
	lookType = 1059,
	lookHead = 97,
	lookBody = 18,
	lookLegs = 61,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1653
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

monster.health = 18000
monster.maxHealth = 18000
monster.race = "undead"
monster.corpse = 28582
monster.speed = 430
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
	canWalkOnPoison = true
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
	MonsterLoot:withPlatinumCoins(76.65, 20),
	MonsterLoot:withVioletCrystalShard(29.96, 4),
	MonsterLoot:withGlowingRune(26.07, 4),
	MonsterLoot:withEnergyBall(19.84),
	MonsterLoot:new():setLoot("instable proto matter", 17.9),
	MonsterLoot:withEnergyBar(13.23),
	MonsterLoot:withEnergyDrink(12.45),
	MonsterLoot:withInkwell(11.67),
	MonsterLoot:withUltimateManaPotion(11.67),
	MonsterLoot:withOddOrgan(9.34),
	MonsterLoot:withFrozenLightning(8.56),
	MonsterLoot:withLightningHeadband(6.61),
	MonsterLoot:withBlueCrystalSplinter(6.23),
	MonsterLoot:withSmallRuby(5.84, 5),
	MonsterLoot:withRingofRedPlasma(5.06),
	MonsterLoot:withMightRing(3.11),
	MonsterLoot:withCyanCrystalFragment(3.11),
	MonsterLoot:withRingofBluePlasma(2.72),
	MonsterLoot:withRingofGreenPlasma(2.72),
	MonsterLoot:withWandOfDefiance(2.33),
	MonsterLoot:withVioletGem(1.95),
	MonsterLoot:withCollarOfRedPlasma(1.56),
	MonsterLoot:withLightningPendant(1.56),
	MonsterLoot:withCollarOfBluePlasma(1.17),
	MonsterLoot:withSpellweaversRobe(1.17),
	MonsterLoot:withSlimeHeart(0.78),
	MonsterLoot:withPieceOfDeadBrain(0.39),
	MonsterLoot:withCollarOfGreenPlasma(0.39)
}

monster.attacks = {
	-- 	Basic attack (0-700 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 700),
	-- Eruption Box (700-1000 energy, on target)(Holy Missile)
	CustomMonsterSpell:new():setDamageRange(700, 1000):withEnergyDamage():withBox():withEruption():withHolyMissileRune():withTarget(

	),
	-- Energy Strike (600-1100 energy, on target)(Heavy Magic Missile)
	CustomMonsterSpell:new():setDamageRange(600, 1100):withEnergyDamage():withStrike():withEnergy():withTarget():withHeavyMagicMissileRune(

	),
	-- Blue Electric Cross (600-900 energy, on self)
	CustomMonsterSpell:new():setDamageRange(600, 900):withEnergyDamage():withCross():withBlueElectric(),
	-- Yellow Electric Beam (400-600 holy)
	CustomMonsterSpell:new():setDamageRange(400, 600):withHolyDamage():withBeam():withYellowElectric(),
	-- Sparky Box (800-1000 holy, on self)
	CustomMonsterSpell:new():setDamageRange(800, 1000):withHolyDamage():withBox():withSparky()
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = -15}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
