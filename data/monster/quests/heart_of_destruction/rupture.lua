local mType = Game.createMonsterType("Rupture")
local monster = {}

monster.description = "Rupture"
monster.experience = 112000
monster.outfit = {
	lookType = 875,
	lookHead = 77,
	lookBody = 98,
	lookLegs = 3,
	lookFeet = 85,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 290000
monster.maxHealth = 290000
monster.race = "venom"
monster.corpse = 23564
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25
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

monster.events = {
	"RuptureResonance",
	"RuptureHeal",
	"HeartBossDeath"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 200},
	{id = 3035, name = "platinum coin", chance = 100000, maxCount = 10},
	{id = 7643, chance = 8000, maxCount = 5},
	{id = 16119, chance = 8000, maxCount = 3},
	{id = 16121, chance = 8000, maxCount = 3},
	{name="small amethyst", chance = 8000, maxCount = 10},
	{name="small sapphire", chance = 8000, maxCount = 5},
	{id = 16120, chance = 8000, maxCount = 3},
	{id = 23535, chance = 8000, maxCount = 5},
	{id = 23506, chance = 8000},
	{id = 23510, chance = 100000},
	{id = 22721, chance = 100000},
	{id = 23509, chance = 100000},
	{id = 3038, chance = 6000},
	{id = 7427, chance = 6000},
	{id = 23531, chance = 4000},
	{id = 23533, name="ring of red plasma", chance = 4000},
	{id = 23474, chance = 2000, unique = true},
	{id = 23477, chance = 2000, unique = true}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -1000},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -800, length = 10, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -300, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = true},
	{name ="rupture wave", interval = 2000, chance = 20, minDamage = -700, maxDamage = -1100, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, length = 9, spread = 3, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="anomaly break", interval = 2000, chance = 40, target = false}
}

monster.defenses = {
	defense = 100,
	armor = 100,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 400, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
