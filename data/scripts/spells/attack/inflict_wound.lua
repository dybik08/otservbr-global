local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBATPARAM_USECHARGES, 1)

function onGetFormulaValues(player, skill, attack, factor)
	-- local level = player:getLevel()
	local skillTotal = skill * attack
	local levelTotal = player:getLevel() / 5

	local minBase = (((skillTotal * 0.02) + 4) + (levelTotal)) * 1.28
	local maxBase = (((skillTotal * 0.04) + 9) + (levelTotal)) * 1.28
	local min = minBase / 5 * 2
	local max = maxBase / 5 * 2

	local condition = Condition(CONDITION_BLEEDING)
	condition:setParameter(CONDITION_PARAM_DELAYED, 10)
	condition:addDamage(5, 2000, -math.random(min, max))
	combat:addCondition(condition)

	-- return -(((skillTotal * 0.02) + 4) + (levelTotal)) * 1.28, -(((skillTotal * 0.04) + 9) + (levelTotal)) * 1.28 -- TODO : Use New Real Formula instead of an %
	-- return -min * 1.1, -max * 1.1 -- TODO : Use New Real Formula instead of an %
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(141)
spell:name("Inflict Wound")
spell:words("utori kor")
-- TODO SEL LEVEL TO NORMAL VALUE LATER
spell:level(4)
spell:mana(30)
spell:isAggressive(true)
spell:range(1)
spell:needTarget(true)
spell:blockWalls(true)
spell:cooldown(10 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("knight;true", "elite knight;true")
spell:register()
