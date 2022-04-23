function CustomMonsterSpell:withUltimateDetonationBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDetonation():withUltimateBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withBloodBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlood():withBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withIceBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withIce():withBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withDeathBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDeath():withBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withSmokeBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withSmoke():withBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withPoisonBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withPoison():withBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withGreenStarsBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withGreenStars():withBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withUltimateCurseBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withCurse():withUltimateBall():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withGreatDeathBall(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDeath():withGreatBall():setDamageRange(minDamage or 0, maxDamage or 0)
end
