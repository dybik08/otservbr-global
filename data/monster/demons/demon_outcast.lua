local mType = Game.createMonsterType("Demon Outcast")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a demon outcast"
monster.experience = 6200
monster.outfit = {
	lookType = 590,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1019
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Roshamuul Prison."
}

monster.health = 6900
monster.maxHealth = 6900
monster.race = "blood"
monster.corpse = 20215
monster.speed = 296
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
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{name = "energy elemental", chance = 10, interval = 2000, count = 2}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Back in the evil business!", yell = false},
	{text = "This prison break will have casualties!", yell = false},
	{text = "At last someone to hurt", yell = false},
	{text = "No one will imprison me again!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 100),
	MonsterLoot:withPlatinumCoins(100, 6),
	MonsterLoot:withGreatManaPotion(20.07, 2),
	MonsterLoot:withUltimateHealthPotion(19.91, 3),
	MonsterLoot:withFireMushroom(19.82, 6),
	MonsterLoot:withSmallTopaz(10.12, 5),
	MonsterLoot:withSmallDiamond(10.1, 5),
	MonsterLoot:withSmallSapphire(10.02, 5),
	MonsterLoot:withSmallRuby(9.97, 5),
	MonsterLoot:withSmallEmerald(9.97, 5),
	MonsterLoot:withAssassinStar(8.97, 10),
	MonsterLoot:withRingofHealing(2.5),
	MonsterLoot:withGiantSword(1.97),
	MonsterLoot:withStealthRing(1.36),
	MonsterLoot:withCrownShield(0.93),
	MonsterLoot:withIceRapier(0.89),
	MonsterLoot:withPlatinumAmulet(0.7),
	MonsterLoot:withMightRing(0.62),
	MonsterLoot:withCrusaderHelmet(0.61),
	MonsterLoot:withDevilHelmet(0.6),
	MonsterLoot:withDemonDust(0.5),
	MonsterLoot:withClusterOfSolace(0.49),
	MonsterLoot:withDemonShield(0.39),
	MonsterLoot:withCrownArmor(0.3),
	MonsterLoot:withDemonrageSword(0.1)
}

monster.attacks = {
	-- Basic attack (0-400 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 400),
	-- Blue Electric Box (0-120 mana drain, on target)(Heavy Magic Missile)
	CustomMonsterSpell:withBlueElectricBox(0, 120):withTarget():withManaDrainDamage():withHeavyMagicMissileRune(),
	-- Greater Yellow Electric Beam (300-450 life drain)
	CustomMonsterSpell:withGreaterYellowElectricBeam(300, 450):withLifeDrainDamage(),
	-- Longer Violet Electric Beam (300-450 energy)
	CustomMonsterSpell:withLongerVioletElectricBeam(300, 450):withEnergyDamage(),
	-- Green Stars Ball (on target, effect: debuff -75% distance fightining)(Flash Arrow)
	CustomMonsterSpell:withGreenStarsBall():withTarget():withSkillLevelDebuff(
		75,
		75,
		CONDITION_PARAM_SKILL_DISTANCEPERCENT,
		2000
	):withFlashArrow()
}

monster.defenses = {
	defense = 40,
	armor = 40,
	-- Healing (200-300 heal)
	CustomMonsterSpell:new():withHealing(200, 300)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = -8},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -6},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
