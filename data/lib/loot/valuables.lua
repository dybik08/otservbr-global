function MonsterLoot:withGoldCoins(chance, maxCount)
    return MonsterLoot:new():setLootItem("gold coin"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCrystalCoins(chance, maxCount)
    return MonsterLoot:new():setLootItem("Crystal coin"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withPlatinumCoins(chance, maxCount)
    return MonsterLoot:new():setLootItem("platinum coin"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRedGem(chance, maxCount)
    return MonsterLoot:new():setLootItem("red gem"):setItemId(3039):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withOnyxChip(chance, maxCount)
    return MonsterLoot:new():setLootItem("onyx chip"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEmerald(chance, maxCount)
    return MonsterLoot:new():setLootItem("small emerald"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedEmerald(chance, maxCount)
    return MonsterLoot:new():setLootItem("small Enchanted emerald"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedRuby(chance, maxCount)
    return MonsterLoot:new():setLootItem("small Enchanted Ruby"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedSapphire(chance, maxCount)
    return MonsterLoot:new():setLootItem("small Enchanted Sapphire"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedAmethyst(chance, maxCount)
    return MonsterLoot:new():setLootItem("small Enchanted Amethyst"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallRuby(chance, maxCount)
    return MonsterLoot:new():setLootItem("small ruby"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallAmethyst(chance, maxCount)
    return MonsterLoot:new():setLootItem("small amethyst"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallTopaz(chance, maxCount)
    return MonsterLoot:new():setLootItem("small topaz"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallDiamond(chance, maxCount)
    return MonsterLoot:new():setLoot("small diamond", chance, maxCount)
end

function MonsterLoot:withSmallSapphire(chance, maxCount)
    return MonsterLoot:new():setLoot("small sapphire", chance, maxCount)
end

function MonsterLoot:withGoldIngot(chance, maxCount)
    return MonsterLoot:new():setLoot("gold ingot", chance, maxCount)
end

function MonsterLoot:withGreenGem(chance, maxCount)
    return MonsterLoot:new():setLoot("green gem", chance, maxCount)
end

function MonsterLoot:withYellowGem(chance, maxCount)
    return MonsterLoot:new():setLoot("yellow gem", chance, maxCount)
end

function MonsterLoot:withBlueGem(chance, maxCount)
    return MonsterLoot:new():setLoot("Blue gem", chance, maxCount)
end

function MonsterLoot:withVioletGem(chance, maxCount)
    return MonsterLoot:new():setLoot("violet gem", chance, maxCount)
end

function MonsterLoot:withRainbowQuartz(chance, maxCount)
    return MonsterLoot:new():setLoot("rainbow quartz", chance, maxCount)
end

function MonsterLoot:withBlueCrystalShard(chance, maxCount)
    return MonsterLoot:new():setLoot("blue crystal shard", chance, maxCount)
end

function MonsterLoot:withGreenCrystalShard(chance, maxCount)
    return MonsterLoot:new():setLoot("Green crystal shard", chance, maxCount)
end

function MonsterLoot:withVioletCrystalShard(chance, maxCount)
    return MonsterLoot:new():setLoot("Violet crystal shard", chance, maxCount)
end

function MonsterLoot:withGreenCrystalFragment(chance, maxCount)
    return MonsterLoot:new():setLoot("green crystal fragment", chance, maxCount)
end

function MonsterLoot:withPrismaticQuartz(chance, maxCount)
    return MonsterLoot:new():setLoot("prismatic quartz", chance, maxCount)
end

function MonsterLoot:withBlueCrystalSplinter(chance, maxCount)
    return MonsterLoot:new():setLoot("Blue Crystal Splinter", chance, maxCount)
end

function MonsterLoot:withGreenCrystalSplinter(chance, maxCount)
    return MonsterLoot:new():setLoot("green Crystal Splinter", chance, maxCount)
end

function MonsterLoot:withEmeraldBangle(chance, maxCount)
    return MonsterLoot:new():setLoot("Emerald Bangle", chance, maxCount)
end

function MonsterLoot:withOpal(chance, maxCount)
    return MonsterLoot:new():setLoot("opal", chance, maxCount)
end

function MonsterLoot:withWhitePearl(chance, maxCount)
    return MonsterLoot:new():setLoot("white pearl", chance, maxCount)
end

function MonsterLoot:withBlackPearl(chance, maxCount)
    return MonsterLoot:new():setLoot("Black pearl", chance, maxCount)
end

function MonsterLoot:withGemmedFigurine(chance, maxCount)
    return MonsterLoot:new():setLoot("gemmed figurine", chance, maxCount)
end

function MonsterLoot:withSilverBrooch(chance, maxCount)
    return MonsterLoot:new():setLoot("silver brooch", chance, maxCount)
end

function MonsterLoot:withGiantShimmeringPearl(chance, maxCount)
    local pearlId = 281
    local chance = math.random(2)
    if chance == 2 then
        pearlId = 282
    end
    return MonsterLoot:new():setLoot("giant shimmering pearl", chance, maxCount):setItemId(pearlId)
end
