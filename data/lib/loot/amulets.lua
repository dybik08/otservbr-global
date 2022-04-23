function MonsterLoot:withDemonboneAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("demonbone amulet", chance, maxCount)
end

function MonsterLoot:withSilverAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("silver amulet", chance, maxCount)
end

function MonsterLoot:withBronzeAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Bronze amulet", chance, maxCount)
end

function MonsterLoot:withElvenAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Elven amulet", chance, maxCount)
end

function MonsterLoot:withTerraAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("terra amulet", chance, maxCount)
end

function MonsterLoot:withPlatinumAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Platinum amulet", chance, maxCount)
end

function MonsterLoot:withStoneSkinAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Stone Skin amulet", chance, maxCount)
end

function MonsterLoot:withSacredTreeAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Sacred Tree amulet", chance, maxCount)
end

function MonsterLoot:withGloothAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Glooth amulet", chance, maxCount)
end

function MonsterLoot:withGlacierAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Glacier amulet", chance, maxCount)
end

function MonsterLoot:withShockwaveAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Shockwave amulet", chance, maxCount)
end

function MonsterLoot:withLeviathansAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("Leviathan's amulet", chance, maxCount)
end

function MonsterLoot:withSacredTreeAmulet(chance, maxCount)
    return MonsterLoot:new():setLoot("sacred tree amulet", chance, maxCount)
end

function MonsterLoot:withLightningPendant(chance, maxCount)
    return MonsterLoot:new():setLoot("Lightning Pendant", chance, maxCount)
end

function MonsterLoot:withRubyNecklace(chance, maxCount)
    return MonsterLoot:new():setLootItem("ruby necklace"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCrystalNecklace(chance, maxCount)
    return MonsterLoot:new():setLootItem("Crystal necklace"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withNecklaceOfTheDeep(chance, maxCount)
    return MonsterLoot:new():setLootItem("necklace Of The Deep"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDragonNecklace(chance, maxCount)
    return MonsterLoot:new():setLootItem("Dragon necklace"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGarlicNecklace(chance, maxCount)
    return MonsterLoot:new():setLootItem("Garlic necklace"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withStrangeTalisman(chance, maxCount)
    return MonsterLoot:new():setLootItem("Strange Talisman"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withProtectionAmulet(chance, maxCount)
    return MonsterLoot:new():setLootItem("Protection Amulet"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withMagmaAmulet(chance, maxCount)
    return MonsterLoot:new():setLootItem("Magma Amulet"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withAmuletOfLoss(chance, maxCount)
    return MonsterLoot:new():setLootItem("Amulet Of Loss"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCollarOfRedPlasma(chance, maxCount)
    return MonsterLoot:new():setLootItem("Collar Of Red Plasma"):setItemId(23544):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withCollarOfGreenPlasma(chance, maxCount)
    return MonsterLoot:new():setLootItem("Collar Of Green Plasma"):setItemId(23543):setChance(chance):setMaxCount(
        maxCount or 1
    )
end

function MonsterLoot:withCollarOfBluePlasma(chance, maxCount)
    return MonsterLoot:new():setLootItem("Collar Of Blue Plasma"):setItemId(23542):setChance(chance):setMaxCount(
        maxCount or 1
    )
end
