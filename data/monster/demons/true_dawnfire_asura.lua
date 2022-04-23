local mType = Game.createMonsterType("True Dawnfire Asura")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "31/03/2022"
}

monster.description = "a true dawnfire asura"
monster.experience = 7475
monster.outfit = {
	lookType = 1068,
	lookHead = 79,
	lookBody = 94,
	lookLegs = 120,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1620
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

monster.health = 8500
monster.maxHealth = 8500
monster.race = "blood"
monster.corpse = 28664
monster.speed = 360
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	staticAttackChance = 80,
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
	chance = 10
}

monster.loot = {
	MonsterLoot:new():withPlatinumCoins(100, 12),
	MonsterLoot:new():withFlaskOfDemonicBlood(29.44),
	MonsterLoot:new():withDemonicEssence(22.18),
	MonsterLoot:new():setLoot("golden lotus brooch", 21.85),
	MonsterLoot:new():setLoot("peacock feather fan", 21.38),
	MonsterLoot:new():withSoulOrb(19.81),
	MonsterLoot:new():withSmallEmerald(18.49, 5),
	MonsterLoot:new():withGreatManaPotion(15.39, 2),
	MonsterLoot:new():withSmallRuby(12.2, 3),
	MonsterLoot:new():withSmallEnchantedRuby(10.03, 3),
	MonsterLoot:new():withSmallDiamond(8.58, 2),
	MonsterLoot:new():withSmallAmethyst(8.27, 2),
	MonsterLoot:new():withSmallTopaz(7.87, 2),
	MonsterLoot:new():withCrystalCoins(5.27),
	MonsterLoot:new():withRedGem(4.23),
	MonsterLoot:new():withRoyalStar(4.14, 3),
	MonsterLoot:new():withRubyNecklace(4.13),
	MonsterLoot:new():withRedPieceOfCloth(3.23),
	MonsterLoot:new():withMysticTurban(3.19),
	MonsterLoot:new():setLoot("mysterious fetish", 3.15),
	MonsterLoot:new():withBlueGem(3.11),
	MonsterLoot:new():withOrientalShoes(2.8),
	MonsterLoot:new():withMagmaCoat(2.32),
	MonsterLoot:new():withFocusCape(2.25),
	MonsterLoot:new():withWandOfInferno(1.38),
	MonsterLoot:new():withSpellbookOfMindControl(1.35),
	MonsterLoot:new():withDeathRing(0.96)
}

monster.attacks = {
	-- 	Basic attack (0-700 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 700),
	-- Fire Box (on target, effect: burn 10hp/tick)
	CustomMonsterSpell:new():setDamageRange(0, 0):setCondition({type = CONDITION_FIRE, totalDamage = 200, interval = 4000}):withFire(

	):withBox():withFireDamage():withTarget(),
	-- Flame Strike (350-750 fire, on target)
	CustomMonsterSpell:new():setDamageRange(350, 750):withFireDamage():withFlame():withStrike():withTarget(),
	-- Death Ball (550-750 death, on target)
	CustomMonsterSpell:new():setDamageRange(550, 750):withDeath():withDeathDamage():withBall():withTarget(),
	-- Red Stars Box (on target, effect: debuff -20% magic level)
	CustomMonsterSpell:new():setDamageRange(0, 0):withBox():withRedStars():withTarget():setChance(20):withSkillLevelDebuff(
		75,
		85,
		CONDITION_PARAM_STAT_MAGICPOINTSPERCENT,
		2000
	),
	-- Black Steam Box (on self, effect: paralyze)
	CustomMonsterSpell:new():setDamageRange(0, 0):withParalyze(-300, 10000):withBlackSteam():withBox(),
	-- Great Black Steam Beam (50-300 mana drain)
	CustomMonsterSpell:new():setChance(15):setDamageRange(50, 300):withBlackSteam():withGreatBeam():withManaDrainDamage()
}

monster.defenses = {
	defense = 55,
	armor = 77,
	-- Healing
	{
		name = "combat",
		interval = 2000,
		chance = 15,
		type = COMBAT_HEALING,
		minDamage = 50,
		maxDamage = 100,
		effect = CONST_ME_MAGIC_BLUE,
		target = false
	},
	{
		name = "speed",
		interval = 2000,
		chance = 15,
		speedChange = 320,
		effect = CONST_ME_MAGIC_RED,
		target = false,
		duration = 5000
	}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
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
