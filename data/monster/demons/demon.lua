local mType = Game.createMonsterType("Demon")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a demon"
monster.experience = 6000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 35
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Hero Cave, Ferumbras' Citadel, Goroma, Razzachai, deep in Pits of Inferno, deep Formorgar Mines, Demon Forge, Alchemist Quarter, Magician Quarter, Chyllfroest, Oramond Dungeon, Abandoned Sewers."
}

monster.health = 8200
monster.maxHealth = 8200
monster.race = "fire"
monster.corpse = 5995
monster.speed = 256
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
	staticAttackChance = 70,
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

monster.summon = {
	maxSummons = 1,
	summons = {
		{name = "fire elemental", chance = 10, interval = 2000, count = 1}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your soul will be mine!", yell = false},
	{text = "MUHAHAHAHA!", yell = false},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = false},
	{text = "I SMELL FEEEEAAAAAR!", yell = false},
	{text = "Your resistance is futile!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 180),
	MonsterLoot:withPlatinumCoins(100, 12),
	MonsterLoot:withGreatManaPotion(25.08, 3),
	MonsterLoot:withGreatSpiritPotion(24.84, 5),
	MonsterLoot:withDemonicEssence(20.02),
	MonsterLoot:withFireMushroom(19.98, 6),
	MonsterLoot:withUltimateHealthPotion(19.83, 4),
	MonsterLoot:new():setLoot("demon horn", 19.83),
	MonsterLoot:withAssassinStar(15.11, 10),
	MonsterLoot:withSmallTopaz(10.18, 5),
	MonsterLoot:withSmallEmerald(10.1, 5),
	MonsterLoot:withSmallRuby(10, 5),
	MonsterLoot:withSmallAmethyst(9.97, 5),
	MonsterLoot:withFireAxe(3.98),
	MonsterLoot:withTalon(3.59),
	MonsterLoot:withOrb(3.1),
	MonsterLoot:withRedGem(2.89),
	MonsterLoot:withMightRing(2.52),
	MonsterLoot:withRingofHealing(2.51),
	MonsterLoot:withStealthRing(2.45),
	MonsterLoot:withGiantSword(1.99),
	MonsterLoot:withIceRapier(1.99),
	MonsterLoot:withGoldenSickle(1.47),
	MonsterLoot:new():setLoot("purple tome", 1.33),
	MonsterLoot:withDevilHelmet(1.2),
	MonsterLoot:withGoldRing(1.05),
	MonsterLoot:withDemonShield(0.74),
	MonsterLoot:withPlatinumAmulet(0.67),
	MonsterLoot:withMastermindShield(0.56),
	MonsterLoot:withGoldenLegs(0.43),
	MonsterLoot:withDemonrageSword(0.12),
	MonsterLoot:withMagicPlateArmor(0.12),
	MonsterLoot:new():setLoot("demon trophy", 0.09):setItemId(6434)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 450),
	-- Fire Field (20 fire, on target, effect: burn)
	{name = "firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	-- Ultimate Detonation Ball (150-300 fire, on target)
	CustomMonsterSpell:withUltimateDetonationBall(150, 300):withFireDamage():withTarget(),
	-- Energy Strike (200-250 energy, on target)
	CustomMonsterSpell:withEnergyStrike(200, 250):withEnergyDamage(),
	-- Great Violet Electric Beam (300-500 life drain)
	CustomMonsterSpell:withGreaterVioletElectricBeam(300, 500):withLifeDrainDamage(),
	-- Death Strike (on target, effect: paralyze)
	CustomMonsterSpell:withDeathStrike():withParalyze(),
	-- Blue Stars Strike (40-120 mana drain, on target)
	CustomMonsterSpell:withBlueStarsStrike(40, 120):withManaDrainDamage()
}

monster.defenses = {
	defense = 55,
	armor = 55,
	-- Healing (220-300 heal)
	CustomMonsterSpell:new():withHealing(220, 300),
	-- Haste
	CustomMonsterSpell:new():withHaste(monster.speed)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -12},
	{type = COMBAT_HOLYDAMAGE , percent = -12},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
