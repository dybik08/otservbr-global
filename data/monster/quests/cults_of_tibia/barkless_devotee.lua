local mType = Game.createMonsterType("Barkless Devotee")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "22/03/2022"
}

monster.description = "a barkless devotee"
monster.experience = 2200
monster.outfit = {
	lookType = 990,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1486
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

monster.health = 2200
monster.maxHealth = 2200
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
	{text = "Prepare yourself!", yell = false},
	{text = "You are not loved by this world!", yell = false},
	{text = "Pain and suffering!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 50010, maxCount = 100},
	{id = 25742, name = "fig leaf", chance = 3970},
	{id = 25743, name = "bed of nails", chance = 1070},
	{id = 25744, name = "torn shirt", chance = 850}
}

monster.attacks = {
	-- Basic attack (0-300 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
	-- Envenom Ball (180-415 physical, on target)
	{
		name = "EnvenomBallPhysicalTarget",
		interval = 2000,
		chance = 20,
		minDamage = -180,
		maxDamage = -415
	},
	-- Greater Envenom Ball (110-310 life drain, on self)
	{
		name = "GreaterEnvenomBallLifeDrainSelf",
		interval = 2000,
		chance = 10,
		minDamage = -110,
		maxDamage = -310
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
	{type = COMBAT_ENERGYDAMAGE, percent = 17},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 15},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 15}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
