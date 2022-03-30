local mType = Game.createMonsterType("Juggernaut")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "30/03/2022"
}

monster.description = "a juggernaut"
monster.experience = 11200
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 296
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Deep in Pits of Inferno (Apocalypse's throne room), The Dark Path, The Blood Halls, The Vats, The Hive, The Shadow Nexus, a room deep in Formorgar Mines, Roshamuul Prison, Oramond Dungeon, Grounds of Destruction."
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 6335
monster.speed = 340
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
	staticAttackChance = 60,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "RAAARRR!", yell = false},
	{text = "GRRRRRR!", yell = false},
	{text = "WAHHHH!", yell = false}
}

monster.loot = {
	MonsterLoot:new():withGoldCoins(88.56, 195),
	MonsterLoot:new():withPlatinumCoins(85.84, 15),
	MonsterLoot:new():withHam(43.74),
	MonsterLoot:new():withDemonicEssence(31.61),
	MonsterLoot:new():withSoulOrb(23.32),
	MonsterLoot:new():withGreatManaPotion(22.54, 3),
	MonsterLoot:new():withFlaskOfDemonicBlood(22.14, 4),
	MonsterLoot:new():withGreatHealthPotion(18.15, 3),
	MonsterLoot:new():withAssassinStar(18.15, 3),
	MonsterLoot:withSmallEmerald(13.93, 5),
	MonsterLoot:withSmallRuby(13.85, 5),
	MonsterLoot:withSmallAmethyst(13.77, 5),
	MonsterLoot:withSmallTopaz(13.69, 5),
	MonsterLoot:withSmallDiamond(12.75, 5),
	MonsterLoot:new():setLoot("onyx arrow", 9.23, 15),
	MonsterLoot:new():withRedGem(7.75, 1),
	MonsterLoot:withGiantShimmeringPearl(5.63, 1),
	MonsterLoot:withGoldIngot(4.77, 2),
	MonsterLoot:new():setLoot("titan axe", 4.77),
	MonsterLoot:new():setLoot("knight armor", 4.15),
	MonsterLoot:new():setLoot("spiked squelcher", 3.99),
	MonsterLoot:withGreenGem(2.43),
	MonsterLoot:withWarAxe(1.49),
	MonsterLoot:withVioletGem(1.25),
	MonsterLoot:withGoldenArmor(0.55),
	MonsterLoot:withTrap(0.39),
	MonsterLoot:withDemonboneAmulet(0.16),
	MonsterLoot:withMastermindShield(0.08)
}

monster.attacks = {
	-- 	Basic attack (0-1400 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 1400),
	CustomMonsterSpell:new():withPhysicalDamage():setDamageRange(0, 500):withLargeRock():setChance(15)
}

monster.defenses = {
	defense = 60,
	armor = 60,
	-- Ultimate Healing (400-900 heal)
	CustomMonsterSpell:new():withHealing(400, 900):setChance(15),
	-- Haste
	CustomMonsterSpell:new():withHaste(520, 5000):setChance(15)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = -5},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
