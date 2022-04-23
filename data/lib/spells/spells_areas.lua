function CustomMonsterSpell:withCircle()
    self.area = SPELL_AREAS.CIRCLE

    return self
end

function CustomMonsterSpell:withWave()
    self.area = SPELL_AREAS.WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withGreatWave()
    self.area = SPELL_AREAS.GREAT_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withUltimateWave()
    self.area = SPELL_AREAS.ULTIMATE_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withLongWave()
    self.area = SPELL_AREAS.LONG_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShortWave()
    self.area = SPELL_AREAS.SHORT_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withTinyBeam()
    self.area = SPELL_AREAS.TINY_BEAM

    self.needDirection = true

    return self
end

function CustomMonsterSpell:withLongerBeam()
    self.needDirection = true

    self.area = SPELL_AREAS.LONGER_BEAM

    return self
end

function CustomMonsterSpell:withGreaterBeam()
    self.needDirection = true

    self.area = SPELL_AREAS.GREATER_BEAM

    return self
end

function CustomMonsterSpell:withBeam()
    self.area = SPELL_AREAS.BEAM

    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShorterBeam()
    self.area = SPELL_AREAS.SHORTER_BEAM

    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShortBeam()
    self.area = SPELL_AREAS.SHORT_BEAM

    self.needDirection = true

    return self
end

function CustomMonsterSpell:withGreatBeam()
    self.area = SPELL_AREAS.GREAT_BEAM

    self.needDirection = true

    return self
end

function CustomMonsterSpell:withLongBeam()
    self.area = SPELL_AREAS.LONG_BEAM

    self.needDirection = true

    return self
end

function CustomMonsterSpell:withBox()
    self.area = SPELL_AREAS.BOX

    return self
end

function CustomMonsterSpell:withBall()
    self.area = SPELL_AREAS.BALL

    return self
end

function CustomMonsterSpell:withGreaterBall()
    self.area = SPELL_AREAS.GREATER_BALL

    return self
end

function CustomMonsterSpell:withGreatBall()
    self.area = SPELL_AREAS.GREAT_BALL

    return self
end

function CustomMonsterSpell:withTheGreatestBall()
    self.area = SPELL_AREAS.THE_GREATEST_BALL

    return self
end

function CustomMonsterSpell:withUltimateBall()
    self.area = SPELL_AREAS.ULTIMATE_BALL

    return self
end

function CustomMonsterSpell:withTWave()
    self.area = SPELL_AREAS.T_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShortTWave()
    self.area = SPELL_AREAS.SHORT_T_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShorterTWave()
    self.area = SPELL_AREAS.SHORTER_T_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withLongTWave()
    self.area = SPELL_AREAS.LONG_T_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withLongConeWave()
    self.area = SPELL_AREAS.LONG_CONE_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withGreatConeWave()
    self.area = SPELL_AREAS.GREAT_CONE_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShorterConeWave()
    self.area = SPELL_AREAS.SHORTER_CONE_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withShortConeWave()
    self.area = SPELL_AREAS.SHORT_CONE_WAVE
    self.needDirection = true

    return self
end

function CustomMonsterSpell:withStrike()
    self.area = SPELL_AREAS.STRIKE
    self.range = 4

    return self
end

function CustomMonsterSpell:withCross()
    self.area = SPELL_AREAS.CROSS

    return self
end

function CustomMonsterSpell:withXCross()
    self.area = SPELL_AREAS.X_CROSS

    return self
end
