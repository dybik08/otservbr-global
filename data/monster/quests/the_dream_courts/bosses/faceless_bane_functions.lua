FaceLessBaneConfig = {
    BossName = "Faceless Bane",
    Storage = {
        Life = 3
    },
    Monster = {
        "Gazer Spectre",
        "Ripper Spectre",
        "Burster Spectre"
    },
    ImmunityCdTimer = 0,
    IsImmune = true,
    TilesSteppedIn = {},
    CenterRoom = Position(33617, 32562, 13),
    SpecialTilePositions = {
        Position(33617, 32558, 13),
        Position(33620, 32557, 13),
        Position(33623, 32558, 13),
        Position(33624, 32561, 13),
        Position(33623, 32563, 13),
        Position(33621, 32567, 13),
        Position(33619, 32567, 13),
        Position(33615, 32567, 13),
        Position(33613, 32567, 13),
        Position(33611, 32563, 13),
        Position(33610, 32561, 13),
        Position(33611, 32558, 13),
        Position(33614, 32557, 13)
    }
}

local bossRoomTile = MoveEvent()

function bossRoomTile.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    for i, value in ipairs(FaceLessBaneConfig.SpecialTilePositions) do
        local tile = Tile(FaceLessBaneConfig.SpecialTilePositions[i])
        local tileSteppedIn = player:getPosition()

        if tile then
            local thing = tile:getTopCreature()
            local alreadySteppedIn = false
            if thing and thing:isPlayer() then
                for tileIndex, tile in ipairs(FaceLessBaneConfig.TilesSteppedIn) do
                    if tileSteppedIn.x == tile.x and tileSteppedIn.y == tile.y and tileSteppedIn.z == tile.z then
                        alreadySteppedIn = true
                        break
                    end
                end
                if alreadySteppedIn == false then
                    table.insert(FaceLessBaneConfig.TilesSteppedIn, FaceLessBaneConfig.SpecialTilePositions[i])
                    player:getPosition():sendMagicEffect(SPELL_ANIMATIONS.YELLOW_ELECTRIC)

                    if table.getn(FaceLessBaneConfig.TilesSteppedIn) > 12 then
                        FaceLessBaneConfig.IsImmune = false
                        FaceLessBaneConfig.ImmunityCdTimer = os.time() + 60
                    end
                end

                return true
            end
        end
    end
end

bossRoomTile:id(8284)
bossRoomTile:register()

function healFacelessBane(monster)
    local storage = monster:getStorageValue(FaceLessBaneConfig.Storage.Life)
    monster:setStorageValue(FaceLessBaneConfig.Storage.Life, storage + 1)
    monster:addHealth(monster:getMaxHealth())
end

local facelessBaneImmunity = CreatureEvent("FacelessBaneImmunity")
local facelessBaneHeal = CreatureEvent("FacelessBaneHeal")

function facelessBaneImmunity.onHealthChange(
    creature,
    attacker,
    primaryDamage,
    primaryType,
    secondaryDamage,
    secondaryType,
    origin)
    if not FaceLessBaneConfig.IsImmune then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    elseif creature and creature:isMonster() then
        creature:getPosition():sendMagicEffect(SPELL_ANIMATIONS.SPARKY)
        creature:addHealth(primaryDamage + secondaryDamage)
    end
    return true
end

function facelessBaneHeal.onPrepareDeath(creature, lastHitKiller, mostDamageKiller)
    healFacelessBane(creature)
    for i, monster in ipairs(FaceLessBaneConfig.Monster) do
        Game.createMonster(FaceLessBaneConfig.Monster[i], creature:getPosition(), true, true)
    end
end

facelessBaneImmunity:register()
facelessBaneHeal:register()
