local ShortVioletElectricBeamManaDrain =
    CREATE_SPELL(
    concat(
        ShortVioletElectricBeamDefaultConfig,
        {
            type = COMBAT_MANADRAIN,
            name = "ShortVioletElectricBeamManaDrain",
            words = "###ShortVioletElectricBeamManaDrain"
        }
    )
)
ShortVioletElectricBeamManaDrain:register()

local RedStarsWaveManaDrain =
    CREATE_SPELL(
    RedStarsWaveDefaultConfig,
    {
        type = COMBAT_MANADRAIN,
        name = "RedStarsWaveManaDrain",
        words = "###RedStarsWaveManaDrain"
    }
)

RedStarsWaveManaDrain:register()
