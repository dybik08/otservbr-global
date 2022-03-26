local GreaterEnvenomBallLifeDrainSelf =
    CREATE_SPELL(
    concat(
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

local BlackSteamWaveLifeDrain =
    CREATE_SPELL(
    concat(
        BlackSteamWaveDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "BlackSteamWaveLifeDrain",
            words = "###BlackSteamWaveLifeDrain",
            needDirection = true
        }
    )
)
BlackSteamWaveLifeDrain:register()

local GreaterBlueStarsBallLifeDrainSelf =
    CREATE_SPELL(
    concat(
        GreaterBlueStarsBallDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "GreaterBlueStarsBallLifeDrainSelf",
            words = "###GreaterBlueStarsBallLifeDrainSelf"
        }
    )
)
GreaterBlueStarsBallLifeDrainSelf:register()

local TinyGroundshakerTWaveLifeDrain =
    CREATE_SPELL(
    concat(
        TinyGroundshakerTWaveDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "TinyGroundshakerTWaveLifeDrain",
            words = "###TinyGroundshakerTWaveLifeDrain"
        }
    )
)
TinyGroundshakerTWaveLifeDrain:register()

local RedStarsStrikeLifeDrainTarget =
    CREATE_SPELL(
    concat(
        RedStarsStrikeDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "RedStarsStrikeLifeDrainTarget",
            words = "###RedStarsStrikeLifeDrainTarget",
            needTarget = true
        }
    )
)
RedStarsStrikeLifeDrainTarget:register()

local TerraStrikeLifeDrainTarget =
    CREATE_SPELL(
    concat(
        TerraStrikeDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "TerraStrikeLifeDrainTarget",
            words = "###TerraStrikeLifeDrainTarget",
            needTarget = true
        }
    )
)
TerraStrikeLifeDrainTarget:register()

local MusicalNotesBeamLifeDrain =
    CREATE_SPELL(
    concat(
        MusicalNotesBeamDefaultConfig,
        {
            type = COMBAT_LIFEDRAIN,
            name = "MusicalNotesBeamLifeDrain",
            words = "###MusicalNotesBeamLifeDrain",
            needDirection = true
        }
    )
)
MusicalNotesBeamLifeDrain:register()
