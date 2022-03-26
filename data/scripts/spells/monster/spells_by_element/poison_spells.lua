local GreaterEnvenomBallEarthSelf =
    CREATE_SPELL(
    concat(
        GreaterEnvenomBallDefaultConfig,
        {
            name = "GreaterEnvenomBallEarthSelf",
            words = "###GreaterEnvenomBallEarthSelf",
            needTarget = true,
            type = COMBAT_POISONDAMAGE
        }
    )
)

GreaterEnvenomBallEarthSelf:register()

local ShorterPoisonTWaveEarth =
    CREATE_SPELL(
    concat(
        ShorterPoisonTWaveDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "ShorterPoisonTWaveEarth",
            words = "###ShorterPoisonTWaveEarth"
        }
    )
)
ShorterPoisonTWaveEarth:register()

local PoisonBallEarthTarget =
    CREATE_SPELL(
    concat(
        PoisonBallDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "PoisonBallEarthTarget",
            words = "###PoisonBallEarthTarget",
            needTarget = true
        }
    )
)

PoisonBallEarthTarget:register()

local PoisonBallEarthSelf =
    CREATE_SPELL(
    concat(
        PoisonBallDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "PoisonBallEarthSelf",
            words = "###PoisonBallEarthSelf"
        }
    )
)

PoisonBallEarthSelf:register()

local PosionArrowEarthTarget =
    CREATE_SPELL(
    concat(
        PosionArrowDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "PosionArrowEarthTarget",
            words = "###PosionArrowEarthTarget",
            needTarget = true
        }
    )
)

PosionArrowEarthTarget:register()

local PoisonHitEarthTarget =
    CREATE_SPELL(
    concat(
        PoisonHitDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "PoisonHitEarthTarget",
            words = "###PoisonHitEarthTarget",
            needTarget = true
        }
    )
)
PoisonHitEarthTarget:register()

local ExplosionBallPoisonSelf =
    CREATE_SPELL(
    concat(
        ExplosionBallDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "ExplosionBallPoisonSelf",
            words = "###ExplosionBallPoisonSelf"
        }
    )
)
ExplosionBallPoisonSelf:register()

local GroundshakerBallEarthSelf =
    CREATE_SPELL(
    concat(
        GroundshakerBallDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "GroundshakerBallEarthSelf",
            words = "###GroundshakerBallEarthSelf"
        }
    )
)
GroundshakerBallEarthSelf:register()

local GreatTerraWavePoison =
    CREATE_SPELL(
    concat(
        GreatTerraWaveDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "GreatTerraWavePoison",
            words = "###GreatTerraWavePoison",
            needDirection = true
        }
    )
)

GreatTerraWavePoison:register()

local TerraStrikePoisonTarget =
    CREATE_SPELL(
    concat(
        TerraStrikeDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "TerraStrikePoisonTarget",
            words = "###TerraStrikePoisonTarget",
            needTarget = true
        }
    )
)

TerraStrikePoisonTarget:register()

local PoisonWaveEarth =
    CREATE_SPELL(
    concat(
        PoisonWaveDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "PoisonWaveEarth",
            words = "###PoisonWaveEarth",
            needDirection = true
        }
    )
)

PoisonWaveEarth:register()

local EnvenomBallEarthTarget =
    CREATE_SPELL(
    concat(
        EnvenomBallDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "EnvenomBallEarthTarget",
            words = "###EnvenomBallEarthTarget",
            needTarget = true
        }
    )
)
EnvenomBallEarthTarget:register()

local GreatTerraWaveEarth =
    CREATE_SPELL(
    concat(
        GreatTerraWaveDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "GreatTerraWaveEarth",
            words = "###GreatTerraWaveEarth"
        }
    )
)
GreatTerraWaveEarth:register()

local TerraBoxEarthTarget =
    CREATE_SPELL(
    concat(
        TerraBoxDefaultConfig,
        {
            type = COMBAT_POISONDAMAGE,
            name = "TerraBoxEarthTarget",
            words = "###TerraBoxEarthTarget",
            needTarget = true
        }
    )
)

TerraBoxEarthTarget:register()

local GroundshakerCrossEarthSelf =
    CREATE_SPELL(
    GroundshakerCrossDefaultConfig,
    {
        type = COMBAT_POISONDAMAGE,
        name = "GroundshakerCrossEarthSelf"
    }
)

GroundshakerCrossEarthSelf:register()

local GroundshakerXCrossEarthSelf =
    CREATE_SPELL(
    GroundshakerXCrossDefaultConfig,
    {
        type = COMBAT_POISONDAMAGE,
        name = "GroundshakerXCrossEarthSelf"
    }
)

GroundshakerXCrossEarthSelf:register()

local GroundshakerCircleEarthSelf =
    CREATE_SPELL(
    GroundshakerCircleDefaultConfig,
    {
        type = COMBAT_POISONDAMAGE,
        name = "GroundshakerCircleEarthSelf"
    }
)

GroundshakerCircleEarthSelf:register()
