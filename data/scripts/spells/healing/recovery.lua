local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_REGENERATION)
condition:setParameter(CONDITION_PARAM_TICKS, 1 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 20)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 3 * 1000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

function onGetFormulaValues(_player, level, magicLevel) -- already compared to the official tibia | compared date: 05/07/19(m/d/y)
	local min = (level * 0.2 + magicLevel * 4 + 25) * 1
	local max = (level * 0.2 + magicLevel * 7.95 + 51) * 1
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

combat:addCondition(condition)

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end

spell:name("Recovery")
spell:words("utura")
spell:group("healing")
spell:vocation("knight;true", "elite knight;true", "paladin;true", "royal paladin;true")
spell:id(159)
spell:cooldown(1 * 60 * 1000)
spell:groupCooldown(1 * 1000)
spell:level(50)
spell:mana(75)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
