function MonsterLoot:withLightningRobe(chance, maxCount)
    return MonsterLoot:new():setLoot("Lightning Robe", chance, maxCount)
end

function MonsterLoot:withFocusCape(chance, maxCount)
    return MonsterLoot:new():setLoot("focus cape", chance, maxCount)
end

function MonsterLoot:withBeltedCape(chance, maxCount)
    return MonsterLoot:new():setLoot("Belted cape", chance, maxCount)
end

function MonsterLoot:withMagmaCoat(chance, maxCount)
    return MonsterLoot:new():setLoot("magma coat", chance, maxCount)
end

function MonsterLoot:withPlateArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Plate Armor", chance, maxCount)
end

function MonsterLoot:withKnightArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Knight Armor", chance, maxCount)
end

function MonsterLoot:withGoldenArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("golden armor", chance, maxCount)
end

function MonsterLoot:withDarkArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Dark armor", chance, maxCount)
end

function MonsterLoot:withPlateArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Plate armor", chance, maxCount)
end

function MonsterLoot:withCrownArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Crown armor", chance, maxCount)
end

function MonsterLoot:withSkullcrackerArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Skullcracker armor", chance, maxCount)
end

function MonsterLoot:withFurArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("fur armor", chance, maxCount)
end

function MonsterLoot:withBlueRobe(chance, maxCount)
    return MonsterLoot:new():setLoot("Blue robe", chance, maxCount)
end

function MonsterLoot:withSlightlyRustedArmor(chance)
    return MonsterLoot:new():setLootItem("slightly rusted armor"):setItemId(8896):setChance(chance):setMaxCount(
        maxCount or 1
    )
end
