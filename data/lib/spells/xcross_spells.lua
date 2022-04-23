function CustomMonsterSpell:withEruptionXCross(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEruption():withXCross():setDamageRange(minDamage or 0, maxDamage or 0):withTarget(

    )
end

function CustomMonsterSpell:withFlameXCross(minDamage, maxDamage)
    return CustomMonsterSpell:new():withFlame():withXCross():setDamageRange(minDamage or 0, maxDamage or 0):withTarget()
end
