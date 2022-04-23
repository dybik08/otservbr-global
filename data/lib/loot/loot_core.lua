MonsterLoot = {}

function MonsterLoot:new(o)
    o =
        o or
        {
            maxCount = 1
        } -- create object if user does not provide one
    setmetatable(o, self)
    self.__index = self
    return o
end

function MonsterLoot:setLoot(name, chance, maxCount)
    self.name = name
    self.chance = chance * 1000
    self.maxCount = maxCount or 1

    return self
end

function MonsterLoot:setLootItem(name)
    self.name = name

    return self
end

function MonsterLoot:setChance(chance) -- in %
    self.chance = chance * 1000

    return self
end

function MonsterLoot:setMaxCount(maxCount)
    self.maxCount = maxCount

    return self
end

function MonsterLoot:setItemId(id)
    self.id = id

    return self
end

function MonsterLoot:withTrap(chance, maxCount)
    return MonsterLoot:new():setLoot("closed trap", chance, maxCount):setItemId(31925)
end

function MonsterLoot:withBone(chance, maxCount)
    return MonsterLoot:new():setLoot("bone", chance, maxCount):setItemId(1047)
end

function MonsterLoot:withBlankRune(chance, maxCount)
    return MonsterLoot:new():setLoot("Blank Rune", chance, maxCount)
end

-- MonsterLoot library - load ammunition
dofile("data/lib/loot/ammunition.lua")

-- MonsterLoot library - load amulets
dofile("data/lib/loot/amulets.lua")

-- MonsterLoot library - load armors
dofile("data/lib/loot/armors.lua")

-- MonsterLoot library - load axes
dofile("data/lib/loot/axes.lua")

-- MonsterLoot library - load boots
dofile("data/lib/loot/boots.lua")

-- MonsterLoot library - load clubs
dofile("data/lib/loot/clubs.lua")

-- MonsterLoot library - load creature products
dofile("data/lib/loot/creature_products.lua")

-- MonsterLoot library - load distance
dofile("data/lib/loot/distance.lua")

-- MonsterLoot library - load food
dofile("data/lib/loot/food.lua")

-- MonsterLoot library - load helmets
dofile("data/lib/loot/helmets.lua")

-- MonsterLoot library - load legs
dofile("data/lib/loot/legs.lua")

-- MonsterLoot library - load quivers
dofile("data/lib/loot/quivers.lua")

-- MonsterLoot library - load potions
dofile("data/lib/loot/potions.lua")

-- MonsterLoot library - load rings
dofile("data/lib/loot/rings.lua")

-- MonsterLoot library - load shields
dofile("data/lib/loot/shields.lua")

-- MonsterLoot library - load swords
dofile("data/lib/loot/swords.lua")

-- MonsterLoot library - load trinkets
dofile("data/lib/loot/trinkets.lua")

-- MonsterLoot library - load valuables
dofile("data/lib/loot/valuables.lua")

-- MonsterLoot library - load wands and rods
dofile("data/lib/loot/wands_and_rods.lua")
