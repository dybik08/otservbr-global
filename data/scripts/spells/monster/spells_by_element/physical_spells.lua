local EruptionBallPhysicalSelf =
    CREATE_SPELL(
    concat(
        EruptionBallDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "EruptionBallPhysicalSelf",
            words = "###EruptionBallPhysicalSelf",
            needTarget = false
        }
    )
)

EruptionBallPhysicalSelf:register()

local SparkyBeamPhysical =
    CREATE_SPELL(
    concat(
        SparkyBeamDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "SparkyBeamPhysical",
            words = "###SparkyBeamPhysical"
        }
    )
)
SparkyBeamPhysical:register()

local GroundshakerBoxPhysicalSelf =
    CREATE_SPELL(
    concat(
        GroundshakerBoxDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "GroundshakerBoxPhysicalSelf",
            words = "###GroundshakerBoxPhysicalSelf"
        }
    )
)
GroundshakerBoxPhysicalSelf:register()

local BlueStarsBoxPhysicalSelf =
    CREATE_SPELL(
    concat(
        BlueStarsBoxDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "BlueStarsBoxPhysicalSelf",
            words = "###BlueStarsBoxPhysicalSelf"
        }
    )
)

BlueStarsBoxPhysicalSelf:register()

local RangedAttackSpearPhysicalTarget =
    CREATE_SPELL(
    concat(
        RangedAttackSpearDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "RangedAttackSpearPhysicalTarget",
            words = "###RangedAttackSpearPhysicalTarget",
            needTarget = true
        }
    )
)
RangedAttackSpearPhysicalTarget:register()

local ExplosionStrikePhysicalTargetLargeRock =
    CREATE_SPELL(
    concat(
        ExplosionStrikeDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "ExplosionStrikePhysicalTargetLargeRock",
            words = "###ExplosionStrikePhysicalTargetLargeRock",
            distanceEfect = SHOOT_EFFECTS.LARGE_ROCK,
            needTarget = true
        }
    )
)
ExplosionStrikePhysicalTargetLargeRock:register()

local GroundshakerBallPhysicalSelf =
    CREATE_SPELL(
    concat(
        GroundshakerBallDefaultConfig,
        {
            type = COMBAT_PHYSICALDAMAGE,
            name = "GroundshakerBallPhysicalSelf",
            words = "###GroundshakerBallPhysicalSelf"
        }
    )
)
GroundshakerBallPhysicalSelf:register()

local EnvenomBallPhysicalSelf =
    CREATE_SPELL(
    concat(
        EnvenomBallDefaultConfig,
        {
            name = "EnvenomBallPhysicalSelf",
            words = "###EnvenomBallPhysicalSelf",
            type = COMBAT_PHYSICALDAMAGE
        }
    )
)
EnvenomBallPhysicalSelf:register()

local EnvenomBallPhysicalTarget =
    CREATE_SPELL(
    concat(
        EnvenomBallDefaultConfig,
        {
            name = "EnvenomBallPhysicalTarget",
            words = "###EnvenomBallPhysicalTarget",
            type = COMBAT_PHYSICALDAMAGE
        }
    )
)
EnvenomBallPhysicalTarget:register()
