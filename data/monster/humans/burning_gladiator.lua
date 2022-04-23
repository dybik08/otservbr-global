local mType = Game.createMonsterType("Burning Gladiator")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "19/04/2022"
}

monster.description = "a burning gladiator"
monster.experience = 7350
monster.outfit = {
	lookType = 541,
	lookHead = 95,
	lookBody = 113,
	lookLegs = 21,
	lookFeet = 21,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1798
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Issavi Sewers, Kilmaresh Catacombs and Kilmaresh Mountains (above and under ground)."
}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 31646
monster.speed = 290
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
	staticAttackChance = 70,
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
	{text = "Burn, infidel!", yell = false},
	{text = "Only the Wild Sun shall shine down on this world!", yell = false},
	{text = "Praised be Fafnar, the Smiter!", yell = false}
}

monster.loot = {
	MonsterLoot:withPlatinumCoins(100, 4),
	MonsterLoot:new():setLoot("Fafnar symbol", 11.12),
	MonsterLoot:withStrangeTalisman(5.95),
	MonsterLoot:withDragonNecklace(5.91),
	MonsterLoot:withLightningPendant(4.99),
	MonsterLoot:withMagmaAmulet(4.64),
	MonsterLoot:withLightningHeadband(3.89),
	MonsterLoot:withMagmaBoots(2.5),
	MonsterLoot:withLightningLegs(3.02),
	MonsterLoot:new():setLoot("empty honey glass", 2.76),
	MonsterLoot:withElvenAmulet(2.28),
	MonsterLoot:withLightningBoots(1.75),
	MonsterLoot:withSpellweaversRobe(1.44),
	MonsterLoot:new():setLoot("sea horse figurine", 0.96),
	MonsterLoot:new():setLoot("golden mask", 0.39)
}

monster.attacks = {
	-- 	Basic attack (0-550 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 550),
	-- Flame Cross (300-500 fire, on self)
	CustomMonsterSpell:withFlameCross(300, 500):withFireDamage(),
	-- Flame X-Cross (300-500 fire, on self)
	CustomMonsterSpell:withFlameXCross(300, 500):withFireDamage(),
	-- Flame Circle (300-500 fire, on self)
	CustomMonsterSpell:withFlameCircle(300, 500):withFireDamage(),
	-- Shorter Blue Electric Beam (300-500 energy)
	CustomMonsterSpell:withShorterBlueElectricBeam(300, 500):withEnergyDamage()
}

monster.defenses = {
	defense = 40,
	armor = 89
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
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
