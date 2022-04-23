local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ONYXARROW)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
    local currentPosition = creature:getPosition()
    local topLeft = Position(currentPosition.x - 4, currentPosition.y - 4, currentPosition.z)
    local downRight = Position(currentPosition.x + 4, currentPosition.y + 4, currentPosition.z)
    local isDruid = isVocationInArea(topLeft, downRight, VOCATION.BASE_ID.DRUID)

    if not isDruid then
        return false
    end
    return combat:execute(creature, var)
end

spell:name("lost soul mana leech")
spell:words("###flimsy_lost_soul_mana_leech")
spell:needLearn(true)
spell:blockWalls(true)
spell:isAggressive(true)
spell:needTarget(true)
spell:register()
