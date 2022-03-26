local mType = Game.createMonsterType("Lost Exile")
local monster = {}

monster.description = "a lost exile"
monster.experience = 1800
monster.outfit = {
	lookType = 537,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1529
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "South east of the Gnome Deep Hub's entrance."
	}

monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 17682
monster.speed = 125
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "**", yell = false},
	{text = "**", yell = false}
}

--  ordered descending
monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 100},
	{id = 3035, name = "platinum coin", chance = 60240, maxCount = 2},
	{name = "red hair dye", chance = 14690},
	{name = "brown mushroom", chance = 13820, maxCount = 2},
	{name = "holy ash", chance = 13100},
	{name = "wimp tooth chain", chance = 11900},
	{name = "small topaz", chance = 10370},
	{id = 12600, chance = 10370}, -- coal
	{name = "bonecarving knife", chance = 10150},
	{name = "great mana potion", chance = 9940, maxCount = 2},
	{name = "lost husher's staff", chance = 9070},
	{name = "skull shatterer", chance = 8640},
	{name = "basalt figurine", chance = 8640},
	{name = "strong health potion", chance = 6910, maxCount = 23},
	{name = "basalt fetish", chance = 6260},
	{name = "bone fetish", chance = 5830},
	{id = 3097, chance = 2160}, -- Dwarven ring
	{name = "suspicious device", chance = 1510},
	{name = "buckle", chance = 1510},
	{name = "knight axe", chance = 860},
	{name = "clay lump", chance = 860},
	{name = "guardian shield", chance = 860},
	{name = "terra legs", chance = 430},
	{name = "terra boots", chance = 220},
	{name = "skull staff", chance = 220},
	{name = "fire axe", chance = 220},
	{name = "spiked squelcher", chance = 220}
}

monster.attacks = {
    -- Basic attack (0-300 physical)
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},

	-- Death Strike (140-210 death, on target)
	{name ="combat", interval = 2000, type = COMBAT_DEATHDAMAGE, chance = 15, minDamage = -140, maxDamage = -210, range = 7, radius = 1, shootEffect = CONST_ANI_SUDDENDEATH, effect = SPELL_ANIMATIONS.DEATH, target = true},

	-- Green Stars Cross (150-230 earth, on target)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -230, range = 7, radius = 2, effect = SPELL_ANIMATIONS.GREEN_STARS, target = true},

	-- Red Notes Ball (on self, effect: drunk)
	{name ="drunk", interval = 2000, chance = 10, radius = 4, effect = SPELL_ANIMATIONS.RED_NOTES, target = false, duration = 5000},

-- 	-- Great Black Steam Ball (160-300 mana drain, on self)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -160, maxDamage = -300, effect = SPELL_ANIMATIONS.BLACK_STEAM, radius = 5, range = 7, target = false},

-- 	-- Longer Black Steam Beam (240-370 death)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -240, maxDamage = -370, length = 5, effect = SPELL_ANIMATIONS.BLACK_STEAM, target = false},
}

monster.defenses = {
	defense = 20,
	armor = 55,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 40, maxDamage = 160, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
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
