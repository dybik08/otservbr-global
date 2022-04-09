function MonsterLoot:withWarHammer(chance, maxCount)
    return MonsterLoot:new():setLoot("war Hammer", chance, maxCount)
end

function MonsterLoot:withSpikedSquelcher(chance, maxCount)
    return MonsterLoot:new():setLoot("Spiked Squelcher", chance, maxCount)
end

function MonsterLoot:withHeavyMace(chance, maxCount)
    return MonsterLoot:new():setLoot("Heavy Mace", chance, maxCount)
end

function MonsterLoot:withMace(chance, maxCount)
    return MonsterLoot:new():setLoot("Mace", chance, maxCount)
end

function MonsterLoot:withMammothWhopper(chance, maxCount)
    return MonsterLoot:new():setLoot("Mammoth Whopper", chance, maxCount)
end
