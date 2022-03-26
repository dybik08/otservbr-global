function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == "table" then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function assign(object1, object2)
    local newObject = deepcopy(object1)

    for key, value in pairs(object2) do
        newObject[key] = value
    end

    return newObject
end

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


local sparkyBeam = CREATE_SPELL({
    type = COMBAT_PHYSICALDAMAGE,
    effect = SPELL_ANIMATIONS.SPARKY,
    area = SPELL_AREAS.BEAM,
    name ='sparkyBeam',
    words ='###515',
})

sparkyBeam:register()


local groundshakerBox = CREATE_SPELL({
    type = COMBAT_PHYSICALDAMAGE,
    effect = SPELL_ANIMATIONS.GROUND_SHAKER,
    area = SPELL_AREAS.BOX,
    name ='groundshakerBox',
    words ='###518',
})

groundshakerBox:register()


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

local flameStrike =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.FLAME,
        area = SPELL_AREAS.STRIKE,
        name = "flameStrike",
        words = "###533",
        needTarget = true
    }
)

flameStrike:register()

local eruptionBallTarget =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.ERUPTION,
        area = SPELL_AREAS.BALL,
        name = "eruptionBallTarget",
        words = "###534",
        needTarget = true
    }
)

eruptionBallTarget:register()

local longDetonationBeam =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.DETONATION,
        area = SPELL_AREAS.LONGER_BEAM,
        name = "longDetonationBeam",
        words = "###535"
    }
)

longDetonationBeam:register()

local eruptionBoxSelf =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.ERUPTION,
        area = SPELL_AREAS.BOX,
        name = "eruptionBoxSelf",
        words = "###536"
    }
)

eruptionBoxSelf:register()


local shortFlameBeam =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.FLAME,
        area = SPELL_AREAS.SHORT_BEAM,
        name = "shortFlameBeam",
        words = "###537"
    }
)

shortFlameBeam:register()

local detonationBoxSelf =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.DETONATION,
        area = SPELL_AREAS.BOX,
        name = "detonationBoxSelf",
        words = "###538"
    }
)

detonationBoxSelf:register()

local eruptionBoxTarget =
    CREATE_SPELL(
    {
        type = COMBAT_FIREDAMAGE,
        effect = SPELL_ANIMATIONS.ERUPTION,
        area = SPELL_AREAS.BOX,
        name = "eruptionBoxTarget",
        words = "###539",
        needTarget = true
    }
)

eruptionBoxTarget:register()

local energyStrike =
    CREATE_SPELL(
    {
        type = COMBAT_ENERGYDAMAGE,
        effect = SPELL_ANIMATIONS.ENERGY,
        area = SPELL_AREAS.STRIKE,
        name = "energyStrike",
        words = "###540",
        needTarget = true
    }
)

energyStrike:register()

local holyBoxSelf =
    CREATE_SPELL(
    {
        type = COMBAT_HOLYDAMAGE,
        effect = SPELL_ANIMATIONS.HOLY,
        area = SPELL_AREAS.BOX,
        name = "holyBoxSelf",
        words = "###541"
    }
)

holyBoxSelf:register()

local sparkyBoxTarget =
    CREATE_SPELL(
    {
        type = COMBAT_HOLYDAMAGE,
        effect = SPELL_ANIMATIONS.SPARKY,
        area = SPELL_AREAS.BOX,
        name = "sparkyBoxTarget",
        words = "###542",
        needTarget = true
    }
)

sparkyBoxTarget:register()

local greatSparkyBallSelf =
    CREATE_SPELL(
    {
        type = COMBAT_HOLYDAMAGE,
        effect = SPELL_ANIMATIONS.SPARKY,
        area = SPELL_AREAS.GREAT_BALL,
        name = "greatSparkyBallSelf",
        words = "###543"
    }
)

greatSparkyBallSelf:register()

local rangedAttackSpear =
    CREATE_SPELL(
    {
        type = COMBAT_PHYSICALDAMAGE,
        effect = SPELL_ANIMATIONS.BLOOD,
        distanceEfect = SHOOT_EFFECTS.SPEAR,
        area = SPELL_AREAS.STRIKE,
        name = "rangedAttackSpear",
        words = "###544",
        needTarget = true
    }
)

rangedAttackSpear:register()

local explosionStrikeDefaultConfig = {
    effect = SPELL_ANIMATIONS.EXPLOSION,
    area = SPELL_AREAS.STRIKE,
    needTarget = true
}

local explosionStrikeLargeRock =
    CREATE_SPELL(
    assign(
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "explosionStrikeLargeRock",
            words = "###545",
            distanceEfect = SHOOT_EFFECTS.LARGE_ROCK
        },
        explosionStrikeDefaultConfig
    )
)

explosionStrikeLargeRock:register()

local groundshakerBallDefaultConfig = {
    type = COMBAT_PHYSICALDAMAGE,
    effect = SPELL_ANIMATIONS.GROUND_SHAKER,
    area = SPELL_AREAS.BALL
}

local groundshakerBall =
    CREATE_SPELL(
    assign(
        {
            name = "groundshakerBall",
            words = "###546"
        },
        groundshakerBallDefaultConfig
    )
)

groundshakerBall:register()

local groundshakerBallEarth =
    CREATE_SPELL(
    assign(
        groundshakerBallDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "groundshakerBallEarth",
            words = "###547"
        }
    )
)

groundshakerBallEarth:register()

local longHolyBeamDefaultConfig = {
    type = COMBAT_HOLYDAMAGE,
    effect = SPELL_ANIMATIONS.HOLY,
    area = SPELL_AREAS.LONG_BEAM,
    name = "longHolyBeam",
    words = "###548",
    needDirection = true
}

local longHolyBeam = CREATE_SPELL(longHolyBeamDefaultConfig)

longHolyBeam:register()



local IcyFlakeStrikeDefaultConfig = {
    type = COMBAT_ICEDAMAGE,
    effect = SPELL_ANIMATIONS.ICE_FLAKE,
    area = SPELL_AREAS.STRIKE,
    name = "IcyFlakeStrike",
    words = "###550",
    needTarget = true
}

local IcyFlakeStrike = CREATE_SPELL(IcyFlakeStrikeDefaultConfig)

IcyFlakeStrike:register()

local GreatWaterWaveDefaultConfig = {
    type = COMBAT_ICEDAMAGE,
    effect = SPELL_ANIMATIONS.WATER,
    area = SPELL_AREAS.GREAT_WAVE,
    name = "GreatWaterWave",
    words = "###551",
    needDirection = true
}

local GreatWaterWave = CREATE_SPELL(GreatWaterWaveDefaultConfig)

GreatWaterWave:register()



local TerraStrikeLifeDrain =
    CREATE_SPELL(
    assign(
        TerraStrikeDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "TerraStrikeLifeDrain",
            words = "###553"
        }
    )
)

TerraStrikeLifeDrain:register()


local MusicalNotesBeamDefaultConfig = {
    type = COMBAT_LIFEDRAIN,
    effect = SPELL_ANIMATIONS.RED_NOTES,
    area = SPELL_AREAS.BEAM,
    name = "MusicalNotesBeam",
    words = "###555",
    needDirection = true
}

local MusicalNotesBeam = CREATE_SPELL(MusicalNotesBeamDefaultConfig)

MusicalNotesBeam:register()


local EnvenomBallPhysical =
    CREATE_SPELL(
    assign(
        EnvenomBallDefaultConfig,
        {
            name = "EnvenomBallPhysical",
            words = "###EnvenomBallPhysical",
            type = COMBAT_PHYSICALDAMAGE
        }
    )
)

EnvenomBallPhysical:register()



local GreaterEnvenomBallLifeDrainSelf =
    CREATE_SPELL(
    assign(
        GreaterEnvenomBallDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "GreaterEnvenomBallLifeDrainSelf",
            words = "###GreaterEnvenomBallLifeDrainSelf",
            needTarget = false
        }
    )
)

GreaterEnvenomBallLifeDrainSelf:register()
