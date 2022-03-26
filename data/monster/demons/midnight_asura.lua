local mType = Game.createMonsterType("Midnight Asura")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "15/03/2022"
}

monster.description = "a midnight asura"
monster.experience = 4100
monster.outfit = {
	lookType = 150,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 90,
	lookFeet = 90,
	lookAddons = 1,
	lookMount = 0
}

monster.raceId = 1135
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Asura Palace."
}

monster.health = 3100
monster.maxHealth = 3100
monster.race = "blood"
monster.corpse = 21988
monster.speed = 240
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
	{text = "Death and Darkness!", yell = false},
	{text = "Embrace the night!", yell = false},
	{text = "May night fall upon you!", yell = false}
}

-- sorted descending
monster.loot = {
	{id = 3035, name = "platinum coin", chance = 80660, maxCount = 6},
	{name = "gold coin", chance = 69790, maxCount = 242},
	{name = "soul orb", chance = 13880},
	{name = "flask of demonic blood", chance = 13380},
	{name = "golden lotus brooch", chance = 12600},
	{name = "demonic essence", chance = 11330},
	{name = "peacock feather fan", chance = 10800},
	{name = "great health potion", chance = 8350, maxCount = 2},
	{name = "assassin star", chance = 7760, maxCount = 5},
	{name = "small diamond", chance = 5770, maxCount = 3},
	{name = "white pearl", chance = 5460, maxCount = 2},
	{name = "small sapphire", chance = 5280, maxCount = 3},
	{name = "small topaz", chance = 3760, maxCount = 2},
	{name = "black pearl", chance = 3570, maxCount = 2},
	{name = "silver brooch", chance = 3750},
	{name = "small emerald", chance = 3230, maxCount = 2},
	{name = "small ruby", chance = 2610, maxCount = 2},
	{name = "necrotic rod", chance = 2450},
	{name = "tribal mask", chance = 1890},
	{name = "yellow gem", chance = 1300},
	{name = "silver amulet", chance = 960},
	{name = "underworld rod", chance = 810},
	{name = "blue robe", chance = 470},
	{name = "oriental shoes", chance = 370},
	{id = 3007, chance = 340}, -- crystal ring,
	{name = "blue gem", chance = 280},
	{name = "assassin dagger", chance = 250},
	{name = "spellbook of mind control", chance = 250},
	{name = "gold ingot", chance = 120},
	{name = "skullcracker armor", chance = 60}
}

monster.attacks = {
	-- Basic attack (0-350 physical)
	{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
	-- Short Violet Electric Beam (0-110 mana drain)
	{name = "ShortVioletElectricBeamManaDrain", interval = 2000, chance = 10, minDamage = 0, maxDamage = -110},
	-- Death Strike (0-200 death, on target)
	{name = "DeathStrikeDeathTarget", interval = 2000, chance = 10, minDamage = -0, maxDamage = -200},
	-- Dizzy Ball (on target, effect: drunk)
	{name = "DizzyBallDeathSelfDrunk", interval = 2000, chance = 10, minDamage = -50, maxDamage = -200},
	-- Great Black Steam Wave (0-210 life drain)
	{name = "BlackSteamWaveLifeDrain", interval = 2000, chance = 10, minDamage = -0, maxDamage = -210}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	-- Invisible
	{
		name = "invisible",
		interval = 2000,
		chance = 15,
		effect = SPELL_ANIMATIONS.RED_STARS,
		target = false,
		duration = 5000
	},
	-- Healing
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 50,
		effect = SPELL_ANIMATIONS.BLUE_STARS,
		maxDamage = 100,
		target = false
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
