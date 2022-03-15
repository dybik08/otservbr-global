local mType = Game.createMonsterType("Frazzlemaw")
local monster = {}

monster.description = "a frazzlemaw"
monster.experience = 3740
monster.outfit = {
	lookType = 594,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1022
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Lower Roshamuul, Guzzlemaw Valley, the entrance to Upper Roshamuul."
	}

monster.health = 4100
monster.maxHealth = 4100
monster.race = "blood"
monster.corpse = 20233
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
	{text = "Mwaaaahnducate youuuuuu *gurgle*, mwaaah!", yell = false},
	{text = "Mwaaahgod! Overmwaaaaah! *gurgle*", yell = false},
	{text = "MMMWAHMWAHMWAHMWAAAAH!", yell = false},
	{text = "Mmmwhamwhamwhah, mwaaah!", yell = false}
}

-- ordered descending
monster.loot = {
	{name = "platinum coin", chance = 100000, maxCount = 7},
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "frazzle tongue", chance = 15030},
	{name = "brown crystal splinter", chance = 11870},
	{name = "great mana potion", chance = 11810, maxCount = 3},
	{name = "great health potion", chance = 11810, maxCount = 2},
	{name = "frazzle skin", chance = 11780},
	{id = 3114, chance = 12680}, -- skull
	{name = "banana skin", chance = 9500},
	{name = "piece of iron", chance = 10400},
	{id = 3115, chance = 10000}, -- bone
	{id = 16279, chance = 10000}, -- crystal rubbish
	{name = "fishbone", chance = 10000},
	{id = 5951, chance = 10800}, -- fish tail
	{name = "ham", chance = 6000, maxCount = 2},
	{name = "hardened bone", chance = 5000},
	{id = 3578, chance = 6750, maxCount = 3}, -- fish
	{name = "fish fin", chance = 4700},
	{id = 3116, chance = 5500},  -- big bone
	{name = "red crystal fragment", chance = 3570},
	{name = "violet crystal shard", chance = 2430},
	{name = "two handed sword", chance = 2300},
	{name = "iron ore", chance = 2290},
	{name = "gold ingot", chance = 1870},
	{name = "haunted blade", chance = 1700},
	{name = "sai", chance = 1390},
	{name = "assassin dagger", chance = 700},
	{name = "nightmare blade", chance = 480},
	{name = "cluster of solace", chance = 450},
}


monster.attacks = {
    -- Basic attack (0-450 physical)
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    -- Terra Cross (on target, effect: bleeding Stoneshower 35hp/tick)
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -300, maxDamage = -400, radius = 3, target = false},
	-- Blood Box (200-450 physical, on self)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 200, maxDamage = -450, radius = 3, effect = SPELL_ANIMATIONS.BLOOD, target = false},
	-- Explosion Beam (350-600 life drain)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = 350, maxDamage = -600, length = 4, shootEffect = CONST_ANI_LARGEROCK, effect = SPELL_ANIMATIONS.EXPLOSION, target = true},
	-- Greater Red Stars Ball (on self, effect: paralyze)
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, radius = 5, effect = SPELL_ANIMATIONS.RED_STARS, target = false, duration = 15000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
	-- Healing (100-400 heal)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 400, effect = SPELL_ANIMATIONS.BLUE_STARS, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
