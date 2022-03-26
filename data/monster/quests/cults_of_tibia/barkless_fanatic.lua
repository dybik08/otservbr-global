local mType = Game.createMonsterType("Barkless Fanatic")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "22/03/2022"
}

monster.description = "a barkless fanatic"
monster.experience = 2500
monster.outfit = {
	lookType = 990,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1488
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Barkless Cult Trial Zone (below Ab'Dendriel)."
}

monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 6012
monster.speed = 240
monster.manaCost = 390

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 95,
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
	{text = "DO NOT LEAVE THIS WORLD AS A WIMP!", yell = false},
	{text = "PAIN PURIFIES! PAIN PURIFIES!", yell = false},
	{text = "PROVE YOUR WORTH, BLEED!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 51530, maxCount = 199},
	{id = 25742, name = "fig leaf", chance = 9930},
	{id = 24961, name = "tiger eye", chance = 4340},
	{id = 25743, name = "bed of nails", chance = 2190},
	{id = 25744, name = "torn shirt", chance = 950}
}

monster.attacks = {
	-- Basic attack (0-250 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
	-- Envenom Ball (240-450 physical, on target)
	{
		name = "EnvenomBallPhysicalTarget",
		interval = 2000,
		chance = 20,
		minDamage = -240,
		maxDamage = -450
	},
	-- Greater Envenom Ball (210-350 life drain, on self)
	{
		name = "GreaterEnvenomBallLifeDrainSelf",
		interval = 2000,
		chance = 10,
		minDamage = -210,
		maxDamage = -350
	},
	-- Green Stars Box (on self, effect: debuff distance skill)
	{
		name = "barkless devotee skill reducer",
		interval = 2000,
		chance = 10
	}
}

monster.defenses = {
	defense = 35,
	armor = 35
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 1},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 1},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 1},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 1}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
