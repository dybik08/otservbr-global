local mType = Game.createMonsterType("Draken Elite")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "13/04/2022"
}

monster.description = "a draken elite"
monster.experience = 4200
monster.outfit = {
	lookType = 362,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 672
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Razachai, including the Crystal Column chambers in the Inner Sanctum."
}

monster.health = 5550
monster.maxHealth = 5550
monster.race = "blood"
monster.corpse = 11653
monster.speed = 332
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	canPushCreatures = false,
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
	{text = "For ze emperor!", yell = false},
	{text = "You will die zhouzandz deazhz!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 200),
	MonsterLoot:withPlatinumCoins(50.65, 8),
	MonsterLoot:withMeat(30.08),
	MonsterLoot:new():setLoot("broken slicer", 25.19),
	MonsterLoot:new():setLoot("broken draken mail", 17.71),
	MonsterLoot:new():setLoot("draken wristbands", 13.7),
	MonsterLoot:withUltimateHealthPotion(9.13, 3),
	MonsterLoot:withGreatManaPotion(8.87, 3),
	MonsterLoot:new():setLoot("draken sulphur", 7.8),
	MonsterLoot:withSmallDiamond(2.39, 4),
	MonsterLoot:new():setLoot("magic sulphur", 2.1),
	MonsterLoot:withAssassinDagger(0.97),
	MonsterLoot:new():setLoot("twiceslicer", 0.84),
	MonsterLoot:withZaoanLegs(0.83),
	MonsterLoot:withZaoanArmor(0.65),
	MonsterLoot:withZaoanSword(0.55),
	MonsterLoot:withDrakenBoots(0.52),
	MonsterLoot:withZaoanHelmet(0.22),
	MonsterLoot:new():setLoot("elite draken mail", 0.11),
	MonsterLoot:new():setLoot("blade of corruption", 0.06),
	MonsterLoot:new():setLoot("snake god's wristguard", 0.04),
	MonsterLoot:new():setLoot("cobra crown", 0.01)
}

monster.attacks = {
	-- 	Basic attack (0-350 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 350),
	-- Eruption Wave (400-550 fire)
	CustomMonsterSpell:withEruptionWave(400, 550):withFireDamage(),
	-- Eruption Strike (200-300 fire)(Fireball Rune)
	CustomMonsterSpell:withEruptionStrike(200, 300):withFireDamage(),
	-- Smoke Ball (380 - 410 poison, on target)
	CustomMonsterSpell:withSmokeBall(380, 410):withEarthDamage():withTarget(),
	-- Soulfire
	CustomMonsterSpell:new():withFireCondition(20, 10):setChance(10)
}

monster.defenses = {
	defense = 45,
	armor = 45,
	-- Intense Healing (350-550 heal)
	CustomMonsterSpell:new():withHealing(350, 650)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
