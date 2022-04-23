function CustomMonsterSpell:withEruptionCircle(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEruption():withCircle():setDamageRange(minDamage or 0, maxDamage or 0):withTarget(

    )
end

function CustomMonsterSpell:withFlameCircle(minDamage, maxDamage)
    return CustomMonsterSpell:new():withFlame():withCircle():setDamageRange(minDamage or 0, maxDamage or 0):withTarget()
end
