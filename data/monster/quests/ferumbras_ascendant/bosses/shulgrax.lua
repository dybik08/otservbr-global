local mType = Game.createMonsterType("Shulgrax")
local monster = {}

monster.description = "Shulgrax"
monster.experience = 58000
monster.outfit = {
	lookType = 842,
	lookHead = 0,
	lookBody = 62,
	lookLegs = 22,
	lookFeet = 87,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 290000
monster.maxHealth = 290000
monster.race = "undead"
monster.corpse = 22495
monster.speed = 320
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	{text = "DAMMMMNNNNAAATIONN!", yell = false},
	{text = "I WILL FEAST ON YOUR SOUL!", yell = true},
	{text = "YOU ARE ALL DAMNED!", yell = true}
}

monster.loot = {
	{id = 22516, chance = 1000000},
	{name = "flask of demonic blood", chance = 10000},
	{name = "flask of demonic blood", chance = 10000},
	{name = "flask of demonic blood", chance = 10000},
	{name = "flask of demonic blood", chance = 10000},
	{name = "flask of demonic blood", chance = 10000},
	{id = 17838, chance = 1800},
	{id = 3019, chance = 1000},
	{name = "white pearl", chance = 12000, maxCount = 8},
	{name = "small sapphire", chance = 12000, maxCount = 9},
	{name = "gold coin", chance = 98000, maxCount = 200},
	{name = "small amethyst", chance = 10000, maxCount = 5},
	{id = 3035, name = "platinum coin", chance = 8000, maxCount = 58},
	{id = 3036, chance = 1000},
	{name = "yellow gem", chance = 1000},
	{id = 3038, chance = 1000},
	{id = 3039, name = "red gem", chance = 1000},
	{id = 3366, chance = 700},
	{id = 22193, chance = 46100, maxCount = 5},
	{id = 22194, chance = 46100, maxCount = 5},
	{id = 22726, chance = 700},
	{id = 22727, chance = 700},
	{id = 22756, chance = 500, unique = true},
	{id = 22867, chance = 700},
	{id = 5021, chance = 46100, maxCount = 5},
	{id = 6299, name = "death ring", chance = 1300},
	{name = "demonic essence", chance = 11000},
	{id = 7416, chance = 1000},
	{id = 7419, chance = 1300},
	{id = 7427, chance = 1000},
	{id = 7451, chance = 1900},
	{name = "great mana potion", chance = 23000, maxCount = 5},
	{id = 281, chance = 14000, maxCount = 5},
	{id = 282, chance = 14000, maxCount = 5},
	{id = 816, chance = 1000},
	{id = 822, chance = 1000},
	{id = 7642, chance = 46100, maxCount = 10},
	{id = 7643, chance = 23000, maxCount = 5},
	{name = "small topaz", chance = 10000, maxCount = 5}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = -1500, maxDamage = -2500},
	{
		name = "combat",
		interval = 3000,
		chance = 20,
		type = COMBAT_FIREDAMAGE,
		minDamage = -500,
		maxDamage = -1000,
		length = 10,
		spread = 3,
		effect = CONST_ME_HITBYFIRE,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 25,
		speedChange = -600,
		radius = 7,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 15000
	},
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_FIREDAMAGE,
		minDamage = -300,
		maxDamage = -700,
		radius = 5,
		effect = CONST_ME_HITBYFIRE,
		target = false
	},
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_DEATHDAMAGE,
		minDamage = -500,
		maxDamage = -800,
		length = 10,
		spread = 3,
		effect = CONST_ME_EXPLOSIONHIT,
		target = false
	},
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_FIREDAMAGE,
		minDamage = -500,
		maxDamage = -800,
		length = 8,
		spread = 3,
		effect = CONST_ME_FIREATTACK,
		target = false
	}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{
		name = "combat",
		interval = 3000,
		chance = 35,
		type = COMBAT_HEALING,
		minDamage = 400,
		maxDamage = 6000,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	},
	{name = "shulgrax summon", interval = 5000, chance = 5, target = false},
	{
		name = "speed",
		interval = 4000,
		chance = 80,
		speedChange = 440,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 6000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = 10},
	{type = COMBAT_DEATHDAMAGE, percent = 10}
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
