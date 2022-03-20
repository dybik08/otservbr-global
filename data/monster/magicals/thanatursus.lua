local mType = Game.createMonsterType("Thanatursus")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "20/03/2022"
}

monster.description = "a Thanatursus"
monster.experience = 6300
monster.outfit = {
	lookType = 1134,
	lookHead = 19,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1728
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Haunted Temple, Court of Winter, Dream Labyrinth."
}

monster.health = 7200
monster.maxHealth = 7200
monster.race = "blood"
monster.corpse = 30069
monster.speed = 400
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Uuuuuuuuuaaaaaarg!!!", yell = false},
	{text = "Nobody will ever escape from this place, muwahaha!!!", yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 100000, maxCount = 20},
	{name = "Meat", chance = 50370, maxCount = 3},
	{name = "Ham", chance = 14810, maxCount = 3},
	{name = "Essence of a Bad Dream", chance = 12780},
	{name = "Halberd", chance = 11630},
	{name = "Terra Boots", chance = 9680},
	{name = "Ultimate Health Potion", chance = 8670},
	{name = "Terra Hood", chance = 6920},
	{name = "Great Spirit Potion", chance = 6460, maxCount = 3},
	{name = "Knight Axe", chance = 5700},
	{name = "Mino Shield", chance = 5280},
	{name = "Beastslayer Axe", chance = 4180},
	{name = "Wand of Cosmic Energy", chance = 3740},
	{name = "Dark Shield", chance = 3690},
	{name = "Black Shield", chance = 3140},
	{name = "Obsidian Lance", chance = 2930},
	{name = "Warrior's Shield", chance = 2610},
	{name = "Sickle", chance = 2520},
	{name = "Warrior's Axe", chance = 2230},
	{name = "Bloody Pincers", chance = 2100},
	{name = "Titan Axe", chance = 1660},
	{name = "Wand of Defiance", chance = 1560}
}

monster.attacks = {
	-- Basic attack (0-450 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -450},
	-- Energy Strike (200-350 energy, on target)
	{
		name = "energyStrike",
		interval = 2000,
		chance = 20,
		minDamage = -200,
		maxDamage = -350
	},
	-- Holy Box (200-300 holy, on self)

	{
		name = "holyBoxSelf",
		interval = 2000,
		chance = 20,
		minDamage = -200,
		maxDamage = -300
	},
	-- Sparky Box (200-300 holy, on target)

	{
		name = "sparkyBoxTarget",
		interval = 2000,
		chance = 15,
		minDamage = -200,
		maxDamage = -300
	},
	-- Great Sparky Ball (250-400 holy, on self)
	{
		name = "greatSparkyBallSelf",
		interval = 2000,
		chance = 15,
		minDamage = -250,
		maxDamage = -400
	}
}

monster.defenses = {
	defense = 25,
	armor = 78
	-- {name ="combat", interval = 2000, chance = 14, type = COMBAT_HEALING, minDamage = 150, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = -20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
