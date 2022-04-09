function MonsterLoot:withAxeRing(chance)
    return MonsterLoot:new():setLootItem("axe ring"):setItemId(3092):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDeathRing(chance)
    return MonsterLoot:new():setLootItem("Death ring"):setItemId(6300):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withClubRing(chance)
    return MonsterLoot:new():setLootItem("club ring"):setItemId(3093):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withMightRing(chance)
    return MonsterLoot:new():setLootItem("Might ring"):setItemId(3048):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withStealthRing(chance)
    return MonsterLoot:new():setLootItem("Stealth ring"):setItemId(3049):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSwordRing(chance)
    return MonsterLoot:new():setLootItem("Sword ring"):setItemId(3091):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCrystalRing(chance)
    return MonsterLoot:new():setLootItem("crystal ring"):setItemId(3007):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withTimeRing(chance)
    return MonsterLoot:new():setLootItem("Time ring"):setItemId(3090):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRingofHealing(chance)
    return MonsterLoot:new():setLootItem("ring of healing"):setItemId(1320):setChance(chance):setMaxCount(maxCount or 1)
end
