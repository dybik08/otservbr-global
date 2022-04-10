local mType = Game.createMonsterType("Energuardian of Tales")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "an energuardian of tales"
monster.experience = 11361
monster.outfit = {
	lookType = 1063,
	lookHead = 66,
	lookBody = 85,
	lookLegs = 82,
	lookFeet = 93,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 1666
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Secret Library."
}

monster.health = 14000
monster.maxHealth = 14000
monster.race = "undead"
monster.corpse = 28873
monster.speed = 420
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100
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
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10
}

monster.loot = {
	MonsterLoot:withBookPage(59.27, 6),
	MonsterLoot:withSmallSapphire(55.63, 10),
	MonsterLoot:withGlowingRune(24.17, 4),
	MonsterLoot:withSpellbookOfWarding(9.27),
	MonsterLoot:withUltimateManaPotion(8.61),
	MonsterLoot:withFlashArrow(7.62, 14),
	MonsterLoot:withLightningLegs(5.96),
	MonsterLoot:withWandOfStarstorm(4.97),
	MonsterLoot:withLightningPendant(4.97),
	MonsterLoot:withMightRing(1.99),
	MonsterLoot:withPlatinumAmulet(1.32),
	MonsterLoot:withWandOfDefiance(0.66),
	MonsterLoot:withShockwaveAmulet(0.33),
	MonsterLoot:withSpellweaversRobe(0.33)
}

monster.attacks = {
	-- 	Basic attack (0-500 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 500),
	-- Energy Strike (700-900 energy, on target)(Heavy Magic Missile)
	CustomMonsterSpell:new():withEnergyDamage():setDamageRange(700, 900):withEnergy():withStrike():withTarget():withHeavyMagicMissileRune(

	),
	-- Energy Box (650-750 energy, on self)
	CustomMonsterSpell:new():withEnergyDamage():setDamageRange(650, 750):withEnergy():withBox(),
	-- Long Violet Electric Beam (700-900 energy)
	CustomMonsterSpell:new():withEnergyDamage():setDamageRange(700, 900):withVioletElectric():withLongBeam(),
	-- Energy Box (600-700 energy, on target)(Heavy Magic Missile)
	CustomMonsterSpell:new():withEnergyDamage():setDamageRange(600, 700):withEnergy():withBox():withTarget():withHeavyMagicMissileRune(

	)
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
