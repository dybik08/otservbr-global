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

function MonsterLoot:withDragonScaleMail(chance, maxCount)
    return MonsterLoot:new():setLoot("Dragon Scale Mail", chance, maxCount)
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

function MonsterLoot:withMagicPlateArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Magic Plate armor", chance, maxCount)
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

function MonsterLoot:withBrassArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Brass armor", chance, maxCount)
end

function MonsterLoot:withChainArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Chain armor", chance, maxCount)
end

function MonsterLoot:withScaleArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Scale armor", chance, maxCount)
end

function MonsterLoot:withCrystallineArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Crystalline armor", chance, maxCount)
end

function MonsterLoot:withZaoanArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Zaoan armor", chance, maxCount)
end

function MonsterLoot:withPaladinArmor(chance, maxCount)
    return MonsterLoot:new():setLoot("Paladin armor", chance, maxCount)
end

function MonsterLoot:withBlueRobe(chance, maxCount)
    return MonsterLoot:new():setLoot("Blue robe", chance, maxCount)
end

function MonsterLoot:withZaoanRobe(chance, maxCount)
    return MonsterLoot:new():setLoot("Zaoan robe", chance, maxCount)
end

function MonsterLoot:withSpellweaversRobe(chance, maxCount)
    return MonsterLoot:new():setLoot("Spellweaver's robe", chance, maxCount)
end

function MonsterLoot:withGlacierRobe(chance, maxCount)
    return MonsterLoot:new():setLoot("Glacier robe", chance, maxCount)
end

function MonsterLoot:withBuckle(chance, maxCount)
    return MonsterLoot:new():setLoot("Buckle", chance, maxCount)
end

function MonsterLoot:withTerraMantle(chance, maxCount)
    return MonsterLoot:new():setLoot("Terra Mantle", chance, maxCount)
end

function MonsterLoot:withDivinePlate(chance, maxCount)
    return MonsterLoot:new():setLoot("Divine Plate", chance, maxCount)
end

function MonsterLoot:withSlightlyRustedArmor(chance)
    return MonsterLoot:new():setLootItem("slightly rusted armor"):setItemId(8896):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withRustedArmor(chance)
    return MonsterLoot:new():setLootItem("rusted armor"):setItemId(8896):setChance(chance):setMaxCount(maxCount or 1)
end
