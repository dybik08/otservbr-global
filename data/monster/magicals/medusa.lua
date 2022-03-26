local mType = Game.createMonsterType("Medusa")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "21/03/2022"
}

monster.description = "a medusa"
monster.experience = 4050
monster.outfit = {
	lookType = 330,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 570
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 5,
	Occurrence = 0,
	Locations = "Vandura Mountain (single spawn), Talahu (Medusa Cave), Deeper Banuta, Medusa Tower."
}

monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 9607
monster.speed = 250
monster.manaCost = 0

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
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 600,
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
	{text = "You will make sssuch a fine ssstatue!", yell = false},
	{text = "There isss no chhhanccce of essscape", yell = false},
	{text = "Jussst look at me!", yell = false},
	{text = "Are you tired or why are you moving thhat ssslow <chuckle>", yell = false}
}

-- ordered descending
monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 190},
	{id = 3035, name = "platinum coin", chance = 75150, maxCount = 6},
	{name = "ultimate health potion", chance = 10110, maxCount = 2},
	{name = "strand of medusa hair", chance = 9990},
	{name = "great mana potion", chance = 9930, maxCount = 2},
	{name = "small emerald", chance = 4040, maxCount = 4},
	{name = "terra amulet", chance = 3950},
	{name = "medusa shield", chance = 3050},
	{name = "knight armor", chance = 2000},
	{name = "titan axe", chance = 1200},
	{name = "sacred tree amulet", chance = 890},
	{name = "terra mantle", chance = 810},
	{name = "terra legs", chance = 440},
	{id = 8896, name = "slightly rusted armor", chance = 310}
}

monster.attacks = {
	-- Basic attack (0-300 physical, effect: poison 40hp/tick)
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		minDamage = 0,
		maxDamage = -300,
		condition = {type = CONDITION_POISON, totalDamage = 840, interval = 4000}
	},
	-- Terra Strike (100-250 life drain, on target)
	{
		name = "TerraStrikeLifeDrainTarget",
		interval = 2000,
		chance = 20,
		minDamage = -100,
		maxDamage = -250
	},
	-- Great Terra Wave (250-450 earth)
	{
		name = "GreatTerraWaveEarth",
		interval = 2000,
		chance = 15,
		minDamage = -250,
		maxDamage = -450
	},
	-- Ultimate Smoke Ball (on target, effect: paralyze)
	{
		name = "speed",
		interval = 2000,
		chance = 25,
		radius = 7,
		effect = CONST_ME_POFF,
		target = true
	},
	{
		name = "outfit",
		interval = 2000,
		chance = 1,
		range = 7,
		target = true,
		duration = 3000,
		outfitMonster = "clay guardian"
	}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	-- Healing (150 - 300)
	{
		name = "monsterHealing",
		interval = 2000,
		chance = 25,
		minDamage = 150,
		maxDamage = 300
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
