

local shorterPoisonTWave = CREATE_SPELL({
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    area = SPELL_AREAS.SHORTER_T_WAVE,
    name ='shorterPoisonTWave',
    words ='###514',
})

shorterPoisonTWave:register()



local poisonBall = CREATE_SPELL(poisonBallDefaultConfig)

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


local poisonHit = CREATE_SPELL({
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    area = SPELL_AREAS.STRIKE,
    name ='poisonHit',
    words ='###519',
    needTarget = true,
})

poisonHit:register()


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



local greatTerraWave = CREATE_SPELL(greatTerraWaveDefaultConfig)

greatTerraWave:register()


local TerraStrikeDefaultConfig = {
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.TERRA,
    area = SPELL_AREAS.STRIKE,
    name = "TerraStrike",
    words = "###552",
    needTarget = true
}

local TerraStrike = CREATE_SPELL(TerraStrikeDefaultConfig)

TerraStrike:register()


local PoisonWaveDefaultConfig = {
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.POISON,
    area = SPELL_AREAS.GREAT_WAVE,
    name = "PoisonWave",
    words = "###554",
    needDirection = true
}

local PoisonWave = CREATE_SPELL(PoisonWaveDefaultConfig)

PoisonWave:register()


local EnvenomBallDefaultConfig = {
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.ENVENOM,
    area = SPELL_AREAS.BALL,
    name = "EnvenomBall",
    words = "###EnvenomBall",
    needTarget = true
}

local EnvenomBall = CREATE_SPELL(EnvenomBallDefaultConfig)

EnvenomBall:register()

local GreaterEnvenomBallDefaultConfig = {
    type = COMBAT_POISONDAMAGE,
    effect = SPELL_ANIMATIONS.ENVENOM,
    area = SPELL_AREAS.GREATER_BALL,
    name = "GreaterEnvenomBall",
    words = "###GreaterEnvenomBall",
    needTarget = true
}

local GreaterEnvenomBall = CREATE_SPELL(GreaterEnvenomBallDefaultConfig)

GreaterEnvenomBall:register()
