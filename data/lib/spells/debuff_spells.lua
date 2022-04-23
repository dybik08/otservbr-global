-------------------- Skill Level reduce --------------------

function CustomMonsterSpell:withSkillLevelDebuff(skillLevelChangeFrom, skillLevelChangeTo, skillType, duration)
    self.name = "reduceskill"

    self.skillLevelChange = math.random(skillLevelChangeTo, skillLevelChangeFrom)
    self.skillType = skillType -- check ConditionParam_t in creatures_definitions.hpp
    self.duration = duration

    return self
end

-------------------- Drunk --------------------

function CustomMonsterSpell:withDrunk(duration)
    self.name = "drunk"
    self.duration = duration

    return self
end

-------------------- Paralyze --------------------

function CustomMonsterSpell:withParalyze(speedChange, duration)
    self.name = "speed"
    self.speedChange = speedChange
    self.duration = duration
    self.minDamage = 0
    self.maxDamage = 0

    return self
end

-------------------- PREDEFINED CONDITIONS --------------------

function CustomMonsterSpell:withEnergyCondition(damage, ticks)
    local dmg = damage or 25
    local condition = Condition(CONDITION_ENERGY)
    condition:setParameter(CONDITION_PARAM_DELAYED, 1)
    condition:addDamage(ticks or 10, 2000, -dmg)

    self.condition = {
        condition = condition
    }
    return self
end

function CustomMonsterSpell:withFireCondition(ticks, damage)
    local dmg = damage or 10
    local condition = Condition(CONDITION_FIRE)
    condition:setParameter(CONDITION_PARAM_DELAYED, 1)
    condition:addDamage(ticks or 10, 2000, -dmg)

    self.condition = {
        condition = condition
    }
    return self
end

function CustomMonsterSpell:withPoisonCondition(ticks, damage)
    local dmg = damage or 5
    local condition = Condition(CONDITION_POISON)
    condition:setParameter(CONDITION_PARAM_DELAYED, 1)
    condition:addDamage(ticks or 10, 2000, -dmg)
    self.shootEffect = SHOOT_EFFECTS.POISON

    self.condition = {
        condition = condition
    }
    return self
end
