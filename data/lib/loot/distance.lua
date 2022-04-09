function MonsterLoot:withCrossbow(chance, maxCount)
    return MonsterLoot:new():setLoot("crossbow", chance, maxCount)
end

function MonsterLoot:withBow(chance, maxCount)
    return MonsterLoot:new():setLoot("Bow", chance, maxCount)
end
