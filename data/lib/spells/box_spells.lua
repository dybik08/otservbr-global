function CustomMonsterSpell:withEnvenomBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEnvenom():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withDeathBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withDeath():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withTerraBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withTerra():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withEnergyBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withEnergy():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withIcyFlakeBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withIcyFlake():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withIcyWindBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withIcyWind():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end

function CustomMonsterSpell:withBlueElectricBox(minDamage, maxDamage)
    return CustomMonsterSpell:new():withBlueElectric():withBox():setDamageRange(minDamage or 0, maxDamage or 0)
end
