local combat = {}

for i = 75, 85 do
	combat[i] = Combat()
	combat[i]:setParameter(COMBAT_PARAM_EFFECT, SPELL_ANIMATIONS.RED_STARS)
	combat[i]:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

	local condition = Condition(CONDITION_ATTRIBUTES)
	condition:setParameter(CONDITION_PARAM_TICKS, 7000)
	condition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, i)

	local area = createCombatArea(AREA_SQUARE1X1)
	combat[i]:setArea(area)
	combat[i]:addCondition(condition)
end

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat[math.random(75, 85)]:execute(creature, var)
end

spell:name("dawnfire asura skill reducer")
spell:words("###500")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needTarget(true)
spell:needLearn(true)
spell:register()