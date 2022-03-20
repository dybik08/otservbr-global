SPELL_AREAS = {
    STRIKE = {
        {0, 0, 0},
        {0, 3, 0},
        {0, 0, 0}
    },
    CROSS = {
        {0, 1, 0},
        {1, 3, 1},
        {0, 1, 0}
    },
    X_CROSS = {
        {1, 0, 1},
        {0, 3, 0},
        {1, 0, 1}
    },
    BOX = {
        {1, 1, 1},
        {1, 3, 1},
        {1, 1, 1}
    },
    BALL = { -- RADIUS 2
        {0, 1, 1, 1, 0},
        {1, 1, 1, 1, 1},
        {1, 1, 3, 1, 1},
        {1, 1, 1, 1, 1},
        {0, 1, 1, 1, 0},
    },
    GREAT_BALL = { -- RADIUS 3
        {0, 0, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 3, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
    },
    GREATER_BALL = { -- RADIUS 4
        { 0, 0, 0, 1, 1, 1, 0, 0, 0},
        { 0, 0, 1, 1, 1, 1, 1, 0, 0},
        { 0, 1, 1, 1, 1, 1, 1, 1, 0},
        { 1, 1, 1, 1, 1, 1, 1, 1, 1},
        { 1, 1, 1, 1, 3, 1, 1, 1, 1},
        { 1, 1, 1, 1, 1, 1, 1, 1, 1},
        { 0, 1, 1, 1, 1, 1, 1, 1, 0},
        { 0, 0, 1, 1, 1, 1, 1, 0, 0},
        { 0, 0, 0, 1, 1, 1, 0, 0, 0},
    },
    ULTIMATE_BALL = { -- RADIUS 5
        {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
    },
    THE_GREATEST_BALL = { -- RADIUS 6
        {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
    },
    CIRCLE = {
        {0, 1, 1, 1, 0},
        {1, 0, 0, 0, 1},
        {1, 0, 3, 0, 1},
        {1, 0, 0, 0, 1},
        {0, 1, 1, 1, 0},
    },
    GREAT_CIRCLE = {
        {0, 1, 1, 1, 1, 1, 0},
        {1, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 3, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 1},
        {0, 1, 1, 1, 1, 1, 0},
    },
    GREATER_CIRCLE = {}, -- TODO
    ULTIMATE_CIRCLE = {}, -- TODO
    THE_GREATEST_CIRCLE = {}, -- TODO
    TINY_BEAM = {
        {1},
        {3}
    },
    SHORTER_BEAM = {
        {1},
        {1},
        {3},
    },
    SHORT_BEAM = {
        {1},
        {1},
        {1},
        {3},
    },
    BEAM = {
        {1},
        {1},
        {1},
        {1},
        {3},
    },
    LONG_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {3},
    },
    LONGER_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {3},
    },
    GREAT_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {3},
    },
    GREATER_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {3},
    },
    SHORT_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0},
    },
    WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0},
    },
    LONG_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0},
    },
    LONGER_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREAT_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
    	{0, 1, 1, 1, 1, 1, 0},
    	{0, 1, 1, 1, 1, 1, 0},
    	{0, 0, 1, 1, 1, 0, 0},
    	{0, 0, 1, 1, 1, 0, 0},
    	{0, 0, 1, 1, 1, 0, 0},
    	{0, 0, 0, 1, 0, 0, 0},
    	{0, 0, 0, 3, 0, 0, 0}
    },
    TINY_CONE_WAVE = {
        {1, 1, 1},
        {0, 3, 0}
    },
    SHORT_CONE_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    CONE_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONG_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONGER_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREAT_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREATER_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    TINY_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    SHORTER_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    SHORT_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONG_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONGER_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREAT_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREATER_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
}

local deathBall = CREATE_SPELL({
    type = COMBAT_DEATHDAMAGE,
    effect = SPELL_ANIMATIONS.DEATH,
    area = SPELL_AREAS.BALL,
    name ='death_ball',
    words ='###505',
    needDirection = true,
})

deathBall:register()

local shortVioletElectricBeam = CREATE_SPELL({
    type = COMBAT_MANADRAIN,
    effect = SPELL_ANIMATIONS.PURPLE_ELECTRIC,
    area = SPELL_AREAS.SHORT_BEAM,
    name ='shortVioletElectricBeam',
    words ='###506',
})

shortVioletElectricBeam:register()

local deathStrike = CREATE_SPELL({
    type = COMBAT_DEATHDAMAGE,
    effect = SPELL_ANIMATIONS.DEATH,
    distanceEfect = SHOOT_EFFECTS.SUDDEN_DEATH_RUNE,
    name ='deathStrike',
    words ='###507',
    needTarget = true
})

deathStrike:register()

local dizzyBall = CREATE_SPELL({
    type = COMBAT_DEATHDAMAGE,
    effect = SPELL_ANIMATIONS.DICE,
    area = SPELL_AREAS.BALL,
    name ='dizzyBall',
    words ='###508',
    needDirection = false,
    condition = {
        type = CONDITION_DRUNK,
        interval = 20000,
    },
})

dizzyBall:register()

local blackSteamWave = CREATE_SPELL({
    type = COMBAT_LIFEDRAIN,
    effect = SPELL_ANIMATIONS.BLACK_STEAM,
    shootEffect = SHOOT_EFFECTS.SUDDEN_DEATH_RUNE,
    area = SPELL_AREAS.WAVE,
    name ='blackSteamWave',
    words ='###509',
    needDirection = true,
})

blackSteamWave:register()

local monsterHealing = CREATE_SPELL({
    type = COMBAT_HEALING,
    effect = SPELL_ANIMATIONS.BLUE_STARS,
    name ='monsterHealing',
    words ='###510'
})

monsterHealing:register()

local iceStrike = CREATE_SPELL({
    type = COMBAT_ICEDAMAGE,
    effect = SPELL_ANIMATIONS.ICE_FLAKE,
    distanceEfect = SHOOT_EFFECTS.ICE_STRIKE,
    name ='iceStrike',
    words ='###511',
    needTarget = true
})

iceStrike:register()

local greatIcyWindBeam = CREATE_SPELL({
    type = COMBAT_ICEDAMAGE,
    effect = SPELL_ANIMATIONS.ICY_WIND,
    shootEffect = SHOOT_EFFECTS.ICE_STRIKE,
    area = SPELL_AREAS.GREAT_BEAM,
    name ='greatIcyWindBeam',
    words ='###512',
    condition = {
        type = CONDITION_FREEZING,
        interval = 2000,
        tickDamage = 8,
        ticks = 20
    },
})

greatIcyWindBeam:register()

local eruptionBall = CREATE_SPELL({
    type = COMBAT_PHYSICALDAMAGE,
    effect = SPELL_ANIMATIONS.ERUPTION,
    area = SPELL_AREAS.BALL,
    name ='eruptionBall',
    words ='###513',
})

eruptionBall:register()

local shorterPoisonTWave = CREATE_SPELL({
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    area = SPELL_AREAS.SHORTER_T_WAVE,
    name ='shorterPoisonTWave',
    words ='###514',
})

shorterPoisonTWave:register()

local sparkyBeam = CREATE_SPELL({
    type = COMBAT_PHYSICALDAMAGE,
    effect = SPELL_ANIMATIONS.SPARKY,
    area = SPELL_AREAS.BEAM,
    name ='sparkyBeam',
    words ='###515',
})

sparkyBeam:register()

local poisonBall = CREATE_SPELL({
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    distanceEfect = SHOOT_EFFECTS.POISON_ARROW,
    area = SPELL_AREAS.BALL,
    name ='poisonBall',
    words ='###516',
    needTarget = true,
})

poisonBall:register()

local posionArrow = CREATE_SPELL({
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    distanceEfect = SHOOT_EFFECTS.POISON_ARROW,
    area = SPELL_AREAS.STRIKE,
    name ='posionArrow',
    words ='###517',
    needTarget = true,
})

posionArrow:register()

local groundshakerBox = CREATE_SPELL({
    type = COMBAT_PHYSICALDAMAGE,
    effect = SPELL_ANIMATIONS.GROUND_SHAKER,
    area = SPELL_AREAS.BOX,
    name ='groundshakerBox',
    words ='###518',
})

groundshakerBox:register()

local poisonHit = CREATE_SPELL({
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    area = SPELL_AREAS.STRIKE,
    name ='poisonHit',
    words ='###519',
    needTarget = true,
})

poisonHit:register()

local iceBox =
    CREATE_SPELL(
    {
        type = COMBAT_ICEDAMAGE,
        effect = SPELL_ANIMATIONS.ICE_FLAKE,
        area = SPELL_AREAS.BOX,
        name = "iceBox",
        words = "###520",
        needTarget = true
    }
)

iceBox:register()

local icyFlakeConeWave =
    CREATE_SPELL(
    {
        type = COMBAT_ICEDAMAGE,
        effect = SPELL_ANIMATIONS.ICE_FLAKE,
        area = SPELL_AREAS.CONE_WAVE,
        name = "icyFlakeConeWave",
        words = "###521",
        needDirection = true
    }
)

icyFlakeConeWave:register()

local blueStarsBox =
    CREATE_SPELL(
    {
        type = COMBAT_PHYSICALDAMAGE,
        effect = SPELL_ANIMATIONS.BLUE_STARS,
        area = SPELL_AREAS.BOX,
        name = "blueStarsBox",
        words = "###522"
    }
)

blueStarsBox:register()

local greaterBlueStarsBall =
    CREATE_SPELL(
    {
        type = COMBAT_LIFEDRAIN,
        effect = SPELL_ANIMATIONS.BLUE_STARS,
        area = SPELL_AREAS.GREATER_BALL,
        name = "greaterBlueStarsBall",
        words = "###523"
    }
)

greaterBlueStarsBall:register()

local explosionBall =
    CREATE_SPELL(
    {
        type = COMBAT_POISONDAMAGE,
        effect = SPELL_ANIMATIONS.EXPLOSION,
        area = SPELL_AREAS.BALL,
        name = "explosionBall",
        words = "###524"
    }
)

explosionBall:register()

local tinyGroundshakerTWave =
    CREATE_SPELL(
    {
        type = COMBAT_LIFEDRAIN,
        effect = SPELL_ANIMATIONS.GROUND_SHAKER,
        area = SPELL_AREAS.TINY_T_WAVE,
        name = "tinyGroundshakerTWave",
        words = "###525"
    }
)

tinyGroundshakerTWave:register()

local redStarsStrike =
    CREATE_SPELL(
    {
        type = COMBAT_LIFEDRAIN,
        effect = SPELL_ANIMATIONS.RED_STARS,
        area = SPELL_AREAS.STRIKE,
        name = "redStarsStrike",
        words = "###526",
        needTarget = true
    }
)

redStarsStrike:register()

local flameBox =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.FLAME,
        area = SPELL_AREAS.BOX,
        name = "flameBox",
        words = "###527",
        needTarget = true
    }
)

flameBox:register()

local shorterEnergyTWave =
    CREATE_SPELL(
    {
        type = COMBAT_ENERGYDAMAGE,
        effect = SPELL_ANIMATIONS.ENERGY,
        area = SPELL_AREAS.TWAVE,
        name = "shorterEnergyTWave",
        words = "###528",
        needTarget = true
    }
)

shorterEnergyTWave:register()

local deathBoxTarget =
    CREATE_SPELL(
    {
        type = COMBAT_DEATHDAMAGE,
        effect = SPELL_ANIMATIONS.DEATH,
        area = SPELL_AREAS.BOX,
        name = "deathBoxTarget",
        words = "###529",
        needTarget = true
    }
)

deathBoxTarget:register()

local sparkyBall =
    CREATE_SPELL(
    {
        type = COMBAT_ENERGYDAMAGE,
        effect = SPELL_ANIMATIONS.SPARKY,
        area = SPELL_AREAS.BALL,
        name = "sparkyBall",
        words = "###530"
    }
)

sparkyBall:register()

local longerDicerollBeam =
    CREATE_SPELL(
    {
        type = COMBAT_DEATHDAMAGE,
        effect = SPELL_ANIMATIONS.DICE,
        area = SPELL_AREAS.LONGER_BEAM,
        name = "longerDicerollBeam",
        words = "###531"
    }
)

longerDicerollBeam:register()

local deathBoxSelf =
    CREATE_SPELL(
    {
        type = COMBAT_DEATHDAMAGE,
        effect = SPELL_ANIMATIONS.DEATH,
        area = SPELL_AREAS.BOX,
        name = "deathBoxSelf",
        words = "###532"
    }
)

deathBoxSelf:register()
