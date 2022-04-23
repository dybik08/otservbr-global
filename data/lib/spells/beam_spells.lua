-------------------- Shorter Beams --------------------

function CustomMonsterSpell:withShorterIcyCrystalBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withIcyCrystal():withShorterBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withShorterBlueElectricBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueElectric():withShorterBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withShorterRedStarsBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withRedStars():withShorterBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

-------------------- Short Beams --------------------

-------------------- Beams --------------------

function CustomMonsterSpell:withDeathBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDeath():withBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withBlueElectricBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueElectric():withBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

-------------------- Longer Beams --------------------

function CustomMonsterSpell:withLongerDizzyBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDizzy():withLongerBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withLongerVioletElectricBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withVioletElectric():withLongerBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withLongerBlueElectricBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueElectric():withLongerBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

-------------------- Greater Beams --------------------

function CustomMonsterSpell:withGreaterYellowElectricBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withYellowElectric():withGreaterBeam():setDamageRange(
        minDamage or 0,
        maxDamage or 0
    )
end

function CustomMonsterSpell:withGreaterBloodBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlood():withGreaterBeam():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withGreaterVioletElectricBeam(minDamage, maxDamage)
    return CustomMonsterSpell:new():withVioletElectric():withGreaterBeam():setDamageRange(
        minDamage or 0,
        maxDamage or 0
    )
end

-------------------- END  --------------------
