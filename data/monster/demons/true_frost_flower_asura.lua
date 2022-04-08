local mType = Game.createMonsterType("True Frost Flower Asura")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "31/03/2022"
}

monster.description = "a true frost flower asura"
monster.experience = 7069
monster.outfit = {
	lookType = 1068,
	lookHead = 105,
	lookBody = 0,
	lookLegs = 105,
	lookFeet = 8,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1622
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Asura Palace's secret basement."
}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 28668
monster.speed = 300
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
	targetDistance = 3,
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
	MonsterLoot:new():withPlatinumCoins(100, 8),
	MonsterLoot:new():withGreatHealthPotion(22.15, 2),
	MonsterLoot:new():withSoulOrb(22.07),
	MonsterLoot:new():setLoot("golden lotus brooch", 21.52),
	MonsterLoot:new():withFlaskOfDemonicBlood(21.13),
	MonsterLoot:new():withSmallEmerald(18.85, 5),
	MonsterLoot:new():setLoot("peacock feather fan", 18.77),
	MonsterLoot:new():withDemonicEssence(17.36),
	MonsterLoot:new():withSmallDiamond(13.28, 3),
	MonsterLoot:new():withSmallSapphire(11.15, 3),
	MonsterLoot:new():withAssassinStar(11, 5),
	MonsterLoot:new():withSilverBrooch(10.21),
	MonsterLoot:new():withSmallEnchantedSapphire(8.8, 3),
	MonsterLoot:new():withSmallRuby(8.8, 2),
	MonsterLoot:new():withBlackPearl(8.48, 2),
	MonsterLoot:new():withSmallTopaz(8.41, 2),
	MonsterLoot:new():withWhitePearl(7.31, 2),
	MonsterLoot:new():withCrystalCoins(5.42, 1),
	MonsterLoot:new():withRoyalStar(4.24, 3),
	MonsterLoot:new():withYellowGem(4.08),
	MonsterLoot:new():withNorthwindRod(3.85),
	MonsterLoot:new():withTribalMask(3.3),
	MonsterLoot:new():withBlueGem(2.67),
	MonsterLoot:new():withGoldIngot(2.12),
	MonsterLoot:new():withSilverAmulet(1.73),
	MonsterLoot:new():withSkullcrackerArmor(1.73),
	MonsterLoot:new():withBlueRobe(1.41),
	MonsterLoot:new():withHailstormRod(1.41),
	MonsterLoot:new():withAssassinDagger(1.18),
	MonsterLoot:new():withSpellbookOfMindControl(1.18),
	MonsterLoot:new():withOrientalShoes(0.94),
	MonsterLoot:new():withCrystalRing(0.86)
}

monster.attacks = {
	-- 	Basic attack (0-500 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 500),
	-- Shorter Violet Electric Beam (0-250 mana drain)
	CustomMonsterSpell:new(monster.flags.targetDistance):setDamageRange(0, 250):withShorterBeam():withVioletElectric():withManaDrainDamage(

	),
	-- Ice Strike (550-780 ice, on target)
	CustomMonsterSpell:new():setDamageRange(550, 780):withStrike():withIce():withIceDamage():withTarget(),
	-- Longer Icy Wind Beam (effect: freeze 8hp/tick)
	CustomMonsterSpell:new(monster.flags.targetDistance):setDamageRange(0, 0):setCondition(
		{type = CONDITION_FREEZING, totalDamage = 160, interval = 4000}
	):withLongerBeam():withIcyWind():withIceDamage()
}

monster.defenses = {
	defense = 55,
	armor = 55,
	-- Light healing
	CustomMonsterSpell:new():withHealing(50, 100),
	-- Haste (effect: haste)
	CustomMonsterSpell:new():withHaste(320, 5000)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE, percent = 30},
	{type = COMBAT_DEATHDAMAGE, percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
