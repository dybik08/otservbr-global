local mType = Game.createMonsterType("Dark Torturer")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a dark torturer"
monster.experience = 4650
monster.outfit = {
	lookType = 234,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 285
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Pits of Inferno, Vengoth, Blood Halls, Oramond Dungeon, Roshamuul Prison."
}

monster.health = 7350
monster.maxHealth = 7350
monster.race = "undead"
monster.corpse = 6327
monster.speed = 370
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 10,
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
	{text = "You like it, don't you?", yell = false},
	{text = "IahaEhheAie!", yell = false},
	{text = "It's party time!", yell = false},
	{text = "Harrr, Harrr!", yell = false},
	{text = "The torturer is in!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 199),
	MonsterLoot:withHam(64.01),
	MonsterLoot:withPlatinumCoins(57.82, 8),
	MonsterLoot:withFlaskOfDemonicBlood(34.78, 3),
	MonsterLoot:withSoulOrb(24.99),
	MonsterLoot:withGreatManaPotion(14.62, 2),
	MonsterLoot:withGreatHealthPotion(9.96, 2),
	MonsterLoot:new():setLoot("saw", 4.9),
	MonsterLoot:withSteelBoots(4.64),
	MonsterLoot:withGoldIngot(3.2),
	MonsterLoot:withOrchalcumPearl(2.27, 2),
	MonsterLoot:withDeathRing(2.24),
	MonsterLoot:withAssassinStar(2.01, 5),
	MonsterLoot:new():setLoot("cat's paw", 1.93),
	MonsterLoot:new():setLoot("jewelled backpack", 0.89),
	MonsterLoot:withButchersAxe(0.8),
	MonsterLoot:withVileAxe(0.45),
	MonsterLoot:withGoldenLegs(0.06)
}

monster.attacks = {
	-- 	Basic attack (0-520 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 520),
	-- Ranged attack (0-800 physical) (Throwing Knives)
	CustomMonsterSpell:new():withPhysicalDamage():setDamageRange(0, 800):withThrowingKnive(),
	-- Ultimate Violet Notes Wave (reduce shielding 50%)
	CustomMonsterSpell:new():setDamageRange(0, 0):withUltimateWave():withVioletNotes():withSkillLevelDebuff(
		45,
		55,
		CONDITION_PARAM_SKILL_SHIELDPERCENT,
		2000
	):setChance(10)
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Healing (160 - 240)
	CustomMonsterSpell:new():withHealing(160, 240)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE, percent = -10},
	{type = COMBAT_DEATHDAMAGE, percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
