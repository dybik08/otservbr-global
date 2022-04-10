local mType = Game.createMonsterType("Blightwalker")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "10/04/2022"
}

monster.description = "a blightwalker"
monster.experience = 5850
monster.outfit = {
	lookType = 246,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 298
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Pits of Inferno, Edron (In the Vats during The Inquisition Quest), Roshamuul Prison."
}

monster.health = 8900
monster.maxHealth = 8900
monster.race = "undead"
monster.corpse = 6353
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10
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
	runHealth = 800,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I can see you decaying!", yell = false},
	{text = "Let me taste your mortality!", yell = false},
	{text = "Your lifeforce is waning!", yell = false}
}

monster.loot = {
	MonsterLoot:withGoldCoins(100, 200),
	MonsterLoot:withPlatinumCoins(100, 5),
	MonsterLoot:new():setLoot("bunch of wheat", 50.16, 3),
	MonsterLoot:withDemonicEssence(29.98),
	MonsterLoot:withGreatManaPotion(29.71, 3),
	MonsterLoot:withSoulOrb(25.86),
	MonsterLoot:withBlankRune(25.09, 2),
	MonsterLoot:new():setLoot("bundle of cursed straw", 15.2),
	MonsterLoot:withUltimateHealthPotion(15.06),
	MonsterLoot:withHailstormRod(9.99),
	MonsterLoot:withAssassinStar(7.48, 10),
	MonsterLoot:withGoldIngot(5.19),
	MonsterLoot:withGiantShimmeringPearl(5.05),
	MonsterLoot:withSeeds(4.12),
	MonsterLoot:new():setLoot("scythe", 2.87),
	MonsterLoot:withTerraLegs(2.43),
	MonsterLoot:withGarlicNecklace(2.11),
	MonsterLoot:withSkullStaff(2.04),
	MonsterLoot:withDeathRing(1.49),
	MonsterLoot:withGoldRing(1.45),
	MonsterLoot:withTerraMantle(1.04),
	MonsterLoot:withAmuletOfLoss(0.22),
	MonsterLoot:withGoldenSickle(0.12)
}

monster.attacks = {
	-- 	Basic attack (0-450 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 450),
	-- Poison Strike (on target, effect: paralyze)
	CustomMonsterSpell:new():withPoison():withStrike():withParalyze(),
	-- Envenom Strike (220-405 earth, on target)
	CustomMonsterSpell:new():setDamageRange(220, 405):withEnvenom():withStrike():withTarget():withEarthDamage(),
	-- Envenom Box (170-250 earth, on self)
	CustomMonsterSpell:withEnvenomBox(170, 250):withEarthDamage(),
	-- The Greatest Death Ball (on self, effect: curse 2 -> 100)
	{name = "blightwalker curse", interval = 2000, chance = 15, target = false},
	-- Green Stars Ball (120-200 life drain, on self)
	CustomMonsterSpell:withGreenStarsBall(120, 200):withLifeDrainDamage()
}

monster.defenses = {
	defense = 50,
	armor = 50
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE, percent = -30},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
