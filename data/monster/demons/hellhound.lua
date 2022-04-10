local mType = Game.createMonsterType("Hellhound")
local monster = {}

monster.description = "a hellhound"
monster.experience = 5440
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 294
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Infernatil's Throneroom The Inquisition Quest Area, Hellgorge, Roshamuul Prison, Chyllfroest, Oramond Dungeon, The Extension Site and under the Asura Palace."
}

monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 6331
monster.speed = 360
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
	runHealth = 0,
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
	{text = "GROOOOWL!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 7),
	MonsterLoot:withHam(30.21),
	MonsterLoot:withGreatManaPotion(29.98),
	MonsterLoot:withAssassinStar(24.73, 10),
	MonsterLoot:withGreatSpiritPotion(20.03),
	MonsterLoot:withDemonicEssence(19.99),
	MonsterLoot:new():setLoot("hellhound slobber", 19.9),
	MonsterLoot:withSoulOrb(19.81),
	MonsterLoot:withFlaskOfDemonicBlood(19.76, 2),
	MonsterLoot:withUltimateHealthPotion(15.31),
	MonsterLoot:withBlazingBone(13.01),
	MonsterLoot:withHardenedBone(10.05),
	MonsterLoot:withSmallRuby(9.99, 3),
	MonsterLoot:withSmallEmerald(9.93, 3),
	MonsterLoot:withFieryHeart(9.89),
	MonsterLoot:withSmallTopaz(9.86, 3),
	MonsterLoot:withBlackPearl(9.76, 4),
	MonsterLoot:withKnightAxe(7.62),
	MonsterLoot:withWandOfInferno(7.57),
	MonsterLoot:withFireSword(6.72),
	MonsterLoot:withYellowPieceOfCloth(5.86),
	MonsterLoot:withGreenPieceOfCloth(5.14),
	MonsterLoot:withYellowGem(5.09),
	MonsterLoot:withRedGem(4.94),
	MonsterLoot:withRedPieceOfCloth(3.68),
	MonsterLoot:withMagmaAmulet(2.99),
	MonsterLoot:withGoldIngot(2.46),
	MonsterLoot:withAmberStaff(2.03),
	MonsterLoot:withMagmaLegs(1.55),
	MonsterLoot:withMagmaBoots(1.48),
	MonsterLoot:withGiantSword(1.04),
	MonsterLoot:withGreenGem(1.03),
	MonsterLoot:withMagmaMonocle(0.94),
	MonsterLoot:withRuthlessAxe(0.86),
	MonsterLoot:withOnyxFlail(0.84),
	MonsterLoot:withMagmaCoat(0.7)
}

monster.attacks = {
	-- 	Basic attack (0-500 physical, , effect: poison 10-15/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 500):setCondition(
		{type = CONDITION_POISON, minDamage = -200, maxDamage = -300, interval = 4000}
	),
	-- Terra Wave(300-700, earth)
	CustomMonsterSpell:withTerraWave(300, 700):withEarthDamage(),
	-- Red Star Wave(300-500, lifedrain)
	CustomMonsterSpell:withRedStarsWave(300, 700):withLifeDrainDamage(),
	-- Detonation Wave(400-700, fire)
	CustomMonsterSpell:withDetonationWave(400, 700):withFireDamage(),
	-- Sudden Death(300-500)(Sudden Death Rune)
	CustomMonsterSpell:withSuddenDeathRune():setDamageRange(300, 500):withDeathDamage(),
	-- Envenom(0-550, earth) probably do not exist
	-- Fireball(200-500)(Fireball Rune)
	CustomMonsterSpell:withSuddenDeathRune():setDamageRange(200, 500):withFireDamage()
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Haste
	CustomMonsterSpell:new():withHaste(monster.speed),
	-- Intense Healing (250-450 heal)
	CustomMonsterSpell:new():withHealing(250, 450)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
