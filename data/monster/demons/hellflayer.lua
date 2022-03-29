local mType = Game.createMonsterType("Hellflayer")
local monster = {}

monster.Credits = {
	Developer = "Wojciech Dybikowski",
	lastUpdate = "29/03/2022"
}

monster.description = "a hellflayer"
monster.experience = 11000
monster.outfit = {
	lookType = 856,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1198
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Dungeons of The Ruthless Seven."
}

monster.health = 14000
monster.maxHealth = 14000
monster.race = "blood"
monster.corpse = 22784
monster.speed = 330
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "You should consider bargaining for your life!", yell = false},
	{text = "Your tainted soul belongs to us anyway!", yell = false}
}

monster.loot = {
	MonsterLoot:new():withGoldCoins(90.4, 198),
	MonsterLoot:new():withPlatinumCoins(89.77, 12),
	MonsterLoot:new():setLoot("flask of demonic blood", 20.73, 3),
	MonsterLoot:new():withDemonicEssence(16.42),
	MonsterLoot:new():setLoot("great mana potion", 14.96, 5),
	MonsterLoot:new():setLoot("pair of hellflayer horns", 13.35),
	MonsterLoot:new():setLoot("great spirit potion", 12.91, 5),
	MonsterLoot:new():setLoot("ultimate healing potion", 12.57, 5),
	MonsterLoot:new():setLootItem("small topaz"):setChance(7.89):setMaxCount(5),
	MonsterLoot:new():setLootItem("small emerald"):setChance(7.41):setMaxCount(5),
	MonsterLoot:new():setLootItem("small diamond"):setChance(7.41):setMaxCount(5),
	MonsterLoot:new():setLootItem("small ruby"):setChance(6.53):setMaxCount(5),
	MonsterLoot:new():setLoot("gold ingot", 6.19, 2),
	MonsterLoot:new():setLootItem("small amethyst"):setChance(5.99):setMaxCount(5),
	MonsterLoot:new():setLoot("giant shimmering pearl", 3.22),
	MonsterLoot:new():setLoot("red gem", 2.19),
	MonsterLoot:new():setLoot("violet gem", 1.17),
	MonsterLoot:new():setLoot("magma legs", 1.07),
	MonsterLoot:new():setLoot("magma boots", 0.97),
	MonsterLoot:new():setLoot("rift lance", 0.78),
	MonsterLoot:new():setLoot("titan axe", 0.63),
	MonsterLoot:new():setLoot("green gem", 0.49),
	MonsterLoot:new():setLoot("rift shield", 0.44),
	MonsterLoot:new():setLoot("rift bow", 0.43),
	MonsterLoot:new():setLoot("golden armor", 0.34),
	MonsterLoot:new():setLoot("mastermind shield", 0.29),
	MonsterLoot:new():setLoot("rift crossbow", 0.24),
	MonsterLoot:new():setLoot("magic plate armor", 0.24),
	MonsterLoot:new():setLoot("skull helmet", 0.24),
	MonsterLoot:new():setLoot("demonbone amulet", 0.19)
}

monster.attacks = {
	-- 	Basic attack (0-800 physical)
	CustomMonsterSpell:new():withBasicAttack():setDamageRange(0, 800),
	-- Ranged attack (460-630 fire) (Flaming Arrow)
	CustomMonsterSpell:new():withFireDamage():withFlamingArrow():setChance(10):setDamageRange(460, 630),
	-- Great Eruption Ball (380-520 fire, on target)
	CustomMonsterSpell:new():setChance(10):withFireDamage():withEruption():withGreaterBall():withTarget():setDamageRange(
		380,
		520
	),
	-- Great Death Beam (800-1250 death)
	CustomMonsterSpell:new():setChance(10):withDeathDamage():withDeath():withGreatBeam():setDamageRange(800, 1250),
	-- Groundshaker Ball (260-450 physical, on self)
	CustomMonsterSpell:new():setNeedDirection(false):setChance(100):withGroundShaker():withPhysicalDamage():withBall():setDamageRange(
		260,
		450
	)
}

monster.defenses = {
	defense = 20,
	armor = 20,
	CustomMonsterSpell:withHealing(300, 580):setChance(15)
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 70},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
