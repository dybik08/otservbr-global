local mType = Game.createMonsterType("Silencer")
local monster = {}

monster.description = "a silencer"
monster.experience = 5100
monster.outfit = {
	lookType = 585,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1014
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "All over the Roshamuul surface and Nightmare Isles."
	}

monster.health = 5400
monster.maxHealth = 5400
monster.race = "blood"
monster.corpse = 20155
monster.speed = 235
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
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
	{text = "Prrrroooaaaah!!! PRROAAAH!!", yell = false},
	{text = "PRRRROOOOOAAAAAHHHH!!!", yell = false},
	{text = "HUUUSSSSSSSSH!!", yell = false},
	{text = "Hussssssh!!", yell = false}
}

-- ordered descending
monster.loot = {
	{name = "platinum coin", chance = 100000, maxCount = 8},
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "silencer claws", chance = 16500},
	{name = "silencer resonating chamber", chance = 9080}
	{name = "assassin star", chance = 7600, maxCount = 10},
	{name = "glorious axe", chance = 2460},
	{name = "haunted blade", chance = 1870},
	{name = "titan axe", chance = 2200},
	{id = 3049, chance = 1280}, -- Stealth ring
	{name = "dark shield", chance = 1250},
	{name = "diamond sceptre", chance = 1250},
	{name = "terra boots", chance = 920},
	{name = "shadow sceptre", chance = 780},
	{name = "terra legs", chance = 760},
	{name = "cluster of solace", chance = 500},
	{name = "boots of haste", chance = 470},
}

monster.attacks = {
    -- Basic attack (0-350 physical, effect: poison 25hp/tick)
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350, condition = {type = CONDITION_POISON, totalDamage = 600, interval = 4000}},
	-- Blue Electric Ball (on target, effect: debuff -60% magic level)
	{name ="silencer skill reducer", interval = 2000, chance = 10, range = 3, target = false},
	-- Red Stars Ball (50-150 mana drain, on target)
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -150, radius = 4, shootEffect = CONST_ANI_ONYXARROW, effect = SPELL_ANIMATIONS.RED_STARS, target = true}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	-- Haste (effect: haste)
	{name ="speed", interval = 2000, chance = 15, speedChange = 235, effect = SPELL_ANIMATIONS.RED_STARS, target = false, duration = 5000},
	-- Healing (100-180 heal)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 100, maxDamage = 180, effect = SPELL_ANIMATIONS.BLUE_STARS, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 5},
	{type = COMBAT_ENERGYDAMAGE, percent = 15},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 65}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
