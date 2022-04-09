function MonsterLoot:withEnvenomedArrow(chance, maxCount)
    return MonsterLoot:new():setLoot("Envenomed Arrow", chance, maxCount)
end

function MonsterLoot:withOnyxArrow(chance, maxCount)
    return MonsterLoot:new():setLoot("Onyx Arrow", chance, maxCount)
end

function MonsterLoot:withArrow(chance, maxCount)
    return MonsterLoot:new():setLoot("Arrow", chance, maxCount)
end

function MonsterLoot:withAssassinStar(chance, maxCount)
    return MonsterLoot:new():setLootItem("assassin star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withThrowingStar(chance, maxCount)
    return MonsterLoot:new():setLootItem("Throwing star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLeafStar(chance, maxCount)
    return MonsterLoot:new():setLootItem("leaf star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRoyalStar(chance, maxCount)
    return MonsterLoot:new():setLootItem("Royal star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withHuntingSpear(chance, maxCount)
    return MonsterLoot:new():setLootItem("Hunting spear"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRoyalSpear(chance, maxCount)
    return MonsterLoot:new():setLootItem("Royal spear"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSpear(chance, maxCount)
    return MonsterLoot:new():setLootItem("spear"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withPowerBolt(chance, maxCount)
    return MonsterLoot:new():setLoot("Power Bolt", chance, maxCount)
end

function MonsterLoot:withBolt(chance, maxCount)
    return MonsterLoot:new():setLoot("Bolt", chance, maxCount)
end
