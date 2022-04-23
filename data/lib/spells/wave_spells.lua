function CustomMonsterSpell:withRedStarsWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withRedStars():withWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withGreatRedStarsWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withRedStars():withGreatWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withDetonationWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDetonation():withWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withTerraWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withTerra():withWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withFireWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withFire():withWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withEruptionWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEruption():withWave():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withGreatDeathWave(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDeath():withGreatWave():setDamageRange(minDamage or 0, maxDamage or 0)
end
