function MonsterLoot:withMeat(chance, maxCount)
    return MonsterLoot:new():setLootItem("Meat"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withHam(chance, maxCount)
    return MonsterLoot:new():setLootItem("ham"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withFrozenLightning(chance, maxCount)
    return MonsterLoot:new():setLootItem("Frozen Lightning"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withOddOrgan(chance, maxCount)
    return MonsterLoot:new():setLootItem("Odd Organ"):setChance(chance):setMaxCount(maxCount or 1)
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

function MonsterLoot:withRedMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Red Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withBrownMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Brown Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withFireMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Fire Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withEnergyBar(chance, maxCount)
    return MonsterLoot:new():setLootItem("Energy Bar"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withEnergyDrink(chance, maxCount)
    return MonsterLoot:new():setLootItem("Energy Drink"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDarkMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Dark Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreenMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Green Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withWoodMushroom(chance, maxCount)
    return MonsterLoot:new():setLootItem("Wood Mushroom"):setChance(chance):setMaxCount(maxCount or 1)
end
