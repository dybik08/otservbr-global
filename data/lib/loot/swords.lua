function MonsterLoot:withSerpentSword(chance, maxCount)
    return MonsterLoot:new():setLoot("Serpent Sword", chance, maxCount)
end

function MonsterLoot:withFireSword(chance, maxCount)
    return MonsterLoot:new():setLoot("Fire Sword", chance, maxCount)
end

function MonsterLoot:withSword(chance, maxCount)
    return MonsterLoot:new():setLoot("Sword", chance, maxCount)
end

function MonsterLoot:withCrystalSword(chance, maxCount)
    return MonsterLoot:new():setLoot("Crystal Sword", chance, maxCount)
end

function MonsterLoot:withRelicSword(chance, maxCount)
    return MonsterLoot:new():setLoot("Relic Sword", chance, maxCount)
end

function MonsterLoot:withAssassinDagger(chance, maxCount)
    return MonsterLoot:new():setLoot("assassin dagger", chance, maxCount)
end

function MonsterLoot:withScimitar(chance, maxCount)
    return MonsterLoot:new():setLoot("Scimitar", chance, maxCount):setItemId(3307)
end

function MonsterLoot:withTwoHandedSword(chance, maxCount)
    return MonsterLoot:new():setLoot("Two Handed Sword", chance, maxCount)
end
