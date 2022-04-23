function CustomMonsterSpell:withEnergyStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withHeavyMagicMissileRune():setDamageRange(minDamage or 0, maxDamage or 0):withTarget(

    )
end

function CustomMonsterSpell:withDeathStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withSuddenDeathRune():setDamageRange(minDamage or 0, maxDamage or 0):withTarget()
end

function CustomMonsterSpell:withIceStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withIcicleRune():setDamageRange(minDamage or 0, maxDamage or 0):withTarget()
end

function CustomMonsterSpell:withBlueElectricStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueElectric():withStrike():withHeavyMagicMissileRune():setDamageRange(
        minDamage or 0,
        maxDamage or 0
    ):withTarget()
end

function CustomMonsterSpell:withFireStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withFireballRune():setDamageRange(minDamage or 0, maxDamage or 0):withTarget()
end

function CustomMonsterSpell:withEruptionStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withStrike():withEruption():withFireballRune():setDamageRange(
        minDamage or 0,
        maxDamage or 0
    ):withTarget()
end

function CustomMonsterSpell:withEnvenomStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEnvenom():withEruption():withFireballRune():setDamageRange(
        minDamage or 0,
        maxDamage or 0
    ):withTarget()
end

function CustomMonsterSpell:withBlueStarsStrike(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueStars():withStrike():setDamageRange(minDamage or 0, maxDamage or 0):withTarget(

    )
end
