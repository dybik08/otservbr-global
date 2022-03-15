local mType = Game.createMonsterType("Guzzlemaw")
local monster = {}

monster.description = "a guzzlemaw"
monster.experience = 6050
monster.outfit = {
	lookType = 584,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1013
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Guzzlemaw Valley, and a single spawn in a tower in Upper Roshamuul \z
		(south of the Depot and west of the entrance to Roshamuul Prison)."
	}

monster.health = 6400
monster.maxHealth = 6400
monster.race = "blood"
monster.corpse = 20151
monster.speed = 200
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
}


-- ordered desc
monster.loot = {
	{name = "platinum coin", chance = 100000, maxCount = 7},
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "great mana potion", chance = 13420, maxCount = 3},
	{name = "great health potion", chance = 11910, maxCount = 2},
	{name = "frazzle tongue", chance = 11790},
	{name = "frazzle skin", chance = 10060}
	{id = 3114, chance = 12680}, -- skull
	{name = "ham", chance = 10000},
	{id = 5951, chance = 10800}, -- fish tail
	{name = "brown crystal splinter", chance = 7830, maxCount = 2},
    {id = 3115, chance = 10000}, -- bone
	{name = "piece of iron", chance = 10500},
	{id = 16279, chance = 10000}, -- crystal rubbish
	{name = "fishbone", chance = 9500},
	{name = "banana skin", chance = 10700},
	{name = "red crystal fragment", chance = 5310},
	{id = 3578, chance = 6750, maxCount = 3}, -- fish
	{id = 3116, chance = 5500},  -- big bone
	{name = "fish fin", chance = 5000},
	{name = "two handed sword", chance = 3020},
	{name = "hardened bone", chance = 3020},
	{name = "violet crystal shard", chance = 2740},
	{name = "iron ore", chance = 1900},
	{name = "haunted blade", chance = 1570},
	{name = "sai", chance = 1290},
	{name = "assassin dagger", chance = 840},
	{name = "cluster of solace", chance = 780},
	{name = "nightmare blade", chance = 390},
}

monster.attacks = {
    -- Basic attack (0-500 physical)
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	-- Terra Cross (on target, effect: bleeding Stoneshower 35hp/tick)
	{name ="condition", type = CONDITION_BLEEDING, interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, effect = SPELL_ANIMATIONS.STONE_SHOWER, radius = 2, target = true},
	-- Blood Box (400-500 physical, on self)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -500, radius = 3, shootEffect = CONST_ANI_LARGEROCK, effect = SPELL_ANIMATIONS.BLOOD, target = false},
	-- Great Explosion Cone-Wave (650-800 life drain)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = 0, maxDamage = -500, length = 8, spread = 3,  effect = SPELL_ANIMATIONS.EXPLOSION, target = false},
	-- Greater Red Stars Ball (on self, effect: paralyze)
	{name ="speed", interval = 2000, chance = 15, speedChange = -800, radius = 6, effect = SPELL_ANIMATIONS.RED_STARS, target = false, duration = 15000},
}

monster.defenses = {
	defense = 50,
	armor = 50,
	-- Healing (100-400 heal)
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 400, effect = SPELL_ANIMATIONS.BLUE_NOTES, target = false}
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
