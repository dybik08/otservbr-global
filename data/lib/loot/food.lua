function MonsterLoot:withMeat(chance, maxCount)
    return MonsterLoot:new():setLootItem("Meat"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withHam(chance, maxCount)
    return MonsterLoot:new():setLootItem("ham"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDragonHam(chance, maxCount)
    return MonsterLoot:new():setLootItem("Dragon ham"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withFish(chance, maxCount)
    return MonsterLoot:new():setLootItem("fish"):setChance(chance):setMaxCount(maxCount or 1):setItemId(3125)
end

function MonsterLoot:withWhiteMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("White Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withBrownMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Brown Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreenMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Green Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withWoodMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Wood Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end
