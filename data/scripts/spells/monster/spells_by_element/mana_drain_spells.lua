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
