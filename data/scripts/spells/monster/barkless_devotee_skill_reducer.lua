local combat = {}

for i = 40, 70 do
    combat[i] = Combat()
    combat[i]:setParameter(COMBAT_PARAM_EFFECT, SPELL_ANIMATIONS.GREEN_STARS)

    local condition = Condition(CONDITION_ATTRIBUTES)
    condition:setParameter(CONDITION_PARAM_TICKS, 7000)
    condition:setParameter(CONDITION_PARAM_SKILL_DISTANCE, i)

    local area = createCombatArea(SPELL_AREA.BOX)
    combat[i]:setArea(area)
    combat[i]:addCondition(condition)
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
    return combat[math.random(40, 70)]:execute(creature, var)
end

spell:name("barkless devotee skill reducer")
spell:words("###barkless_devotee_skill_reducer")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(true)
spell:register()
