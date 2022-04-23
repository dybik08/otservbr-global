function CustomMonsterSpell:withGreatExplosionConeWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withExplosion():withGreatConeWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withShortBlueElectricConeWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueElectric():withShortConeWave():setDamageRange(
        minDamage or 0,
        maxDamage or 0
    )
end
