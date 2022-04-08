local mType = Game.createMonsterType("True Midnight Asura")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "31/03/2022"
}

monster.description = "a true midnight asura"
monster.experience = 7313
monster.outfit = {
	lookType = 1068,
	lookHead = 72,
	lookBody = 95,
	lookLegs = 72,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1621
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

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 28617
monster.speed = 340
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
	chance = 10
}

monster.loot = {
	MonsterLoot:new():withPlatinumCoins(100, 8),
	MonsterLoot:new():setLoot("golden lotus brooch", 21.96),
	MonsterLoot:new():setLoot("peacock feather fan", 21.73),
	MonsterLoot:new():withSoulOrb(20.6),
	MonsterLoot:new():withGreatHealthPotion(20.06, 2),
	MonsterLoot:new():withFlaskOfDemonicBlood(20.05),
	MonsterLoot:new():withDemonicEssence(15.78),
	MonsterLoot:new():withSmallDiamond(15.62, 3),
	MonsterLoot:new():withSmallEnchantedAmethyst(14.79, 3),
	MonsterLoot:new():withSmallSapphire(12.28, 3),
	MonsterLoot:new():withBlackPearl(9.71, 2),
	MonsterLoot:new():withSilverBrooch(9.63),
	MonsterLoot:new():withAssassinStar(9.39, 5),
	MonsterLoot:new():withWhitePearl(8.32, 2),
	MonsterLoot:new():withSmallRuby(8.11, 2),
	MonsterLoot:new():withSmallEmerald(8.04, 2),
	MonsterLoot:new():withSmallTopaz(8, 2),
	MonsterLoot:new():withCrystalCoins(5.54),
	MonsterLoot:new():withRoyalStar(4.07, 3),
	MonsterLoot:new():withNecroticRod(3.47),
	MonsterLoot:new():withTribalMask(2.73),
	MonsterLoot:new():withSilverAmulet(2.38),
	MonsterLoot:new():withOrientalShoes(2.24),
	MonsterLoot:new():withGoldIngot(2.13),
	MonsterLoot:new():withBlueGem(2.08),
	MonsterLoot:new():withVioletGem(1.87),
	MonsterLoot:new():withAssassinDagger(1.86),
	MonsterLoot:new():withSpellbookOfMindControl(1.15),
	MonsterLoot:new():withYellowGem(1.14),
	MonsterLoot:new():withSkullcrackerArmor(1.11),
	MonsterLoot:new():withUnderworldRod(1.05),
	MonsterLoot:new():withCrystalRing(0.99),
	MonsterLoot:new():withBlueRobe(0.7)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 450),
	-- Short Violet Electric Beam (50-280 mana drain)
	CustomMonsterSpell:new():setDamageRange(50, 280):withShortBeam():withVioletElectric():withManaDrainDamage(),
	-- Death Strike (500-650 death, on target)
	CustomMonsterSpell:new():setDamageRange(500, 650):withStrike():withDeath():withDeathDamage():withTarget(),
	-- Dizzy Ball (on target, effect: drunk)
	CustomMonsterSpell:new():setChance(20):setDamageRange(0, 0):withDrunk(10000):withDizzy():withTarget():withBall(),
	-- Long Black Steam Beam (500-700 life drain)
	CustomMonsterSpell:new():setChance(15):setDamageRange(500, 700):withBlackSteam():withLongBeam():withLifeDrainDamage()
}

monster.defenses = {
	defense = 55,
	armor = 75,
	CustomMonsterSpell:new():withHealing(50, 100),
	CustomMonsterSpell:new():withHaste(320, 5000),
	CustomMonsterSpell:new():withInvisible(5000):setChance(20)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
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
