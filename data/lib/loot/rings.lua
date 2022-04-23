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

function MonsterLoot:withGoldRing(chance)
    return MonsterLoot:new():setLootItem("Gold ring"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCrystalRing(chance)
    return MonsterLoot:new():setLootItem("crystal ring"):setItemId(3007):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withTimeRing(chance)
    return MonsterLoot:new():setLootItem("Time ring"):setItemId(3090):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withEnergyRing(chance)
    return MonsterLoot:new():setLootItem("Energy ring"):setItemId(3051):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLifeRing(chance)
    return MonsterLoot:new():setLootItem("Life ring"):setItemId(3052):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDwarvenRing(chance)
    return MonsterLoot:new():setLootItem("Dwarven ring"):setItemId(3097):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRingofHealing(chance)
    return MonsterLoot:new():setLootItem("ring of healing"):setItemId(1320):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRingofRedPlasma(chance)
    return MonsterLoot:new():setLootItem("ring of Red Plasma"):setItemId(23533):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withRingofGreenPlasma(chance)
    return MonsterLoot:new():setLootItem("ring of Green Plasma"):setItemId(23531):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withRingofBluePlasma(chance)
    return MonsterLoot:new():setLootItem("ring of Blue Plasma"):setItemId(23529):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withRingOfTheSky(chance)
    return MonsterLoot:new():setLootItem("ring of the sky"):setChance(chance):setMaxCount(maxCount or 1)
end
