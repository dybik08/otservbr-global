local lionStatue = Action()
function lionStatue.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local playerPosition = player:getPosition()

    if playerPosition.z == 5 then
        player:teleportTo(Position(33118, 32252, 10))
    elseif playerPosition.z == 11 then
        player:teleportTo(Position(33090, 32281, 12))
    elseif playerPosition.z == 12 then
        player:teleportTo(Position(33092, 32315, 11))
    end

    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
end

lionStatue:id(33085)
lionStatue:register()

local lionStatue2 = Action()
function lionStatue2.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local playerPosition = player:getPosition()

    player:teleportTo(Position(33138, 32355, 5))
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
end

lionStatue2:id(33086)
lionStatue2:register()
