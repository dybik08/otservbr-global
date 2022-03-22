local mType = Game.createMonsterType("Serpent Spawn")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "22/03/2022"
}

monster.description = "a serpent spawn"
monster.experience = 3050
monster.outfit = {
	lookType = 220,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 220
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Deeper Banuta, Forbidden Islands: Talahu (Medusa Cave) and Kharos (at level -1), Razzachai, Deep below the Crystal Lakes in Foreigner Quarter, Cult's cave in the Magician Quarter, Medusa Tower."
}

monster.health = 3000
monster.maxHealth = 3000
monster.race = "venom"
monster.corpse = 6061
monster.speed = 234
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 30
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
	runHealth = 275,
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
	{text = "Sssssouls for the one", yell = false},
	{text = "HISSSS", yell = true},
	{text = "Tsssse one will risssse again", yell = false},
	{text = "I bring you deathhhh, mortalssss", yell = false}
}

-- ordered descending
monster.loot = {
	{name = "gold coin", chance = 32300, maxCount = 250},
	{name = "green mushroom", chance = 17990},
	{name = "snake skin", chance = 15050},
	{name = "small sapphire", chance = 12130},
	{id = 3052, name = "life ring", chance = 6000}, -- Life ring
	{id = 3051, name = "energy ring", chance = 5960}, -- Energy ring
	{name = "power bolt", chance = 5940},
	{name = "golden mug", chance = 3020},
	{name = "mercenary sword", chance = 2070},
	{name = "great mana potion", chance = 1980},
	{name = "snakebite rod", chance = 1000},
	{name = "winged tail", chance = 990},
	{name = "noble axe", chance = 830},
	{name = "tower shield", chance = 810},
	{name = "life crystal", chance = 810},
	{name = "strange helmet", chance = 570},
	{name = "crown armor", chance = 500},
	{name = "warrior helmet", chance = 500},
	{name = "charmer's tiara", chance = 200},
	{name = "royal helmet", chance = 110},
	{name = "spellbook of mind control", chance = 110},
	{name = "swamplair armor", chance = 110},
}

monster.attacks = {
	-- Basic attack (0-250 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	-- Poison Hit(0-300 earth)
	{
		name = "poisonHit",
		interval = 2000,
		chance = 20,
		minDamage = -0,
		maxDamage = -300
	},
	{
		name = "outfit",
		interval = 2000,
		chance = 100,
		range = 7,
		effect = CONST_ME_MAGIC_BLUE,
		target = false,
		duration = 3000,
		outfitItem = 3492
	},
	-- Poison Ball (Paralyze, on target)
	{
		name = "speed",
		interval = 2000,
		chance = 25,
		speedChange = -850,
		range = 7,
		radius = 4,
		shootEffect = CONST_ANI_POISON,
		effect = CONST_ME_GREEN_RINGS,
		target = true,
		duration = 12000
	},
	-- Poison Wave (Earth, 0-500)
	{
		name = "PoisonWave",
		interval = 2000,
		chance = 10,
		minDamage = -0,
		maxDamage = -500
	},
	-- Musical Notes Beam(0-400 lifedrain)
	{
		name = "MusicalNotesBeam",
		interval = 2000,
		chance = 100,
		minDamage = -0,
		maxDamage = -400
	}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	-- Healing(250-500)
	{
		name = "monsterHealing",
		interval = 2000,
		chance = 15,
		minDamage = 250,
		maxDamage = 500
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 340,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 5000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
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
