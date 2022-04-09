function MonsterLoot:withKnightLegs(chance, maxCount)
    return MonsterLoot:new():setLoot("Knight Legs", chance, maxCount)
end

function MonsterLoot:withMagmaLegs(chance, maxCount)
    return MonsterLoot:new():setLoot("magma Legs", chance, maxCount)
end

function MonsterLoot:withgoldenLegs(chance, maxCount)
    return MonsterLoot:new():setLoot("golden Legs", chance, maxCount)
end

function MonsterLoot:withLightningLegs(chance, maxCount)
    return MonsterLoot:new():setLoot("Lightning Legs", chance, maxCount)
end

function MonsterLoot:withTerraLegs(chance, maxCount)
    return MonsterLoot:new():setLoot("Terra Legs", chance, maxCount)
end

function MonsterLoot:withPlateLegs(chance, maxCount)
    return MonsterLoot:new():setLoot("Plate Legs", chance, maxCount)
end
