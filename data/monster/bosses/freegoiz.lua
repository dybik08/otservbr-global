local mType = Game.createMonsterType("Freegoiz")
local monster = {}

monster.description = "Freegoiz"
monster.experience = 350000
monster.outfit = {
	lookType = 12,
	lookHead = 38,
	lookBody = 114,
	lookLegs = 0,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80000
monster.maxHealth = 80000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 380
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
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
	{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = true},
	{text = "DESTRUCTION!", yell = true},
	{text = "CHAOS!", yell = true},
	{text = "DEATH TO ALL!", yell = true}
}

monster.loot = {
	{id = 3025, chance = 3500}, -- Ancient amulet
	{id = 3116, chance = 9000},
	{name = "black pearl", chance = 15000, maxCount = 15},
	{name = "blue gem", chance = 1500},
	{id = 3079, chance = 4000},
	{id = 3076, chance = 2500},
	{id = 3008, chance = 1500},
	{id = 3007, chance = 5500},
	{id = 3420, chance = 15500},
	{id = 3356, chance = 11000},
	{id = 3275, chance = 20000},
	{id = 3322, chance = 4500},
	{id = 3051, name = "energy ring", chance = 13500}, -- Energy ring
	{id = 3320, chance = 17000},
	{id = 3281, chance = 12500},
	{name = "gold coin", chance = 99900, maxCount = 100},
	{name = "gold coin", chance = 88800, maxCount = 100},
	{name = "gold coin", chance = 77700, maxCount = 100},
	{name = "gold coin", chance = 66600, maxCount = 100},
	{id = 3063, chance = 8000},
	{id = 3364, chance = 5000},
	{id = 2903, chance = 7500},
	{id = 3306, chance = 4500},
	{id = 3038, chance = 1500},
	{id = 3284, chance = 7500},
	{id = 3061, chance = 1000},
	{id = 3046, chance = 11500},
	{id = 3366, chance = 3000},
	{id = 3414, chance = 7500},
	{id = 3048, chance = 5000},
	{id = 3062, chance = 4000},
	{name = "moonlight rod", chance = 3500},
	{id = 3060, chance = 12000},
	{id = 3055, chance = 4500},
	{id = 3084, chance = 4500},
	{id = 2848, chance = 2600},
	{id = 3098, name = "Ring of healing", chance = 13000}, -- Ring of healing
	{id = 3006, chance = 3500},
	{name = "silver amulet", chance = 13000},
	{id = 3290, chance = 15500},
	{id = 3324, chance = 5000},
	{name = "small amethyst", chance = 13500, maxCount = 20},
	{name = "small diamond", chance = 9500, maxCount = 5},
	{name = "small emerald", chance = 15500, maxCount = 10},
	{name = "small sapphire", chance = 13500, maxCount = 10},
	{id = 3066, chance = 3500},
	{id = 3049, chance = 9500}, -- Stealth ring
	{id = 3081, chance = 4000},
	{id = 3058, chance = 2500},
	{id = 3034, chance = 14000, maxCount = 7},
	{id = 2993, chance = 14500},
	{id = 3309, chance = 13500},
	{id = 3265, chance = 20000},
	{name = "necrotic rod", chance = 3500},
	{id = 3002, chance = 100},
	{id = 3072, chance = 2500},
	{name = "white pearl", chance = 12500, maxCount = 15}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 230, attack = 210},
	{
		name = "combat",
		interval = 1000,
		chance = 8,
		type = COMBAT_DEATHDAMAGE,
		minDamage = -800,
		maxDamage = -1900,
		radius = 9,
		effect = CONST_ME_MORTAREA,
		target = false
	},
	{
		name = "speed",
		interval = 1000,
		chance = 12,
		speedChange = -850,
		radius = 6,
		effect = CONST_ME_POISONAREA,
		target = false,
		duration = 60000
	},
	{
		name = "strength",
		interval = 1000,
		chance = 10,
		minDamage = -600,
		maxDamage = -1450,
		radius = 5,
		effect = CONST_ME_HITAREA,
		target = false
	},
	{
		name = "combat",
		interval = 3000,
		chance = 13,
		type = COMBAT_FIREDAMAGE,
		minDamage = -300,
		maxDamage = -800,
		range = 7,
		radius = 7,
		shootEffect = CONST_ANI_FIRE,
		effect = CONST_ME_FIREAREA,
		target = true
	},
	{
		name = "combat",
		interval = 3000,
		chance = 8,
		type = COMBAT_MANADRAIN,
		minDamage = -600,
		maxDamage = -700,
		radius = 10,
		effect = CONST_ME_ENERGYAREA,
		target = false
	},
	{
		name = "combat",
		interval = 2000,
		chance = 9,
		type = COMBAT_ENERGYDAMAGE,
		minDamage = -400,
		maxDamage = -800,
		length = 8,
		spread = 3,
		effect = CONST_ME_MAGIC_RED,
		target = false
	},
	-- poison
	{
		name = "condition",
		type = CONDITION_POISON,
		interval = 5000,
		chance = 18,
		minDamage = -800,
		maxDamage = -1000,
		effect = CONST_ME_HITBYPOISON,
		target = false
	},
	{
		name = "combat",
		interval = 2000,
		chance = 6,
		type = COMBAT_LIFEDRAIN,
		minDamage = -600,
		maxDamage = -1200,
		radius = 14,
		effect = CONST_ME_MAGIC_GREEN,
		target = false
	}
}

monster.defenses = {
	defense = 145,
	armor = 188,
	{
		name = "combat",
		interval = 1000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 1000,
		maxDamage = 3000,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 8,
		speedChange = 480,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 6000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
