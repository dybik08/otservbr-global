local mType = Game.createMonsterType("Vexclaw")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "29/03/2022"
}

monster.description = "a vexclaw"
monster.experience = 6248
monster.outfit = {
	lookType = 854,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1197
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Dungeons of The Ruthless Seven."
}

monster.health = 8500
monster.maxHealth = 8500
monster.race = "fire"
monster.corpse = 22776
monster.speed = 270
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	{text = "Weakness must be culled!", yell = false},
	{text = "Power is miiiiine!", yell = false}
}

monster.loot = {
	MonsterLoot:new():setLootItem("gold coin"):setChance(87.25):setMaxCount(199),
	MonsterLoot:new():setLootItem("platinum coin"):setChance(87.01):setMaxCount(9),
	MonsterLoot:new():setLootItem("great mana potion"):setChance(16.33):setMaxCount(5),
	MonsterLoot:new():setLootItem("great spirit potion"):setChance(16.26):setMaxCount(5),
	MonsterLoot:new():setLootItem("vexclaw talon"):setChance(13.94):setMaxCount(1),
	MonsterLoot:new():setLootItem("ultimate health potion"):setChance(13.47):setMaxCount(5),
	MonsterLoot:new():setLootItem("demonic essence"):setChance(12.88):setMaxCount(1),
	MonsterLoot:new():setLootItem("fire mushroom"):setChance(12.43):setMaxCount(6),
	MonsterLoot:new():setLootItem("small topaz"):setChance(6.52):setMaxCount(5),
	MonsterLoot:new():setLootItem("small amethyst"):setChance(6.36):setMaxCount(5),
	MonsterLoot:new():setLootItem("small emerald"):setChance(6.14):setMaxCount(5),
	MonsterLoot:new():setLootItem("small ruby"):setChance(6.11):setMaxCount(5),
	MonsterLoot:new():setLootItem("red gem"):setChance(3.83):setMaxCount(1):setItemId(3039),
	MonsterLoot:new():setLootItem("yellow gem"):setChance(3.79):setMaxCount(1),
	MonsterLoot:new():setLootItem("ice rapier"):setChance(3.14):setMaxCount(1),
	MonsterLoot:new():setLootItem("fire axe"):setChance(2.82):setMaxCount(1),
	MonsterLoot:new():setLootItem("energy ring"):setChance(1.71):setMaxCount(1):setItemId(3051),
	MonsterLoot:new():setLootItem("might ring"):setChance(1.38):setMaxCount(1),
	MonsterLoot:new():setLootItem("giant sword"):setChance(1.22):setMaxCount(1),
	MonsterLoot:new():setLootItem("ring of healing"):setChance(1.17):setMaxCount(1):setItemId(1320),
	MonsterLoot:new():setLootItem("devil helmet"):setChance(0.88):setMaxCount(1),
	MonsterLoot:new():setLootItem("rift lance"):setChance(0.56):setMaxCount(1),
	MonsterLoot:new():setLootItem("demon shield"):setChance(0.5):setMaxCount(1),
	MonsterLoot:new():setLootItem("platinum amulet"):setChance(0.43):setMaxCount(1),
	MonsterLoot:new():setLootItem("mastermind shield"):setChance(0.32):setMaxCount(1),
	MonsterLoot:new():setLootItem("rift bow"):setChance(0.32):setMaxCount(1),
	MonsterLoot:new():setLootItem("rift shield"):setChance(0.32):setMaxCount(1),
	MonsterLoot:new():setLootItem("rift crossbow"):setChance(0.27):setMaxCount(1),
	MonsterLoot:new():setLootItem("golden legs"):setChance(0.2):setMaxCount(1),
	MonsterLoot:new():setLootItem("demonrage sword"):setChance(0.09):setMaxCount(1),
	MonsterLoot:new():setLootItem("magic plate armor"):setChance(0.07):setMaxCount(1)
}

monster.attacks = {
	-- Basic attack (0-530 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 530),
	-- Detonation Ball (350-480 fire, on target)
	CustomMonsterSpell:new():setChance(14):setMinDamage(350):setMaxDamage(480):withTarget():withFireDamage():withDetonation(

	):withBall(),
	-- Greater Blue Electric Ball (400-500 energy, on self)
	CustomMonsterSpell:new():setChance(12):setMinDamage(400):setMaxDamage(500):withTarget():withEnergyDamage():withGreaterBall(

	):withBlueElectric(),
	-- Great Icy Flake Beam (530-600 life drain)
	CustomMonsterSpell:new():withBeam():withIcyFlake():setDamageRange(530, 600):withLifeDrainDamage(),
	-- Long Red Stars T-Wave (100-170 mana drain)
	CustomMonsterSpell:new():withLongTWave():withRedStars():setDamageRange(100, 170):withManaDrainDamage(),
	-- Greater Groundshaker Ball (260-450 physical, on target)
	CustomMonsterSpell:new():withBall():withGroundShaker():setDamageRange(100, 170):withManaDrainDamage():withTarget()
}

monster.defenses = {
	defense = 55,
	-- Haste (effect: haste)
	-- Intense Healing (230-400 heal)
	armor = 55,
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 180,
		maxDamage = 250,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 320,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 5000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 75},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
