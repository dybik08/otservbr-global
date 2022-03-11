local mType = Game.createMonsterType("Burning Book")
local monster = {}

monster.description = "a burning book"
monster.experience = 11934
monster.outfit = {
	lookType = 1061,
	lookHead = 79,
	lookBody = 113,
	lookLegs = 78,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1663
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library."
	}

monster.health = 18000
monster.maxHealth = 18000
monster.race = "fire"
monster.corpse = 28754
monster.speed = 440
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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

-- sorted descending
monster.loot = {
	{name = "Platinum Coin", chance = 89960, maxCount = 35},
	{name = "Book Page", chance = 50600, maxCount = 4},
	{name = "flask of demonic blood", chance = 41460, maxCount = 4},
	{name = "Demonic Essence", chance = 18390, maxCount = 1},
	{name = "Silken Bookmark", chance = 17360, maxCount = 1},
	{name = "Magma Coat", chance = 12680},
	{name = "Guardian Shield", chance = 10230},
	{name = "Soul Orb", chance = 6420, maxCount = 1},
	{name = "Small Amethyst", chance = 5980, maxCount = 7},
	{id = 3307, chance = 4130}, -- scimitar
	{name = "Necrotic Rod", chance = 3920},
	{id = 6299, chance = 2290}, -- death ring
	{name = "Magma Monocle", chance = 1090},
	{name = "Shadow Sceptre", chance = 650},
	{id = 3049, chance = 600}, -- Stealth ring
}

monster.attacks = {
    -- Basic attack (0-700 physical)
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -700},

	-- Ranged attack (800-1100 fire) (Flaming Arrow)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_HITBYFIRE, target = false},

	-- Explosion Box (700-950 fire, on self)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -950, radius = 3, effect = CONST_ME_EXPLOSIONAREA, target = false},

	-- Red Stars Beam (750-950 fire)
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -750, maxDamage = -950, length = 5, effect = CONST_ME_MAGIC_RED, target = false},

}

monster.defenses = {
	defense = 33,
	armor = 82,

    -- Healing
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 475, maxDamage = 600, effect = CONST_ME_MAGIC_BLUE, target = false},

	-- Haste (effect: haste)
    {name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
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

mType:register(monster)
