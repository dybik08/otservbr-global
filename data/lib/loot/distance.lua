function MonsterLoot:withCrossbow(chance, maxCount)
    return MonsterLoot:new():setLoot("crossbow", chance, maxCount)
end

function MonsterLoot:withOrnateCrossbow(chance, maxCount)
    return MonsterLoot:new():setLoot("Ornate Crossbow", chance, maxCount)
end

function MonsterLoot:withCrystalCrossbow(chance, maxCount)
    return MonsterLoot:new():setLoot("Crystal Crossbow", chance, maxCount)
end

function MonsterLoot:withBow(chance, maxCount)
    return MonsterLoot:new():setLoot("Bow", chance, maxCount)
end
