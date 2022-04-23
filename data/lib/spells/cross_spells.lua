function CustomMonsterSpell:withEruptionCross(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEruption():withCross():setDamageRange(minDamage or 0, maxDamage or 0):withTarget(

    )
end

function CustomMonsterSpell:withFlameCross(minDamage, maxDamage)
    return CustomMonsterSpell:new():withFlame():withCross():setDamageRange(minDamage or 0, maxDamage or 0):withTarget()
end
