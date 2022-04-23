local mType = Game.createMonsterType("Priestess of the Wild Sun")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "15/04/2022"
}

monster.description = "a priestess of the wild sun"
monster.experience = 6400
monster.outfit = {
	lookType = 1199,
	lookHead = 114,
	lookBody = 78,
	lookLegs = 94,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1799
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Issavi Sewers, Kilmaresh Mountains, Kilmaresh Catacombs."
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 31419
monster.speed = 320
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
	canPushCreatures = false,
	staticAttackChance = 80,
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
	{text = "Fafnar will burn you!", yell = false},
	{text = "Fear the Wild Sun!", yell = false},
	{text = "There is only one true sun!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 3),
	MonsterLoot:new():setLoot("Secret Instruction", 9.16):setItemId(31433),
	MonsterLoot:new():setLoot("Fafnar symbol", 8.93),
	MonsterLoot:withWarAxe(3.29),
	MonsterLoot:withWandOfDecay(2.79),
	MonsterLoot:new():setLoot("empty honey glass", 2.35),
	MonsterLoot:withGoldenSickle(1.62),
	MonsterLoot:withRelicSword(1.56),
	MonsterLoot:withWandOfEverblazing(1.01),
	MonsterLoot:new():setLoot("golden mask", 0.56),
	MonsterLoot:new():setLoot("sea horse figurine", 0.56)
}

monster.attacks = {
	-- 	Basic attack (0-350 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 350),
	-- Eruption Cross (350-500 fire, on target)
	CustomMonsterSpell:withEruptionCross(350, 500):withFireDamage():withTarget(),
	-- Eruption X-Cross (350-500 fire, on target)
	CustomMonsterSpell:withEruptionXCross(350, 500):withFireDamage():withTarget(),
	-- Eruption Circle (300-400 fire, on target)
	CustomMonsterSpell:withEruptionCircle(300, 400):withFireDamage():withTarget(),
	-- Energy Box (250-400 energy, on self)
	CustomMonsterSpell:withEnergyBox(250, 400):withEnergyDamage(),
	-- Short Blue Electric Cone-Wave (250-350 energy)
	CustomMonsterSpell:withShortBlueElectricConeWave(250, 350):withEnergyDamage()
}

monster.defenses = {
	defense = 82,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -25},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
