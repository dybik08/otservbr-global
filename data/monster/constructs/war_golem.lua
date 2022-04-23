local mType = Game.createMonsterType("War Golem")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "15/04/2022"
}

monster.description = "a war golem"
monster.experience = 2310
monster.outfit = {
	lookType = 326,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 533
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Factory Quarter."
}

monster.health = 4300
monster.maxHealth = 4300
monster.race = "venom"
monster.corpse = 9092
monster.speed = 320
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
	staticAttackChance = 90,
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
	{text = "Azerus barada nikto!", yell = false},
	{text = "Klonk klonk klonk", yell = false},
	{text = "Engaging Enemy!", yell = false},
	{text = "Threat level processed.", yell = false},
	{text = "Charging weapon systems!", yell = false},
	{text = "Auto repair in progress.", yell = false},
	{text = "The battle is joined!", yell = false},
	{text = "Termination initialized!", yell = false},
	{text = "Rrrtttarrrttarrrtta", yell = false},
	{text = "Eliminated", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(99.43, 255),
	MonsterLoot:withUltimateHealthPotion(10.69),
	MonsterLoot:withMorningStar(9.22),
	MonsterLoot:withGreatManaPotion(8.89),
	MonsterLoot:withPlateShield(8.56),
	MonsterLoot:withEpee(8.4),
	MonsterLoot:new():setLoot("war crystal", 8.4):setItemId(9654),
	MonsterLoot:new():setLoot("nail", 4.81, 5):setItemId(953),
	MonsterLoot:withTwoHandedSword(4.73),
	MonsterLoot:withBattleShield(4.32),
	MonsterLoot:withSlightlyRustedArmor(2.61),
	MonsterLoot:withIronOre(2.2),
	MonsterLoot:withDwarvenRing(1.06),
	MonsterLoot:withSteelBoots(0.98),
	MonsterLoot:withLifeCrystal(0.73),
	MonsterLoot:new():setLoot("crystal pedestal", 0.57):setItemId(9063),
	MonsterLoot:withClubRing(0.57),
	MonsterLoot:withBerserkPotion(0.49),
	MonsterLoot:withBonebreaker(0.41),
	MonsterLoot:new():setLoot("crystal of power", 0.24),
	MonsterLoot:withLightningBoots(0.16)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:withBasicAttack():setDamageRange(0, 450),
	-- Energy Strike (160-220 energy, on target)
	CustomMonsterSpell:withEnergyStrike(160, 220):withEnergyDamage(),
	-- Blue Electric Strike (on target, effect: electrify 25hp/tick)
	CustomMonsterSpell:withBlueElectricStrike():withEnergyCondition(25, 15),
	-- Storm Strike (on target) (zamienia w szkieleta)
	{
		name = "outfit",
		interval = 2000,
		chance = 1,
		range = 7,
		target = false,
		effect = SPELL_ANIMATIONS.YELLOW_ELECTRIC,
		duration = 3000,
		outfitMonster = "skeleton"
	},
	-- Longer Dizzy Beam (effect: debuff -50% shielding)
	CustomMonsterSpell:withSkillLevelDebuff(45, 55, CONDITION_PARAM_SKILL_SHIELDPERCENT, 2000):withLongerDizzyBeam()
}

monster.defenses = {
	defense = 40,
	armor = 40,
	CustomMonsterSpell:new():withHaste(monster.speed),
	CustomMonsterSpell:new():withHealing(200, 250)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
