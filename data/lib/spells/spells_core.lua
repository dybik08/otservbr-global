--Pre-made areas by Wojtek
SPELL_AREAS = {
    STRIKE = {
        {0, 0, 0},
        {0, 3, 0},
        {0, 0, 0}
    },
    CROSS = {
        {0, 1, 0},
        {1, 3, 1},
        {0, 1, 0}
    },
    X_CROSS = {
        {1, 0, 1},
        {0, 3, 0},
        {1, 0, 1}
    },
    BOX = {
        {1, 1, 1},
        {1, 3, 1},
        {1, 1, 1}
    },
    BALL = {
        -- RADIUS 2
        {0, 1, 1, 1, 0},
        {1, 1, 1, 1, 1},
        {1, 1, 3, 1, 1},
        {1, 1, 1, 1, 1},
        {0, 1, 1, 1, 0}
    },
    GREAT_BALL = {
        -- RADIUS 3
        {0, 0, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 3, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0}
    },
    GREATER_BALL = {
        -- RADIUS 4
        {0, 0, 0, 1, 1, 1, 0, 0, 0},
        {0, 0, 1, 1, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 3, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 1, 1, 0, 0, 0}
    },
    ULTIMATE_BALL = {
        -- RADIUS 5
        {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
    },
    THE_GREATEST_BALL = {
        -- RADIUS 6
        {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
        {0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}
    },
    CIRCLE = {
        {0, 1, 1, 1, 0},
        {1, 0, 0, 0, 1},
        {1, 0, 3, 0, 1},
        {1, 0, 0, 0, 1},
        {0, 1, 1, 1, 0}
    },
    GREAT_CIRCLE = {
        {0, 1, 1, 1, 1, 1, 0},
        {1, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 3, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 1},
        {1, 0, 0, 0, 0, 0, 1},
        {0, 1, 1, 1, 1, 1, 0}
    },
    GREATER_CIRCLE = {}, -- TODO
    ULTIMATE_CIRCLE = {}, -- TODO
    THE_GREATEST_CIRCLE = {}, -- TODO
    TINY_BEAM = {
        {1},
        {3}
    },
    SHORTER_BEAM = {
        {1},
        {1},
        {3}
    },
    SHORT_BEAM = {
        {1},
        {1},
        {1},
        {3}
    },
    BEAM = {
        {1},
        {1},
        {1},
        {1},
        {3}
    },
    LONG_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {3}
    },
    LONGER_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {3}
    },
    GREAT_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {3}
    },
    GREATER_BEAM = {
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {1},
        {3}
    },
    SHORT_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONG_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONGER_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREAT_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREATER_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    ULTIMATE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    TINY_CONE_WAVE = {
        {1, 1, 1},
        {0, 3, 0}
    },
    SHORTER_CONE_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    SHORT_CONE_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    CONE_WAVE = {
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONG_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONGER_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREAT_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREATER_CONE_WAVE = {
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 1, 1, 1, 1, 1, 0},
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    TINY_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    SHORTER_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    SHORT_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONG_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    LONGER_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREAT_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    },
    GREATER_T_WAVE = {
        {0, 0, 1, 1, 1, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 1, 0, 0, 0},
        {0, 0, 0, 3, 0, 0, 0}
    }
}

-- BASED ON https://tibiopedia.pl/articles/21,Spis-atakow-potworow AND https://tibia.fandom.com/wiki/Effects
SPELL_ANIMATIONS = {
    ENVENOM = CONST_ME_HITBYPOISON,
    SMOKE = CONST_ME_POFF,
    DEATH = CONST_ME_MORTAREA,
    FIRE = CONST_ME_FIREAREA,
    POISON = CONST_ME_GREEN_RINGS,
    GREEN_STARS = CONST_ME_MAGIC_GREEN,
    RED_STARS = CONST_ME_MAGIC_RED,
    BLUE_STARS = CONST_ME_MAGIC_BLUE,
    RED_NOTES = CONST_ME_SOUND_RED,
    GREEN_NOTES = CONST_ME_SOUND_GREEN,
    BLUE_NOTES = CONST_ME_SOUND_BLUE,
    PURPLE_NOTES = CONST_ME_SOUND_PURPLE,
    WHITE_NOTES = CONST_ME_SOUND_WHITE,
    YELLOW_NOTES = CONST_ME_SOUND_YELLOW,
    BLACK_STEAM = CONST_ME_BLACKSMOKE,
    WHITE_STEAM = CONST_ME_SMOKE,
    RED_STEAM = CONST_ME_REDSMOKE,
    DETONATION = CONST_ME_FIREAREA,
    ERUPTION = CONST_ME_EXPLOSIONHIT,
    EXPLOSION = CONST_ME_EXPLOSIONAREA,
    FLAME = CONST_ME_FIREATTACK,
    TERRA = CONST_ME_CARNIPHILA,
    CREEPERS = CONST_ME_SMALLPLANTS,
    ENERGY = CONST_ME_ENERGYAREA,
    YELLOW_ENERGY = CONST_ME_YELLOWENERGY,
    PURPLE_ENERGY = CONST_ME_PURPLEENERGY,
    ELECTRIC = CONST_ME_ENERGYHIT,
    YELLOW_ELECTRIC = CONST_ME_YELLOWENERGY,
    PURPLE_ELECTRIC = CONST_ME_PURPLEENERGY,
    STORM = CONST_ME_BIGCLOUDS,
    ICY_WIND = CONST_ME_ICETORNADO,
    ICE = CONST_ME_ICEAREA,
    ICE_FLAKE = CONST_ME_ICEATTACK,
    ICY_CRYSTAL = CONST_ME_GIANTICE,
    WATER = CONST_ME_LOSEENERGY,
    WATER_SPLASH = CONST_ME_WATERSPLASH,
    BLOOD = CONST_ME_DRAWBLOOD,
    HOLY_CROSS = CONST_ME_HOLYAREA,
    HOLY = CONST_ME_HOLYDAMAGE,
    STONE_SHOWER = CONST_ME_STONES,
    GROUND_SHAKER = CONST_ME_GROUNDSHAKER,
    DIZZY = CONST_ME_STUN,
    SPARKY = CONST_ME_BLOCKHIT,
    BERSERK = CONST_ME_HITAREA,
    CURSE = CONST_ME_SMALLCLOUDS,
    FAIRY_PUFF = CONST_ME_PIXIE_EXPLOSION,
    HEARTS = CONST_ME_HEARTS,
    DICE = CONST_ME_CRAPS,
    BATS = CONST_ME_BATS,
    SLEEPING = CONST_ME_SLEEP,
    BUBBLES = CONST_ME_BUBBLES,
    ROOTS = CONST_ME_ROOTS,
    WHITE_SHADE = CONST_ME_YALAHARIGHOST,
    ACID = CONST_ME_YELLOW_RINGS,
    WHITE_SPARK = CONST_ME_WHITE_ENERGY_SPARK,
    BLUE_SPARK = CONST_ME_BLUE_ENERGY_SPARK,
    YELLOW_SPARK = CONST_ME_YELLOW_ENERGY_SPARK
}

SHOOT_EFFECTS = {
    SUDDEN_DEATH_RUNE = CONST_ANI_SUDDENDEATH,
    STALAGMITE_RUNE = CONST_ANI_EARTH,
    FIRE_STRIKE = CONST_ANI_FIRE,
    ICE_STRIKE = CONST_ANI_ICE,
    ICICLE_RUNE = CONST_ANI_ICE,
    HOLY = CONST_ANI_HOLY,
    POISON = CONST_ANI_POISON,
    ENERGY_STRIKE = CONST_ANI_ENERGY,
    DEATH_STRIKE = CONST_ANI_DEATH,
    POISON_ARROW = CONST_ANI_POISONARROW,
    FLASH_ARROW = CONST_ANI_FLASHARROW,
    ONYX_ARROW = CONST_ANI_ONYXARROW,
    HUNTING_SPEAR = CONST_ANI_HUNTINGSPEAR,
    ROYAL_SPEAR = CONST_ANI_ROYALSPEAR,
    SNOWBALL = CONST_ANI_SNOWBALL,
    SMALL_STONE = CONST_ANI_SMALLSTONE,
    GLOOTH_SPEAR = CONST_ANI_GLOOTHSPEAR,
    BOLT = CONST_ANI_BOLT,
    DRILL_BOLT = CONST_ANI_DRILLBOLT,
    POWER_BOLT = CONST_ANI_POWERBOLT,
    SPEAR = CONST_ANI_SPEAR,
    LARGE_ROCK = CONST_ANI_LARGEROCK,
    VIPER_STAR = CONST_ANI_GREENSTAR,
    FLAMING_ARROW = CONST_ANI_FLAMMINGARROW,
    ARROW = CONST_ANI_ARROW,
    CRYSTALLINE_ARROW = CONST_ANI_CRYSTALLINEARROW,
    WHIRLWING_SWORD = CONST_ANI_WHIRLWINDSWORD,
    WHIRLWING_AXE = CONST_ANI_WHIRLWINDAXE,
    WHIRLWING_CLUB = CONST_ANI_WHIRLWINDCLUB,
    THROWING_KNIFE = CONST_ANI_THROWINGKNIFE
}

CustomMonsterSpell = {}

function CustomMonsterSpell:new(targetDistance)
    o = {
        name = "combat",
        interval = 2000,
        target = false,
        chance = 15,
        ranged = targetDistance or 1,
        range = 5
    } -- create object if user does not provide one
    o.ranged = o.ranged > 1
    setmetatable(o, self)
    self.__index = self
    return o
end

-------------------- Base config --------------------
function CustomMonsterSpell:setNeedDirection(needDirection)
    self.needDirection = needDirection

    return self
end

function CustomMonsterSpell:setCondition(condition)
    self.condition = condition

    return self
end

function CustomMonsterSpell:setChance(chance)
    self.chance = chance

    return self
end

function CustomMonsterSpell:setMinDamage(minDamage)
    self.minDamage = -minDamage

    return self
end

function CustomMonsterSpell:setMaxDamage(maxDamage)
    self.maxDamage = -maxDamage

    return self
end

function CustomMonsterSpell:setDamageRange(minDamage, maxDamage)
    self.minDamage = -minDamage
    self.maxDamage = -maxDamage

    return self
end

function CustomMonsterSpell:withTarget()
    self.target = true

    return self
end

function CustomMonsterSpell:setAnimation(animation)
    self.effect = animation

    return self
end

function CustomMonsterSpell:setArea(area)
    self.area = area

    return self
end

-------------------- Elements --------------------

dofile("data/lib/spells/spells_elements.lua")

--------------------- Areas -----------------------

dofile("data/lib/spells/spells_areas.lua")

-------------------- Animations --------------------

dofile("data/lib/spells/spells_animations.lua")

-------------------- Debuffs --------------------

dofile("data/lib/spells/debuff_spells.lua")

-------------------- Meele attack --------------------

function CustomMonsterSpell:withBasicAttack()
    local spell = CustomMonsterSpell:new()
    spell.name = "melee"
    spell.chance = 100

    return spell
end

-------------------- Healing --------------------

function CustomMonsterSpell:withHealing(minHealing, maxHealing)
    self.minDamage = minHealing
    self.maxDamage = maxHealing
    self.effect = SPELL_ANIMATIONS.BLUE_STARS
    self.type = COMBAT_HEALING
    return self
end

-------------------- Haste --------------------

function CustomMonsterSpell:withHaste(speedChange, duration)
    self.name = "speed"
    self.speedChange = speedChange * 1.4
    self.duration = duration
    self.minDamage = 0
    self.maxDamage = 0
    self.effect = SPELL_ANIMATIONS.RED_STARS

    return self
end

function CustomMonsterSpell:withStrongHaste(speedChange, duration)
    self.name = "speed"
    self.speedChange = speedChange * 1.7
    self.duration = duration
    self.minDamage = 0
    self.maxDamage = 0
    self.effect = SPELL_ANIMATIONS.RED_STARS

    return self
end

-------------------- Invisible --------------------
function CustomMonsterSpell:withInvisible(duration)
    self.name = "invisible"
    self.effect = SPELL_ANIMATIONS.BLUE_STARS
    self.duration = duration or 5000
    self.minDamage = 0
    self.maxDamage = 0

    return self
end

-------------------- Beams --------------------

dofile("data/lib/spells/beam_spells.lua")

-------------------- Strikes --------------------

dofile("data/lib/spells/strike_spells.lua")

-------------------- Waves --------------------

dofile("data/lib/spells/wave_spells.lua")

-------------------- T-Waves --------------------

dofile("data/lib/spells/t_wave_spells.lua")

-------------------- Boxes --------------------

dofile("data/lib/spells/box_spells.lua")

-------------------- Balls --------------------

dofile("data/lib/spells/ball_spells.lua")

-------------------- Circles --------------------

dofile("data/lib/spells/circle_spells.lua")

-------------------- Cone Waves --------------------

dofile("data/lib/spells/cone_wave_spells.lua")

-------------------- Crosses --------------------

dofile("data/lib/spells/cross_spells.lua")

-------------------- X-Crosses --------------------

dofile("data/lib/spells/xcross_spells.lua")
