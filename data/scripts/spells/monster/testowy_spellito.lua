local monsterHealing =
    CREATE_SPELL(
    {
        type = COMBAT_HEALING,
        effect = SPELL_ANIMATIONS.BLUE_STARS,
        name = "monsterHealing",
        words = "###510"
    }
)
monsterHealing:register()
