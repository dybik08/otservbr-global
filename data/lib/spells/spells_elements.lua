-------------------- Elements --------------------

function CustomMonsterSpell:withEarthDamage()
    self.type = COMBAT_EARTHDAMAGE

    return self
end

function CustomMonsterSpell:withDeathDamage()
    self.type = COMBAT_DEATHDAMAGE

    return self
end

function CustomMonsterSpell:withEnergyDamage()
    self.type = COMBAT_ENERGYDAMAGE

    return self
end

function CustomMonsterSpell:withFireDamage()
    self.type = COMBAT_FIREDAMAGE

    return self
end

function CustomMonsterSpell:withPhysicalDamage()
    self.type = COMBAT_PHYSICALDAMAGE

    return self
end

function CustomMonsterSpell:withIceDamage()
    self.type = COMBAT_ICEDAMAGE

    return self
end

function CustomMonsterSpell:withHolyDamage()
    self.type = COMBAT_HOLYDAMAGE

    return self
end

function CustomMonsterSpell:withLifeDrainDamage()
    self.type = COMBAT_LIFEDRAIN

    return self
end

function CustomMonsterSpell:withManaDrainDamage()
    self.type = COMBAT_MANADRAIN

    return self
end
