local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_WHITE_ENERGY_SPARK)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local target = Creature(var.number)
	if not target then return false end
	local creaturePos = creature:getPosition()
	local path = creaturePos:getPathTo(target:getPosition(), 0, 0, true, true, 8)
	if not path or #path == 0 then return false end
	for i=1, #path do
		creaturePos:getNextPosition(path[i], 1)
		creaturePos:sendMagicEffect(CONST_ME_WHITE_ENERGY_SPARK)
	end
	return combat:execute(creature, var)
end

spell:name("singledeathchain")
spell:words("###485")
spell:isAggressive(true)
spell:needTarget(true)
spell:needLearn(true)
spell:register()


local reflectChainedDeathMissile = CreatureEvent("reflectChainedDeathMissile")
function reflectChainedDeathMissile.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	local reflectChance = math.random(1, 10)
	if attacker and attacker:isPlayer() and reflectChance > 5 then
			local combat = Combat()
			combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
			combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_WHITE_ENERGY_SPARK)

			local creaturePos = creature:getPosition()
			local path = creaturePos:getPathTo(attacker:getPosition(), 0, 0, true, true, 8)
			if not path or #path == 0 then return false end
			for i=1, #path do
				creaturePos:getNextPosition(path[i], 1)
				creaturePos:sendMagicEffect(CONST_ME_WHITE_ENERGY_SPARK)
			end
			attacker:addHealth(-math.random(600, 900), COMBAT_DEATHDAMAGE)
			combat:execute(creature, attacker)
			return primaryDamage, primaryType, secondaryDamage, secondaryType	
	end	
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

reflectChainedDeathMissile:register()