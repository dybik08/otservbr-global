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

function MonsterLoot:withSpiderSilk(chance, maxCount)
    return MonsterLoot:new():setLootItem("Spider Silk"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withMoonlightCrystal(chance, maxCount)
    return MonsterLoot:new():setLootItem("moonlight crystal"):setItemId(22083):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withSoulOrb(chance, maxCount)
    return MonsterLoot:new():setLootItem("soul orb"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLuminousOrb(chance, maxCount)
    return MonsterLoot:new():setLootItem("Luminous orb"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withPelvisBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Pelvis Bone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withUnholyBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Unholy Bone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLifeCrystal(chance, maxCount)
    return MonsterLoot:new():setLootItem("Life Crystal"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGlowingRune(chance, maxCount)
    return MonsterLoot:new():setLootItem("Glowing Rune"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSilkenBookmark(chance, maxCount)
    return MonsterLoot:new():setLootItem("Silken Bookmark"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withBookPage(chance, maxCount)
    return MonsterLoot:new():setLootItem("Book Page"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withEnergyBall(chance, maxCount)
    return MonsterLoot:new():setLootItem("Energy Ball"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withFrostyHeart(chance, maxCount)
    return MonsterLoot:new():setLootItem("Frosty Heart"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withInkwell(chance, maxCount)
    return MonsterLoot:new():setLootItem("Inkwell"):setItemId(3509):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withQuill(chance, maxCount)
    return MonsterLoot:new():setLootItem("Quill"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSilverHandMirror(chance, maxCount)
    return MonsterLoot:new():setLootItem("SilverHandMirror"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCursedBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Cursed Bone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withEnsouledEssence(chance, maxCount)
    return MonsterLoot:new():setLootItem("Ensouled Essence"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDeathToll(chance, maxCount)
    return MonsterLoot:new():setLootItem("Death Toll"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLostSoul(chance, maxCount)
    return MonsterLoot:new():setLootItem("Lost Soul"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withIronOre(chance, maxCount)
    return MonsterLoot:new():setLootItem("Iron Ore"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withElvishTalisman(chance, maxCount)
    return MonsterLoot:new():setLootItem("Elvish Talisman"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withElvenAstralObserver(chance, maxCount)
    return MonsterLoot:new():setLootItem("Elven Astral Observer"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withMiraculum(chance, maxCount)
    return MonsterLoot:new():setLootItem("Miraculum"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDreamEssenceEgg(chance, maxCount)
    return MonsterLoot:new():setLootItem("Dream Essence Egg"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withIceFlower(chance, maxCount)
    return MonsterLoot:new():setLootItem("Ice Flower"):setItemId(30058):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSeeds(chance, maxCount)
    return MonsterLoot:new():setLootItem("Seeds"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withFieryHeart(chance, maxCount)
    return MonsterLoot:new():setLootItem("Fiery Heart"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withBlazingBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Blazing Bone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withHardenedBone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Hardened Bone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDemonDust(chance, maxCount)
    return MonsterLoot:new():setLootItem("Demon Dust"):setItemId(5906):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withShinyStone(chance, maxCount)
    return MonsterLoot:new():setLootItem("Shiny Stone"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withUndeadHeart(chance, maxCount)
    return MonsterLoot:new():setLootItem("Undead Heart"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCursedShoulderSpikes(chance, maxCount)
    return MonsterLoot:new():setLootItem("Cursed Shoulder Spikes"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLizardLeather(chance, maxCount)
    return MonsterLoot:new():setLootItem("Lizard Leather"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLizardScale(chance, maxCount)
    return MonsterLoot:new():setLootItem("Lizard Scale"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCorruptedFlag(chance, maxCount)
    return MonsterLoot:new():setLootItem("Corrupted Flag"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withScaleOfCorruption(chance, maxCount)
    return MonsterLoot:new():setLootItem("Scale Of Corruption"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSpikedIronBall(chance, maxCount)
    return MonsterLoot:new():setLootItem("Spiked Iron Ball"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withIceCube(chance, maxCount)
    return MonsterLoot:new():setLootItem("Ice Cube"):setItemId(7441):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withPieceOfDeadBrain(chance, maxCount)
    return MonsterLoot:new():setLootItem("Piece Of Dead Brain"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSlimeHeart(chance, maxCount)
    return MonsterLoot:new():setLootItem("Slime Heart"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withClusterOfSolace(chance, maxCount)
    return MonsterLoot:new():setLootItem("Cluster Of Solace"):setChance(chance):setMaxCount(maxCount or 1)
end
