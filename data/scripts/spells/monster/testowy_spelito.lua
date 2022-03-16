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
