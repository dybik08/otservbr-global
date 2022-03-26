local IceStrikeIceTarget =
    CREATE_SPELL(
    concat(
        IceStrikeDefaultConfig,
        {
            type = COMBAT_ICEDAMAGE,
            name = "IceStrikeIceTarget",
            words = "###IceStrikeIceTarget",
            needTarget = true
        }
    )
)
IceStrikeIceTarget:register()

local GreatIcyWindBeamIceFreezing =
    CREATE_SPELL(
    concat(
        GreatIcyWindBeamDefaultConfig,
        {
            type = COMBAT_ICEDAMAGE,
            name = "GreatIcyWindBeamIceFreezing",
            words = "###GreatIcyWindBeamIceFreezing",
            condition = {
                type = CONDITION_FREEZING,
                interval = 2000,
                tickDamage = 8,
                ticks = 20
            }
        }
    )
)
GreatIcyWindBeamIceFreezing:register()

local IceBoxIceTarget =
    CREATE_SPELL(
    concat(
        IceBoxDefaultConfig,
        {
            type = COMBAT_ICEDAMAGE,
            name = "IceBoxIceTarget",
            words = "###IceBoxIceTarget",
            needTarget = true
        }
    )
)
IceBoxIceTarget:register()

local IcyFlakeConeWaveIce =
    CREATE_SPELL(
    concat(
        IcyFlakeConeWaveDefaultConfig,
        {
            type = COMBAT_ICEDAMAGE,
            name = "IcyFlakeConeWaveIce",
            words = "###IcyFlakeConeWaveIce",
            needDirection = true
        }
    )
)
IcyFlakeConeWaveIce:register()

local IcyFlakeStrikeIceTarget =
    CREATE_SPELL(
    concat(
        IcyFlakeStrikeDefaultConfig,
        {
            name = "IcyFlakeStrikeIceTarget",
            words = "###IcyFlakeStrikeIceTarget",
            needTarget = true,
            type = COMBAT_ICEDAMAGE
        }
    )
)
IcyFlakeStrikeIceTarget:register()

local GreatWaterWaveIce =
    CREATE_SPELL(
    concat(
        GreatWaterWaveDefaultConfig,
        {
            type = COMBAT_ICEDAMAGE,
            name = "GreatWaterWaveIce",
            words = "###GreatWaterWaveIce",
            needDirection = true
        }
    )
)
GreatWaterWaveIce:register()
