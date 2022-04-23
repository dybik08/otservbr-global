local mType = Game.createMonsterType("Draken Spellweaver")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "13/04/2022"
}

monster.description = "a draken spellweaver"
monster.experience = 3100
monster.outfit = {
	lookType = 340,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 618
monster.Bestiary = {
	class = "Dragon",
	race = BESTY_RACE_DRAGON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Zao Palace, Razzachai, and Zzaion."
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 10399
monster.speed = 336
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
	{text = "Kazzzzzzuuum!", yell = false},
	{text = "Fissziss!", yell = false},
	{text = "Zzzzzooom!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 200),
	MonsterLoot:withMeat(30.07),
	MonsterLoot:withPlatinumCoins(25.14, 5),
	MonsterLoot:new():setLoot("Weaver's wandtip", 20.18),
	MonsterLoot:withSmallRuby(7.02, 5),
	MonsterLoot:withGreatManaPotion(5.05),
	MonsterLoot:new():setLoot("draken sulphur", 3.99),
	MonsterLoot:withZaoanShoes(1.95),
	MonsterLoot:withLuminousOrb(1.94),
	MonsterLoot:withWandOfInferno(1.62),
	MonsterLoot:withFocusCape(1.46),
	MonsterLoot:withGreenGem(1.03),
	MonsterLoot:withZaoanLegs(0.93),
	MonsterLoot:withZaoanRobe(0.78),
	MonsterLoot:withSpellweaversRobe(0.74),
	MonsterLoot:withRingOfTheSky(0.42),
	MonsterLoot:new():setLoot("bamboo leaves", 0.2),
	MonsterLoot:new():setLoot("harness", 0.03),
	MonsterLoot:new():setLoot("draken trophy", 0.01)
}

monster.attacks = {
	-- 	Basic attack (0-250 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 250),
	-- Eruption Strike (0-250 fire)(Fireball Rune)
	CustomMonsterSpell:withEruptionStrike(150, 250):withFireDamage(),
	-- Energy Strike (200-300 energy)
	CustomMonsterSpell:withEnergyStrike(200, 300):withEnergyDamage(),
	-- Eruption Wave (200,480 fire)
	CustomMonsterSpell:withEruptionWave(200, 480):withFireDamage(),
	-- Smoke Ball (200 - 350 poison, on target)
	CustomMonsterSpell:withSmokeBall(200, 350):withEarthDamage():withTarget(),
	-- Soulfire
	CustomMonsterSpell:new():withFireCondition(20, 10):setChance(10),
	-- Envenom
	CustomMonsterSpell:new():withPoisonCondition(20, math.random(12, 17)):setChance(10)
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name = "invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_RED},
	-- Healing (270-530 heal)
	CustomMonsterSpell:new():withHealing(270, 530)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
