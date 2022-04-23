local mType = Game.createMonsterType("Dawnfire Asura")
local monster = {}

monster.description = "a dawnfire asura"
monster.experience = 4100
monster.outfit = {
	lookType = 150,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 79,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1134
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace."
}

monster.health = 2900
monster.maxHealth = 2900
monster.race = "blood"
monster.corpse = 21987
monster.speed = 280
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
	{text = "Encounter the flames of destiny!", yell = false},
	{text = "Fire and destruction!", yell = true},
	{text = "May the flames consume you!", yell = false}
}

-- ordered descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 85840, maxCount = 9},
	{name = "gold coin", chance = 70040, maxCount = 100},
	{name = "flask of demonic blood", chance = 22450},
	{name = "soul orb", chance = 14470},
	{name = "golden lotus brooch", chance = 11640},
	{name = "peacock feather fan", chance = 11110},
	{name = "demonic essence", chance = 9530},
	{name = "great mana potion", chance = 8130},
	{name = "small ruby", chance = 6020, maxCount = 3},
	{name = "small diamond", chance = 3730, maxCount = 2},
	{name = "small amethyst", chance = 3320, maxCount = 2},
	{name = "small topaz", chance = 2700, maxCount = 2},
	{name = "small emerald", chance = 2670, maxCount = 2},
	{name = "red piece of cloth", chance = 2360},
	{name = "mystic turban", chance = 2050},
	{name = "wand of inferno", chance = 1060},
	{name = "focus cape", chance = 960},
	{id = 3039, name = "red gem", chance = 930}, -- red gem, has to be id due to same name reused for quest items
	{name = "mysterious fetish", chance = 900},
	{name = "ruby necklace", chance = 710},
	{name = "magma coat", chance = 590},
	{name = "oriental shoes", chance = 430},
	{name = "spellbook of mind control", chance = 370},
	{id = 6299, name = "death ring", chance = 280}, -- death ring
	{name = "blue gem", chance = 220}
}

monster.attacks = {
	-- Basic attack (0-250 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	-- Fire Box (on target, effect: burn 10hp/tick)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		range = 7,
		radius = 1,
		shootEffect = CONST_ANI_FIRE,
		effect = SPELL_ANIMATIONS.FIRE,
		condition = {type = CONDITION_FIRE, totalDamage = 150, interval = 4000},
		target = true
	},
	-- Flame Strike (0-170 fire, on target)
	{
		name = "combat",
		interval = 2000,
		chance = 10,
		shootEffect = CONST_ANI_FIRE,
		type = COMBAT_FIREDAMAGE,
		minDamage = 0,
		maxDamage = -170,
		range = 3,
		effect = SPELL_ANIMATIONS.FIRE,
		target = true
	},
	-- Death Ball (0-300 death, on target)
	{name = "DeathBallDeathTarget", interval = 2000, chance = 10, minDamage = -0, maxDamage = -300, target = true},
	-- Red Stars Box (on target, effect: debuff -20% magic level)
	CustomMonsterSpell:new():setDamageRange(0, 0):withBox():withRedStars():withTarget():setChance(20):withSkillLevelDebuff(
		75,
		85,
		CONDITION_PARAM_STAT_MAGICPOINTSPERCENT,
		2000
	), -- Long Red Stars Beam (0-250 mana drain)
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		length = 5,
		type = COMBAT_MANADRAIN,
		minDamage = -0,
		maxDamage = -250,
		effect = SPELL_ANIMATIONS.RED_STARS,
		target = false
	},
	-- Black Steam Box (on self, effect: paralyze)
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = -600,
		radius = 3,
		effect = SPELL_ANIMATIONS.BLACK_STEAM,
		target = false,
		duration = 10000
	}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	-- Healing
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 50,
		maxDamage = 100,
		effect = SPELL_ANIMATIONS.BLUE_STARS,
		target = false
	},
	-- Haste
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 320,
		effect = SPELL_ANIMATIONS.RED_STARS,
		target = false,
		duration = 5000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE, percent = -10},
	{type = COMBAT_DEATHDAMAGE, percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
