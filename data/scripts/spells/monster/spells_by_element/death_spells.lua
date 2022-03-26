local DeathBallDeathTarget =
    CREATE_SPELL(
    concat(
        DeathBallDefaultConfig,
        {
            type = COMBAT_DEATHDAMAGE,
            effect = SPELL_ANIMATIONS.DEATH,
            area = SPELL_AREAS.BALL,
            name = "DeathBallDeathTarget",
            words = "###DeathBallDeathTarget",
            needDirection = true
        }
    )
)

DeathBallDeathTarget:register()

local DeathStrikeDeathTarget =
    CREATE_SPELL(
    concat(
        DeathStrikeDefaultConfig,
        {
            type = COMBAT_DEATHDAMAGE,
            name = "DeathStrikeDeathTarget",
            words = "###DeathStrikeDeathTarget",
            needTarget = true
        }
    )
)

DeathStrikeDeathTarget:register()

local DizzyBallDeathSelfDrunk =
    CREATE_SPELL(
    concat(
        DizzyBallDefaultConfig,
        {
            type = COMBAT_DEATHDAMAGE,
            name = "DizzyBallDeathSelfDrunk",
            words = "###DizzyBallDeathSelfDrunk",
            needDirection = false,
            condition = ConditionDrunkDefaultConfig
        }
    )
)
DizzyBallDeathSelfDrunk:register()

local DeathBoxDeathTarget =
    CREATE_SPELL(
    concat(
        DeathBoxDefaultConfig,
        {
            type = COMBAT_DEATHDAMAGE,
            name = "DeathBoxDeathTarget",
            words = "###DeathBoxDeathTarget",
            needTarget = true
        }
    )
)
DeathBoxDeathTarget:register()

local LongerDicerollBeamDeath =
    CREATE_SPELL(
    concat(
        LongerDicerollBeamDefaultConfig,
        {
            type = COMBAT_DEATHDAMAGE,
            name = "LongerDicerollBeamDeath",
            words = "###LongerDicerollBeamDeath"
        }
    )
)
LongerDicerollBeamDeath:register()

local DeathBoxDeathSelf =
    CREATE_SPELL(
    concat(
        DeathBoxDefaultConfig,
        {
            type = COMBAT_DEATHDAMAGE,
            name = "DeathBoxDeathSelf",
            words = "###DeathBoxDeathSelf",
            needTarget = false
        }
    )
)
DeathBoxDeathSelf:register()
