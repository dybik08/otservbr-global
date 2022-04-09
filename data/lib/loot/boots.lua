function MonsterLoot:withOrientalShoes(chance, maxCount)
    return MonsterLoot:new():setLoot("oriental shoes", chance, maxCount)
end

function MonsterLoot:withMagmaBoots(chance, maxCount)
    return MonsterLoot:new():setLoot("magma Boots", chance, maxCount)
end

function MonsterLoot:withLightningBoots(chance, maxCount)
    return MonsterLoot:new():setLoot("Lightning Boots", chance, maxCount)
end

function MonsterLoot:withTerraBoots(chance, maxCount)
    return MonsterLoot:new():setLoot("Terra Boots", chance, maxCount)
end
