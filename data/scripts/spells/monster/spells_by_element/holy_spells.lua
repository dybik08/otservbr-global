local HolyBoxHolySelf =
    CREATE_SPELL(
    concat(
        HolyBoxDefaultConfig,
        {
            type = COMBAT_HOLYDAMAGE,
            name = "HolyBoxHolySelf",
            words = "###HolyBoxHolySelf"
        }
    )
)
HolyBoxHolySelf:register()

local SparkyBoxHolyTarget =
    CREATE_SPELL(
    concat(
        SparkyBoxDefaultConfig,
        {
            type = COMBAT_HOLYDAMAGE,
            name = "SparkyBoxHolyTarget",
            words = "###SparkyBoxHolyTarget",
            needTarget = true
        }
    )
)
SparkyBoxHolyTarget:register()

local GreatSparkyBallHolySelf =
    CREATE_SPELL(
    concat(
        GreatSparkyBallDefaultConfig,
        {
            type = COMBAT_HOLYDAMAGE,
            name = "GreatSparkyBallHolySelf",
            words = "###GreatSparkyBallHolySelf"
        }
    )
)
GreatSparkyBallHolySelf:register()

local LongHolyBeamHoly =
    CREATE_SPELL(
    concat(
        LongHolyBeamDefaultConfig,
        {
            type = COMBAT_HOLYDAMAGE,
            name = "LongHolyBeamHoly",
            words = "###LongHolyBeamHoly",
            needDirection = true
        }
    )
)
LongHolyBeamHoly:register()

local HolyBallHolySelf =
    CREATE_SPELL(
    concat(
        HolyBallDefaultConfig,
        {
            type = COMBAT_HOLYDAMAGE,
            name = "HolyBallHolySelf",
            words = "###HolyBallHolySelf"
        }
    )
)
HolyBallHolySelf:register()

local HolyBeamHoly =
    CREATE_SPELL(
    HolyBeamDefaultConfig,
    {
        type = COMBAT_HOLYDAMAGE,
        name = "HolyBeamHoly",
        words = "###HolyBeamHoly"
    }
)

HolyBeamHoly:register()
