local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, SPELL_ANIMATIONS.YELLOW_SPARK)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
    local target = Creature(var.number)
    if not target then
        return false
    end
    local creaturePos = creature:getPosition()
    local path = creaturePos:getPathTo(target:getPosition(), 0, 0, true, true, 8)
    if not path or #path == 0 then
        return false
    end
    for i = 1, #path do
        creaturePos:getNextPosition(path[i], 1)
        creaturePos:sendMagicEffect(SPELL_ANIMATIONS.YELLOW_SPARK)
    end
    return combat:execute(creature, var)
end

spell:name("firechain")
spell:words("###488")
spell:isAggressive(true)
spell:needTarget(true)
spell:needLearn(true)
spell:register()
