local mType = Game.createMonsterType("Plaguesmith")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "29/03/2022"
}

monster.description = "a plaguesmith"
monster.experience = 3555
monster.outfit = {
	lookType = 247,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 314
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Pits of Inferno, Formorgar Mines, Edron Demon Forge (The Vats, The Foundry), Magician Quarter, Alchemist Quarter, Roshamuul Prison."
}

monster.health = 8250
monster.maxHealth = 8250
monster.race = "venom"
monster.corpse = 6515
monster.speed = 320
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
	runHealth = 500,
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
	{text = "You are looking a bit feverish!", yell = false},
	{text = "You don't look that good!", yell = false},
	{text = "Hachoo!", yell = false},
	{text = "Cough Cough", yell = false}
}

monster.loot = {
	MonsterLoot:new():withGoldCoins(96.6, 258),
	MonsterLoot:new():setLoot("dirty cape", 48.81):setItemId(3122),
	MonsterLoot:new():setLoot("mouldy cheese", 38.22),
	MonsterLoot:new():setLoot("morning star", 24.95),
	MonsterLoot:new():setLoot("piece of iron", 16.74),
	MonsterLoot:new():setLoot("steel shield", 16.22),
	MonsterLoot:new():setLoot("two handed sword", 16.1),
	MonsterLoot:new():setLoot("battle hammer", 14.8),
	MonsterLoot:new():setLoot("soul orb", 9.81),
	MonsterLoot:new():setLoot("great health potion", 8.23),
	MonsterLoot:new():setLoot("onyx arrow", 6.93, 4),
	MonsterLoot:new():withDemonicEssence(6.91),
	MonsterLoot:new():withPlatinumCoins(6.59, 2),
	MonsterLoot:new():setLoot("slightly rusted armor", 6.2):setItemId(8896),
	MonsterLoot:new():setLoot("knight legs", 5.65),
	MonsterLoot:new():setLoot("axe ring", 4.55):setItemId(3092),
	MonsterLoot:new():setLoot("club ring", 4.14):setItemId(3093),
	MonsterLoot:new():setLoot("small amethyst", 3.98, 3),
	MonsterLoot:new():setLoot("war hammer", 1.56),
	MonsterLoot:new():setLoot("silver brooch", 1.35),
	MonsterLoot:new():setLoot("steel boots", 1.24),
	MonsterLoot:new():setLoot("piece of draconian steel", 0.85),
	MonsterLoot:new():setLoot("piece of royal steel", 0.82),
	MonsterLoot:new():setLoot("piece of hell steel", 0.73),
	MonsterLoot:new():setLoot("emerald bangle", 0.39),
	MonsterLoot:new():setLoot("war horn", 0.07)
}

monster.attacks = {
	-- 	Basic attack (0-440 physical, effect: poison 10/tick)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 440):setCondition(
		{type = CONDITION_POISON, totalDamage = 200, interval = 4000}
	),
	-- Acid Wave (100-140 life drain)
	CustomMonsterSpell:new():withLifeDrainDamage():withWave():withAcid():setDamageRange(100, 140),
	-- Poison Ball (80-200 earth, on self)
	CustomMonsterSpell:new():withEarthDamage():withBall():withPoison():setDamageRange(80, 200):setNeedDirection(false),
	-- Poison Ball (on self, effect: paralyze)
	CustomMonsterSpell:new():withBall():withPoison():setChance(15):withParalyze(-350, 15000)
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Intense Healing (200-270 heal)
	CustomMonsterSpell:new():withHealing(200, 270),
	-- Strong Haste (effect: haste)
	CustomMonsterSpell:new():withHaste(440, 5000):setChance(15)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
