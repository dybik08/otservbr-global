local FlameBoxFireTarget =
    CREATE_SPELL(
    concat(
        FlameBoxDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "FlameBoxFireTarget",
            words = "###FlameBoxFireTarget",
            needTarget = true
        }
    )
)
FlameBoxFireTarget:register()

local FlameStrikeFireTarget =
    CREATE_SPELL(
    concat(
        FlameStrikeDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "FlameStrikeFireTarget",
            words = "###FlameStrikeFireTarget",
            needTarget = true
        }
    )
)
FlameStrikeFireTarget:register()

local FireStrikeFireTarget =
    CREATE_SPELL(
    FlameStrikeDefaultConfig,
    {
        type = COMBAT_FIREDAMAGE,
        name = "FireStrikeFireTarget",
        words = "###FireStrikeFireTarget",
        needTarget = true
    }
)
FireStrikeFireTarget:register()

local EruptionBallFireTarget =
    CREATE_SPELL(
    concat(
        EruptionBallDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "EruptionBallFireTarget",
            words = "###EruptionBallFireTarget",
            needTarget = true
        }
    )
)
EruptionBallFireTarget:register()

local EruptionBallFireSelf =
    CREATE_SPELL(
    concat(
        EruptionBallDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "EruptionBallFireSelf",
            words = "###EruptionBallFireSelf"
        }
    )
)
EruptionBallFireSelf:register()

local LongDetonationBeamFire =
    CREATE_SPELL(
    concat(
        LongDetonationBeamDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "LongDetonationBeamFire",
            words = "###LongDetonationBeamFire"
        }
    )
)
LongDetonationBeamFire:register()

local EruptionBoxFireSelf =
    CREATE_SPELL(
    concat(
        EruptionBoxDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "EruptionBoxFireSelf",
            words = "###EruptionBoxFireSelf"
        }
    )
)
EruptionBoxFireSelf:register()

local ShortFlameBeamFire =
    CREATE_SPELL(
    concat(
        ShortFlameBeamFireDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "ShortFlameBeamFire",
            words = "###ShortFlameBeamFire"
        }
    )
)
ShortFlameBeamFire:register()

local DetonationBoxFireSelf =
    CREATE_SPELL(
    concat(
        DetonationBoxDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "DetonationBoxFireSelf",
            words = "###DetonationBoxFireSelf"
        }
    )
)
DetonationBoxFireSelf:register()

local EruptionBoxFireTarget =
    CREATE_SPELL(
    concat(
        EruptionBoxDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "EruptionBoxFireTarget",
            words = "###EruptionBoxFireTarget",
            needTarget = true
        }
    )
)
EruptionBoxFireTarget:register()

local ExplosionBallFireSelf =
    CREATE_SPELL(
    concat(
        ExplosionBallDefaultConfig,
        {
            type = COMBAT_FIREDAMAGE,
            name = "ExplosionBallFireSelf",
            words = "###ExplosionBallFireSelf"
        }
    )
)

ExplosionBallFireSelf:register()

local GreatFireWaveFire =
    CREATE_SPELL(
    GreatFireWaveDefaultConfig,
    {
        type = COMBAT_FIREDAMAGE,
        name = "GreatFireWaveFire",
        words = "###GreatFireWaveFire"
    }
)

GreatFireWaveFire:register()
