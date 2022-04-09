function MonsterLoot:withWoodenSpellbook(chance, maxCount)
    return MonsterLoot:new():setLoot("wooden spellbook", chance, maxCount)
end

function MonsterLoot:withSpellbookOfMindControl(chance, maxCount)
    return MonsterLoot:new():setLoot("spellbook of mind control", chance, maxCount)
end

function MonsterLoot:withMastermindShield(chance, maxCount)
    return MonsterLoot:new():setLoot("mastermind shield", chance, maxCount)
end

function MonsterLoot:withDarkShield(chance, maxCount)
    return MonsterLoot:new():setLoot("Dark shield", chance, maxCount)
end

function MonsterLoot:withVampireShield(chance, maxCount)
    return MonsterLoot:new():setLoot("Vampire shield", chance, maxCount)
end

function MonsterLoot:withCrownShield(chance, maxCount)
    return MonsterLoot:new():setLoot("Crown shield", chance, maxCount)
end

function MonsterLoot:withDragonShield(chance, maxCount)
    return MonsterLoot:new():setLoot("Dragon shield", chance, maxCount)
end
