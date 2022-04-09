function MonsterLoot:withGoannaMeat(chance, maxCount)
    return MonsterLoot:new():setLoot("goanna meat", chance, maxCount)
end

function MonsterLoot:withGoannaClaw(chance, maxCount)
    return MonsterLoot:new():setLoot("goanna claw", chance, maxCount)
end

function MonsterLoot:withBlueGoannaScale(chance, maxCount)
    return MonsterLoot:new():setLoot("Blue Goanna Scale", chance, maxCount)
end

function MonsterLoot:withRedGoannaScale(chance, maxCount)
    return MonsterLoot:new():setLoot("Red Goanna Scale", chance, maxCount)
end

function MonsterLoot:withScaredFrog(chance, maxCount)
    return MonsterLoot:new():setLoot("Scared frog", chance, maxCount)
end

function MonsterLoot:withRedPieceOfCloth(chance, maxCount)
    return MonsterLoot:new():setLoot("red piece of cloth", chance, maxCount)
end

function MonsterLoot:withGreenPieceOfCloth(chance, maxCount)
    return MonsterLoot:new():setLoot("Green piece of cloth", chance, maxCount)
end

function MonsterLoot:withBluePieceOfCloth(chance, maxCount)
    return MonsterLoot:new():setLoot("Blue piece of cloth", chance, maxCount)
end

function MonsterLoot:withYellowPieceOfCloth(chance, maxCount)
    return MonsterLoot:new():setLoot("Yellow piece of cloth", chance, maxCount)
end

function MonsterLoot:withWhitePieceOfCloth(chance, maxCount)
    return MonsterLoot:new():setLoot("White piece of cloth", chance, maxCount)
end

function MonsterLoot:withBrownPieceOfCloth(chance, maxCount)
    return MonsterLoot:new():setLoot("Brown piece of cloth", chance, maxCount)
end

function MonsterLoot:withDemonicEssence(chance, maxCount)
    return MonsterLoot:new():setLootItem("demonic essence"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withMoonlightCrystal(chance, maxCount)
    return MonsterLoot:new():setLootItem("moonlight crystal"):setItemId(22083):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withSoulOrb(chance, maxCount)
    return MonsterLoot:new():setLootItem("soul orb"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withPelvisBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Pelvis Bone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withUnholyBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Unholy Bone"):setChance(chance):setMaxCount(maxCount or 1)
end
