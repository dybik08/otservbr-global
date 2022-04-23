local mType = Game.createMonsterType("Grim Reaper")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "12/04/2022"
}

monster.description = "a grim reaper"
monster.experience = 5500
monster.outfit = {
	lookType = 300,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 465
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Drefia Grim Reaper Dungeons, deep in Drefia Wyrm Lair (after the Medusa Shield Quest), Edron (Hero Cave), Yalahar (Cemetery Quarter), Oramond Dungeon, Abandoned Sewers and optionally in the Demon Oak Quest."
}

monster.health = 3900
monster.maxHealth = 3900
monster.race = "undead"
monster.corpse = 8127
monster.speed = 320
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10
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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Death!", yell = false},
	{text = "Come a little closer!", yell = false},
	{text = "The end is near!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(99, 261),
	MonsterLoot:withFlaskOfDemonicBlood(35.74),
	MonsterLoot:withDemonicEssence(35.74),
	MonsterLoot:new():setLoot("scythe", 10.09),
	MonsterLoot:withGreatManaPotion(9.6),
	MonsterLoot:withUltimateHealthPotion(9.49),
	MonsterLoot:withPlatinumCoins(5.11),
	MonsterLoot:new():setLoot("magic light wand", 5.11):setItemId(3046),
	MonsterLoot:new():setLoot("mystical hourglass", 4.49),
	MonsterLoot:withSlightlyRustedArmor(3.13),
	MonsterLoot:withDarkShield(3.13),
	MonsterLoot:withOrichalcumPearl(1.34, 4),
	MonsterLoot:withUnderworldRod(1),
	MonsterLoot:withNightmareBlade(0.85),
	MonsterLoot:withSkullcrackerArmor(0.27),
	MonsterLoot:withGlacierKilt(0.22),
	MonsterLoot:withDeathRing(0.02)
}

monster.attacks = {
	-- 	Basic attack (0-700 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 700),
	-- Death Strike (50-110 physical, on target)(Sudden Death Rune)
	CustomMonsterSpell:withDeathStrike(50, 110):setChance(20):withPhysicalDamage(),
	-- Blood Ball (230-280 death, on self)
	CustomMonsterSpell:withBloodBall(230, 280):withDeathDamage(),
	-- Greater Blood Beam (370-650 death)
	CustomMonsterSpell:withGreaterBloodBeam(370, 650):withDeathDamage(),
	-- Great Explosion Cone-Wave (210-290 physical)
	CustomMonsterSpell:withGreaterBloodBeam(210, 290):withPhysicalDamage()
}

monster.defenses = {
	defense = 35,
	armor = 35,
	-- Healing (140-200 heal)
	CustomMonsterSpell:new():withHealing(140, 200),
	-- Haste (effect: haste)
	CustomMonsterSpell:new():withHaste(monster.speed)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 65},
	{type = COMBAT_HOLYDAMAGE, percent = -10},
	{type = COMBAT_DEATHDAMAGE, percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
