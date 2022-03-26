local ShorterEnergyTWaveEnergy =
    CREATE_SPELL(
    concat(
        ShorterEnergyTWaveDefaultConfig,
        {
            type = COMBAT_ENERGYDAMAGE,
            name = "ShorterEnergyTWaveEnergy",
            words = "###ShorterEnergyTWaveEnergy"
        }
    )
)
ShorterEnergyTWaveEnergy:register()

local SparkyBallEnergySelf =
    CREATE_SPELL(
    concat(
        SparkyBallDefaultConfig,
        {
            type = COMBAT_ENERGYDAMAGE,
            name = "SparkyBallEnergySelf",
            words = "###SparkyBallEnergySelf"
        }
    )
)
SparkyBallEnergySelf:register()

local EnergyStrikeEnergyTarget =
    CREATE_SPELL(
    concat(
        EnergyStrikeDefaultConfig,
        {
            type = COMBAT_ENERGYDAMAGE,
            name = "EnergyStrikeEnergyTarget",
            words = "###EnergyStrikeEnergyTarget",
            needTarget = true
        }
    )
)
EnergyStrikeEnergyTarget:register()

local EnergyBallEnergySelf =
    CREATE_SPELL(
    concat(
        EnergyBallDefaultConfig,
        {
            type = COMBAT_ENERGYDAMAGE,
            name = "EnergyBallEnergySelf",
            words = "###EnergyBallEnergySelf"
        }
    )
)

EnergyBallEnergySelf:register()
