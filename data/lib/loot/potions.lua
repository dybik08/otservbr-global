function MonsterLoot:withFlaskOfDemonicBlood(chance, maxCount)
    return MonsterLoot:new():setLootItem("flask of demonic blood"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreatManaPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("great mana potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreatSpiritPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("great Spirit potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withStrongManaPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("Strong mana potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreatHealthPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("great health potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withStrongHealthPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("Strong health potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withUltimateHealthPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("Ultimate health potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withUltimateManaPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("Ultimate Mana potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withUltimateSpiritPotion(chance, maxCount)
    return MonsterLoot:new():setLootItem("Ultimate Spirit potion"):setChance(chance):setMaxCount(maxCount or 1)
end
