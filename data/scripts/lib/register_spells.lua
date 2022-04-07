--Pre-made areas by Wojtek

SPELL_AREAS = {
	STRIKE = {
		{0, 0, 0},
		{0, 3, 0},
		{0, 0, 0}
	},
	CROSS = {
		{0, 1, 0},
		{1, 3, 1},
		{0, 1, 0}
	},
	X_CROSS = {
		{1, 0, 1},
		{0, 3, 0},
		{1, 0, 1}
	},
	BOX = {
		{1, 1, 1},
		{1, 3, 1},
		{1, 1, 1}
	},
	BALL = {
		-- RADIUS 2
		{0, 1, 1, 1, 0},
		{1, 1, 1, 1, 1},
		{1, 1, 3, 1, 1},
		{1, 1, 1, 1, 1},
		{0, 1, 1, 1, 0}
	},
	GREAT_BALL = {
		-- RADIUS 3
		{0, 0, 1, 1, 1, 0, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 3, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0}
	},
	GREATER_BALL = {
		-- RADIUS 4
		{0, 0, 0, 1, 1, 1, 0, 0, 0},
		{0, 0, 1, 1, 1, 1, 1, 0, 0},
		{0, 1, 1, 1, 1, 1, 1, 1, 0},
		{1, 1, 1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 3, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 1, 1, 0, 0, 0}
	},
	ULTIMATE_BALL = {
		-- RADIUS 5
		{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
		{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
		{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
		{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
	},
	THE_GREATEST_BALL = {
		-- RADIUS 6
		{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
		{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
		{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
		{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
		{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
		{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}
	},
	CIRCLE = {
		{0, 1, 1, 1, 0},
		{1, 0, 0, 0, 1},
		{1, 0, 3, 0, 1},
		{1, 0, 0, 0, 1},
		{0, 1, 1, 1, 0}
	},
	GREAT_CIRCLE = {
		{0, 1, 1, 1, 1, 1, 0},
		{1, 0, 0, 0, 0, 0, 1},
		{1, 0, 0, 0, 0, 0, 1},
		{1, 0, 0, 3, 0, 0, 1},
		{1, 0, 0, 0, 0, 0, 1},
		{1, 0, 0, 0, 0, 0, 1},
		{0, 1, 1, 1, 1, 1, 0}
	},
	GREATER_CIRCLE = {}, -- TODO
	ULTIMATE_CIRCLE = {}, -- TODO
	THE_GREATEST_CIRCLE = {}, -- TODO
	TINY_BEAM = {
		{1},
		{3}
	},
	SHORTER_BEAM = {
		{1},
		{1},
		{3}
	},
	SHORT_BEAM = {
		{1},
		{1},
		{1},
		{3}
	},
	BEAM = {
		{1},
		{1},
		{1},
		{1},
		{3}
	},
	LONG_BEAM = {
		{1},
		{1},
		{1},
		{1},
		{1},
		{3}
	},
	LONGER_BEAM = {
		{1},
		{1},
		{1},
		{1},
		{1},
		{1},
		{3}
	},
	GREAT_BEAM = {
		{1},
		{1},
		{1},
		{1},
		{1},
		{1},
		{1},
		{3}
	},
	GREATER_BEAM = {
		{1},
		{1},
		{1},
		{1},
		{1},
		{1},
		{1},
		{1},
		{3}
	},
	SHORT_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	LONG_WAVE = {
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	LONGER_WAVE = {
		{1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	GREAT_WAVE = {
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	TINY_CONE_WAVE = {
		{1, 1, 1},
		{0, 3, 0}
	},
	SHORT_CONE_WAVE = {
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	CONE_WAVE = {
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	LONG_CONE_WAVE = {
		{1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	LONGER_CONE_WAVE = {
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	GREAT_CONE_WAVE = {
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	GREATER_CONE_WAVE = {
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{1, 1, 1, 1, 1, 1, 1},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 1, 1, 1, 1, 1, 0},
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	TINY_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	SHORTER_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	SHORT_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	LONG_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	LONGER_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	GREAT_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	},
	GREATER_T_WAVE = {
		{0, 0, 1, 1, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 3, 0, 0, 0}
	}
}

--Waves
AREA_SHORTWAVE3 = {
	{1, 1, 1},
	{1, 1, 1},
	{0, 3, 0}
}

AREA_WAVE10 = {
	{1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 0, 3, 0, 0, 0}
}

AREA_WAVE11 = {
	{1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 3, 0, 0, 0}
}

AREA_WAVE12 = {
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 3, 0, 0, 0}
}

AREA_WAVE13 = {
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 3, 0, 0, 0}
}

AREA_WAVE4 = {
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 3, 0, 0}
}

AREA_WAVE5 = {
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 1, 0, 0},
	{0, 0, 3, 0, 0}
}

AREA_WAVE6 = {
	{0, 0, 0, 0, 0},
	{0, 1, 3, 1, 0},
	{0, 0, 0, 0, 0}
}

AREA_WAVE7 = {
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 3, 0, 0}
}

AREA_SQUAREWAVE5 = {
	{1, 1, 1},
	{1, 1, 1},
	{1, 1, 1},
	{0, 1, 0},
	{0, 3, 0}
}

AREA_SQUAREWAVE6 = {
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0}
}

AREA_SQUAREWAVE7 = {
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0}
}

--Diagonal waves
AREADIAGONAL_WAVE4 = {
	{0, 0, 0, 0, 1, 0},
	{0, 0, 0, 1, 1, 0},
	{0, 0, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 0},
	{0, 0, 0, 0, 0, 3}
}

AREADIAGONAL_SQUAREWAVE5 = {
	{1, 1, 1, 0, 0},
	{1, 1, 1, 0, 0},
	{1, 1, 1, 0, 0},
	{0, 0, 0, 1, 0},
	{0, 0, 0, 0, 3}
}

AREADIAGONAL_WAVE6 = {
	{0, 0, 1},
	{0, 3, 0},
	{1, 0, 0}
}

AREADIAGONAL_WAVE7 = {
	{0, 0, 0, 0, 0, 1, 0},
	{0, 0, 0, 0, 1, 1, 0},
	{0, 0, 0, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 0},
	{0, 0, 0, 0, 0, 0, 3}
}

--Beams
AREA_BEAM1 = {
	{3}
}

AREA_BEAM5 = {
	{1},
	{1},
	{1},
	{1},
	{3}
}

AREA_BEAM7 = {
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{3}
}

AREA_BEAM8 = {
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{1},
	{3}
}

--Diagonal Beams
AREADIAGONAL_BEAM5 = {
	{1, 0, 0, 0, 0},
	{0, 1, 0, 0, 0},
	{0, 0, 1, 0, 0},
	{0, 0, 0, 1, 0},
	{0, 0, 0, 0, 3}
}

AREADIAGONAL_BEAM7 = {
	{1, 0, 0, 0, 0, 0, 0},
	{0, 1, 0, 0, 0, 0, 0},
	{0, 0, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 0, 0},
	{0, 0, 0, 0, 0, 1, 0},
	{0, 0, 0, 0, 0, 0, 3}
}

--Circles
AREA_CIRCLE2X2 = {
	{0, 1, 1, 1, 0},
	{1, 1, 1, 1, 1},
	{1, 1, 3, 1, 1},
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0}
}

AREA_CIRCLE3X3 = {
	{0, 0, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 3, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0}
}

AREA_CIRCLE3X32 = {
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 3, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1}
}

AREA_CIRCLE3X33 = {
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 0, 0, 1, 1, 1},
	{1, 1, 0, 3, 1, 1, 1},
	{1, 1, 0, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1}
}

-- Crosses
AREA_CIRCLE1X1 = {
	{0, 1, 0},
	{1, 3, 1},
	{0, 1, 0}
}

AREA_CIRCLE5X5 = {
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}
}

AREA_CIRCLE5X5V2 = {
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

AREA_CIRCLE6X6 = {
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}
}

--Squares
AREA_SQUARE1X1 = {
	{1, 1, 1},
	{1, 3, 1},
	{1, 1, 1}
}

-- Walls
AREA_WALLFIELD = {
	{1, 1, 3, 1, 1}
}

AREADIAGONAL_WALLFIELD = {
	{0, 0, 0, 0, 1},
	{0, 0, 0, 1, 1},
	{0, 1, 3, 1, 0},
	{1, 1, 0, 0, 0},
	{1, 0, 0, 0, 0}
}

-- Walls Energy
AREA_WALLFIELD_ENERGY = {
	{1, 1, 1, 3, 1, 1, 1}
}

AREADIAGONAL_WALLFIELD_ENERGY = {
	{0, 0, 0, 0, 0, 0, 1},
	{0, 0, 0, 0, 0, 1, 1},
	{0, 0, 0, 0, 1, 1, 0},
	{0, 0, 1, 3, 1, 0, 0},
	{0, 1, 1, 0, 0, 0, 0},
	{0, 1, 0, 0, 0, 0, 0},
	{1, 0, 0, 0, 0, 0, 0}
}

-- Spells-only arrays

--This HUGE array contains all corpses of the game, until protocol 8.0
-- It is used on animate dead rune and on undead legion spell. No unmoveable corpses are there.
CORPSES = {
	2806,2807,2808,2809,2810,2811,2812,2813,2814,2815,2816,2817,2818,2819,2820,2821,2822,2823,
	2824,2825,2826,2827,2828,2829,2830,2831,2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,
	2842,2843,2844,2845,2846,2847,2848,2849,2850,2851,2852,2853,2854,2855,2856,2857,2858,2859,
	2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2896,
	2897,2898,2899,2900,2901,2902,2903,2904,2905,2906,2907,2908,2909,2910,2911,2912,2913,2914,
	2915,2916,2917,2918,2919,2920,2921,2922,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,
	2933,2934,2935,2936,2937,2938,2939,2940,2941,2942,2943,2944,2945,2946,2947,2948,2949,2950,
	2951,2952,2953,2954,2955,2956,2957,2958,2959,2960,2961,2962,2963,2964,2965,2966,2967,2968,
	2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2986,
	2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,
	3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,
	3023,3024,3025,3026,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,
	3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,
	3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,3072,3073,3074,3075,3076,
	3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,
	3095,3096,3097,3098,3099,3100,3101,3102,3103,3104,3105,3106,3107,3108,3109,3110,3111,3112,
	3113,3114,3115,3116,3117,3118,3119,3120,3121,3128,3129,3130,3131,3132,3133,3134,4252,4253,
	4254,4255,4256,4257,4258,4259,4260,4261,4262,4263,4264,4265,4266,4267,4268,4269,4270,4271,
	4272,4273,4274,4275,4276,4277,4278,4279,4280,4281,4282,4283,4284,4285,4286,4287,4288,4289,
	4290,4291,4292,4293,4294,4295,4296,4297,4298,4299,4300,4301,4302,4303,4304,4305,4306,4307,
	4308,4309,4310,4311,4312,4313,4314,4315,4316,4317,4318,4319,4320,4321,4322,4323,4324,4325,
	4326,4327,5522,5523,5524,5525,5526,5527,5528,5529,5530,5531,5532,5533,5534,5535,5536,5537,
	5538,5540,5541,5542,5565,5566,5567,5568,5625,5626,5627,5628,5629,5630,5666,5667,5668,5688,
	5689,5690,5727,5728,5729,5762,5765,5766,5767,5931,5932,5933,5934,5935,5936,5965,6022,6082,
	6083,6084,6303,6304,6305,6307,6308,6309,6310,6313,6314,6315,6317,6318,6319,6321,6322,6323,
	6325,6326,6327,6328,6329,6330,6333,6334,6335,6337,6338,6339,6341,6342,6343,6345,6346,6347,
	6349,6350,6351,6355,6365,6366,6367,6520,6521,6522,6560,7092,7093,7094,7256,7257,7258,7283,
	7284,7285,7317,7318,7319,7321,7322,7323,7325,7326,7328,7329,7331,7332,7333,7335,7336,7337,
	7339,7340,7341,7345,7346,7347,7623,7624,7625,7626,7627,7629,7630,7631,7638,7639,7640,7741,
7742,7743,7848,7849,7908,7927,7928,7929,7931,7970,7971,8272
}

-- The numbered-keys represents the damage values, and their table
-- contains the minimum and maximum number of rounds of those damage values.
RANGE = {
	[1] = {19, 20},
	[2] = {10, 10},
	[3] = {6, 7},
	[4] = {4, 5},
	[5] = {3, 4},
	[6] = {3, 4},
	[7] = {2, 3},
	[8] = {2, 3},
	[9] = {2, 3},
	[10] = {1, 2},
	[11] = {1, 2},
	[12] = {1, 2},
	[13] = {1, 2},
	[14] = {1, 2},
	[15] = {1, 2},
	[16] = {1, 2},
	[17] = {1, 2},
	[18] = {1, 2},
	[19] = {1, 2}
}

function Creature:addDamageCondition(target, conditionType, listType, damage, time, rounds)
	if target:isImmune(conditionType) then
		return false
	end

	local condition = Condition(conditionType)
	condition:setParameter(CONDITION_PARAM_OWNER, self:getId())
	condition:setParameter(CONDITION_PARAM_DELAYED, true)

	if listType == 0 then
		local exponent, value = -10, 0
		while value < damage do
			value = math.floor(10 * math.pow(1.2, exponent) + 0.5)
			condition:addDamage(1, time or 4000, -value)

			if value >= damage then
				local permille = math.random(10, 1200) / 1000
				condition:addDamage(1, time or 4000, -math.max(1, math.floor(value * permille + 0.5)))
			else
				exponent = exponent + 1
			end
		end
	elseif listType == 1 then
		rounds = rounds or RANGE
		if rounds[damage] then
			condition:addDamage(math.random(1, rounds[damage][2]), time or 4000, -damage)
			damage = damage - 1
		end

		while damage > 0 do
			condition:addDamage(rounds[damage] and math.random(rounds[damage][1], rounds[damage][2]) or 1, time or 4000, -damage)
			damage = damage - (damage > 21 and math.floor(damage / 20) + math.random(0, 1) or 1)
		end
	elseif listType == 2 then
		for _ = 1, rounds do
			condition:addDamage(1, math.random(time[1], time[2]) * 1000, -damage)
		end
	end

	target:addCondition(condition)
	return true
end

function Player:addPartyCondition(combat, variant, condition, baseMana)
	local party = self:getParty()
	if not party then
		self:sendCancelMessage(RETURNVALUE_NOPARTYMEMBERSINRANGE)
		self:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	local members = party:getMembers()
	members[#members + 1] = party:getLeader()

	local position = self:getPosition()
	local affectedMembers = {}
	for _, member in ipairs(members) do
		if member:getPosition():getDistance(position) <= 36 then
			affectedMembers[#affectedMembers + 1] = member
		end
	end

	if #affectedMembers <= 1 then
		self:sendCancelMessage(RETURNVALUE_NOPARTYMEMBERSINRANGE)
		position:sendMagicEffect(CONST_ME_POFF)
		return false
	end

	local mana = math.ceil(math.pow(0.9, #affectedMembers - 1) * baseMana * #affectedMembers)
	if self:getMana() < mana then
		self:sendCancelMessage(RETURNVALUE_NOTENOUGHMANA)
		position:sendMagicEffect(CONST_ME_POFF)
		return false
	end

	if not combat:execute(self, variant) then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		position:sendMagicEffect(CONST_ME_POFF)
		return false
	end

	self:addMana(baseMana - mana, false)
	self:addManaSpent(mana - baseMana)

	for _, member in ipairs(affectedMembers) do
		member:addCondition(condition)
	end
	return true
end

function Player:conjureItem(reagentId, conjureId, conjureCount, effect)
	if not conjureCount and conjureId ~= 0 then
		local itemType = ItemType(conjureId)
		if itemType:getId() == 0 then
			return false
		end

		local charges = itemType:getCharges()
		if charges ~= 0 then
			conjureCount = charges
		end
	end

	if reagentId ~= 0 and not self:removeItem(reagentId, 1, -1) then
		self:sendCancelMessage(RETURNVALUE_YOUNEEDAMAGICITEMTOCASTSPELL)
		self:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	local item = self:addItem(conjureId, conjureCount)
	if not item then
		self:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		self:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	if item:hasAttribute(ITEM_ATTRIBUTE_DURATION) then
		item:decay()
	end

	self:getPosition():sendMagicEffect(item:getType():isRune() and CONST_ME_MAGIC_RED or effect)
	return true
end

-- BASED ON https://tibiopedia.pl/articles/21,Spis-atakow-potworow AND https://tibia.fandom.com/wiki/Effects
SPELL_ANIMATIONS = {
	ENVENOM = CONST_ME_HITBYPOISON,
	SMOKE = CONST_ME_POFF,
	DEATH = CONST_ME_MORTAREA,
	FIRE = CONST_ME_FIREAREA,
	POISON = CONST_ME_GREEN_RINGS,
	GREEN_STARS = CONST_ME_MAGIC_GREEN,
	RED_STARS = CONST_ME_MAGIC_RED,
	BLUE_STARS = CONST_ME_MAGIC_BLUE,
	RED_NOTES = CONST_ME_SOUND_RED,
	GREEN_NOTES = CONST_ME_SOUND_GREEN,
	BLUE_NOTES = CONST_ME_SOUND_BLUE,
	PURPLE_NOTES = CONST_ME_SOUND_PURPLE,
	WHITE_NOTES = CONST_ME_SOUND_WHITE,
	YELLOW_NOTES = CONST_ME_SOUND_YELLOW,
	BLACK_STEAM = CONST_ME_BLACKSMOKE,
	WHITE_STEAM = CONST_ME_SMOKE,
	RED_STEAM = CONST_ME_REDSMOKE,
	DETONATION = CONST_ME_FIREAREA,
	ERUPTION = CONST_ME_EXPLOSIONHIT,
	EXPLOSION = CONST_ME_EXPLOSIONAREA,
	FLAME = CONST_ME_FIREATTACK,
	TERRA = CONST_ME_CARNIPHILA,
	CREEPERS = CONST_ME_SMALLPLANTS,
	ENERGY = CONST_ME_ENERGYAREA,
	YELLOW_ENERGY = CONST_ME_YELLOWENERGY,
	PURPLE_ENERGY = CONST_ME_PURPLEENERGY,
	ELECTRIC = CONST_ME_ENERGYHIT,
	YELLOW_ELECTRIC = CONST_ME_YELLOWENERGY,
	PURPLE_ELECTRIC = CONST_ME_PURPLEENERGY,
	STORM = CONST_ME_BIGCLOUDS,
	ICY_WIND = CONST_ME_ICETORNADO,
	ICE = CONST_ME_ICEAREA,
	ICE_FLAKE = CONST_ME_ICEATTACK,
	ICY_CRYSTAL = CONST_ME_GIANTICE,
	WATER = CONST_ME_LOSEENERGY,
	WATER_SPLASH = CONST_ME_WATERSPLASH,
	BLOOD = CONST_ME_DRAWBLOOD,
	HOLY_CROSS = CONST_ME_HOLYAREA,
	HOLY = CONST_ME_HOLYDAMAGE,
	STONE_SHOWER = CONST_ME_STONES,
	GROUND_SHAKER = CONST_ME_GROUNDSHAKER,
	DIZZY = CONST_ME_STUN,
	SPARKY = CONST_ME_BLOCKHIT,
	BERSERK = CONST_ME_HITAREA,
	CURSE = CONST_ME_SMALLCLOUDS,
	FAIRY_PUFF = CONST_ME_PIXIE_EXPLOSION,
	HEARTS = CONST_ME_HEARTS,
	DICE = CONST_ME_CRAPS,
	BATS = CONST_ME_BATS,
	BUBBLES = CONST_ME_BUBBLES,
	ROOTS = CONST_ME_ROOTS,
	WHITE_SHADE = CONST_ME_YALAHARIGHOST,
	ACID = CONST_ME_YELLOW_RINGS,
	WHITE_SPARK = CONST_ME_WHITE_ENERGY_SPARK,
	BLUE_SPARK = CONST_ME_BLUE_ENERGY_SPARK,
	YELLOW_SPARK = CONST_ME_YELLOW_ENERGY_SPARK
}

SHOOT_EFFECTS = {
	SUDDEN_DEATH_RUNE = CONST_ANI_SUDDENDEATH,
	FIRE_STRIKE = CONST_ANI_FIRE,
	ICE_STRIKE = CONST_ANI_ICE,
	ENERGY_STRIKE = CONST_ANI_ENERGY,
	DEATH_STRIKE = CONST_ANI_DEATH,
	POISON_ARROW = CONST_ANI_POISONARROW,
	HUNTING_SPEAR = CONST_ANI_HUNTINGSPEAR,
	ROYAL_SPEAR = CONST_ANI_ROYALSPEAR,
	GLOOTH_SPEAR = CONST_ANI_GLOOTHSPEAR,
	BOLT = CONST_ANI_BOLT,
	POWER_BOLT = CONST_ANI_POWERBOLT,
	SPEAR = CONST_ANI_SPEAR,
	LARGE_ROCK = CONST_ANI_LARGEROCK,
	VIPER_STAR = CONST_ANI_GREENSTAR,
	FLAMING_ARROW = CONST_ANI_FLAMMINGARROW
}

--
function CREATE_SPELL(config, overwrittenConfig)
	local spellConfig = config
	if (overwrittenConfig) then
		spellConfig = concat(config, overwrittenConfig)
	end
	local area = spellConfig.area
	local type = spellConfig.type
	local effect = spellConfig.effect
	local shootEffect = spellConfig.shootEffect
	local distanceEfect = spellConfig.distanceEfect
	local name = spellConfig.name
	local words = "###" .. spellConfig.name
	local range = spellConfig.range or 7
	local interval = spellConfig.interval or 2000
	local needDirection = spellConfig.needDirection or false
	local condition = spellConfig.condition
	local needTarget = spellConfig.needTarget or false

	local combat = Combat()

	if (area) then
		combat:setArea(createCombatArea(area))
	end

	combat:setParameter(COMBAT_PARAM_TYPE, type)
	combat:setParameter(COMBAT_PARAM_EFFECT, effect)

	local spell = Spell("instant")

	spell:name(name)
	spell:words(words)
	spell:isAggressive(true)
	spell:blockWalls(true)
	spell:needLearn(true)
	spell:range(range)
	spell:needTarget(needTarget)
	spell:needDirection(needDirection)

	if (string.find(name:lower(), "strike")) then
		spell:needCasterTargetOrDirection(true)
		spell:range(4)
	end

	if (string.find(name:lower(), "hit")) then
		spell:needCasterTargetOrDirection(true)
		spell:range(1)
	end

	if (string.find(name:lower(), "heal")) then
		spell:isAggressive(false)
		spell:isSelfTarget(true)
		spell:group("healing")
		combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
	end

	if (string.find(name:lower(), "beam")) then
		spell:needDirection(true)
	end

	if (string.find(name:lower(), "wave")) then
		spell:needDirection(true)
	end

	if (shootEffect) then
		combat:setParameter(COMBAT_PARAM_SHOOT_EFFECT, shootEffect)
	end

	if (distanceEfect) then
		combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, distanceEfect)
	end

	if (condition) then
		local test = Condition(condition.type)
		test:setParameter(CONDITION_PARAM_DELAYED, 1)

		if (condition.type == CONDITION_FIRE) then
			test:addDamage(condition.ticks or 10, condition.interval, -10)
		elseif (condition.type == CONDITION_POISON) then
			test:addDamage(condition.ticks or 10, condition.interval, -condition.tickDamage or 5)
		elseif (condition.type == CONDITION_ENERGY) then
			test:addDamage(condition.ticks or 10, condition.interval, -25)
		elseif (condition.type == CONDITION_FREEZING) then
			test:addDamage(condition.ticks or 10, condition.interval, -condition.tickDamage or 10)
		elseif (condition.type == CONDITION_DRUNK) then
			test:setParameter(CONDITION_PARAM_TICKS, condition.interval)
		end
		combat:addCondition(test)
	end

	function spell.onCastSpell(creature, var)
		return combat:execute(creature, var)
	end

	return spell
end

-- REMEMBER TO NAME SPELL IN FOLLOWING FORMAT
-- ANIMATION_AREA_DAMAGETYPE_TARGET/SELF_CONTIDION
-- existing example: DizzyBallDeathSelfDrunk

GreaterEnvenomBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.ENVENOM,
	area = SPELL_AREAS.GREATER_BALL
}

DeathBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.DEATH,
	area = SPELL_AREAS.BALL
}

DeathStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.DEATH,
	distanceEfect = SHOOT_EFFECTS.SUDDEN_DEATH_RUNE
}

ShortVioletElectricBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.PURPLE_ELECTRIC,
	area = SPELL_AREAS.SHORT_BEAM
}

DizzyBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.DICE,
	area = SPELL_AREAS.BALL
}

ConditionDrunkDefaultConfig = {
	type = CONDITION_DRUNK,
	interval = 20000
}

BlackSteamWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.BLACK_STEAM,
	shootEffect = SHOOT_EFFECTS.SUDDEN_DEATH_RUNE,
	area = SPELL_AREAS.WAVE
}

IceStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.ICE_FLAKE,
	distanceEfect = SHOOT_EFFECTS.ICE_STRIKE
}

GreatIcyWindBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.ICY_WIND,
	shootEffect = SHOOT_EFFECTS.ICE_STRIKE,
	area = SPELL_AREAS.GREAT_BEAM
}

EruptionBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.ERUPTION,
	area = SPELL_AREAS.BALL
}

ShorterPoisonTWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.POISON,
	area = SPELL_AREAS.SHORTER_T_WAVE
}

SparkyBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.SPARKY,
	area = SPELL_AREAS.BEAM
}

PoisonBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.POISON,
	distanceEfect = SHOOT_EFFECTS.POISON_ARROW,
	area = SPELL_AREAS.BALL
}

PosionArrowDefaultConfig = {
	effect = SPELL_ANIMATIONS.POISON,
	distanceEfect = SHOOT_EFFECTS.POISON_ARROW,
	area = SPELL_AREAS.STRIKE
}

GroundshakerBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.GROUND_SHAKER,
	area = SPELL_AREAS.BOX
}

PoisonHitDefaultConfig = {
	effect = SPELL_ANIMATIONS.POISON,
	area = SPELL_AREAS.STRIKE
}

IceBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.ICE_FLAKE,
	area = SPELL_AREAS.BOX
}

IcyFlakeConeWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.ICE_FLAKE,
	area = SPELL_AREAS.CONE_WAVE
}

BlueStarsBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.BLUE_STARS,
	area = SPELL_AREAS.BOX
}

GreaterBlueStarsBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.BLUE_STARS,
	area = SPELL_AREAS.GREATER_BALL
}

ExplosionBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.EXPLOSION,
	area = SPELL_AREAS.BALL
}

TinyGroundshakerTWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.GROUND_SHAKER,
	area = SPELL_AREAS.TINY_T_WAVE
}

RedStarsStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.RED_STARS,
	area = SPELL_AREAS.STRIKE
}

FlameBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.FLAME,
	area = SPELL_AREAS.BOX
}

ShorterEnergyTWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.ENERGY,
	area = SPELL_AREAS.TWAVE
}

DeathBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.DEATH,
	area = SPELL_AREAS.BOX
}

SparkyBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.SPARKY,
	area = SPELL_AREAS.BALL
}

LongerDicerollBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.DICE,
	area = SPELL_AREAS.LONGER_BEAM
}

FlameStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.FLAME,
	area = SPELL_AREAS.STRIKE
}

LongDetonationBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.DETONATION,
	area = SPELL_AREAS.LONGER_BEAM
}

EruptionBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.ERUPTION,
	area = SPELL_AREAS.BOX
}

ShortFlameBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.FLAME,
	area = SPELL_AREAS.SHORT_BEAM
}

DetonationBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.DETONATION,
	area = SPELL_AREAS.BOX
}

EnergyStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.ENERGY,
	area = SPELL_AREAS.STRIKE
}

HolyBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.HOLY,
	area = SPELL_AREAS.BOX
}

SparkyBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.SPARKY,
	area = SPELL_AREAS.BOX
}

GreatSparkyBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.SPARKY,
	area = SPELL_AREAS.GREAT_BALL
}

RangedAttackSpearDefaultConfig = {
	effect = SPELL_ANIMATIONS.BLOOD,
	distanceEfect = SHOOT_EFFECTS.SPEAR,
	area = SPELL_AREAS.STRIKE
}
RangedAttackViperStarDefaultConfig = {
	effect = SPELL_ANIMATIONS.BLOOD,
	distanceEfect = SHOOT_EFFECTS.SPEAR,
	area = SPELL_AREAS.STRIKE
}

ExplosionStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.EXPLOSION,
	area = SPELL_AREAS.STRIKE
}

GroundshakerBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.GROUND_SHAKER,
	area = SPELL_AREAS.BALL
}

LongHolyBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.HOLY,
	area = SPELL_AREAS.LONG_BEAM
}

GreatTerraWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.TERRA,
	area = SPELL_AREAS.GREAT_WAVE
}

IcyFlakeStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.ICE_FLAKE,
	area = SPELL_AREAS.STRIKE
}

GreatWaterWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.WATER,
	area = SPELL_AREAS.GREAT_WAVE
}

TerraStrikeDefaultConfig = {
	effect = SPELL_ANIMATIONS.TERRA,
	area = SPELL_AREAS.STRIKE
}

PoisonWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.POISON,
	area = SPELL_AREAS.GREAT_WAVE
}

MusicalNotesBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.RED_NOTES,
	area = SPELL_AREAS.BEAM
}

EnvenomBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.ENVENOM,
	area = SPELL_AREAS.BALL
}

ShortFlameBeamFireDefaultConfig = {
	effect = SPELL_ANIMATIONS.FLAME,
	area = SPELL_AREAS.SHORT_BEAM
}

TerraBoxDefaultConfig = {
	effect = SPELL_ANIMATIONS.TERRA,
	area = SPELL_AREAS.BOX
}

HolyBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.HOLY,
	area = SPELL_AREAS.BALL
}

GreatFireWaveDefaultConfig = {
	effect = SPELL_ANIMATIONS.FIRE,
	area = SPELL_AREAS.GREAT_WAVE
}

EnergyBallDefaultConfig = {
	effect = SPELL_ANIMATIONS.ENERGY,
	area = SPELL_AREAS.BALL
}

HolyBeamDefaultConfig = {
	effect = SPELL_ANIMATIONS.HOLY,
	area = SPELL_AREAS.BEAM
}

FireStrikeDefaultConfig = {
	area = SPELL_AREAS.STRIKE,
	effect = SPELL_ANIMATIONS.FIRE
}

GroundshakerCrossDefaultConfig = {
	area = SPELL_AREAS.CROSS,
	effect = SPELL_ANIMATIONS.GROUND_SHAKER
}

GroundshakerXCrossDefaultConfig = {
	area = SPELL_AREAS.X_CROSS,
	effect = SPELL_ANIMATIONS.GROUND_SHAKER
}

GroundshakerCircleDefaultConfig = {
	area = SPELL_AREAS.CIRCLE,
	effect = SPELL_ANIMATIONS.GROUND_SHAKER
}

RedStarsWaveDefaultConfig = {
	area = SPELL_AREAS.WAVE,
	effect = SPELL_ANIMATIONS.RED_STARS
}

SmokeBoxDefaultConfig = {
	area = SPELL_AREAS.BOX,
	effect = SPELL_ANIMATIONS.SMOKE
}

CustomMonsterSpell = {}

function CustomMonsterSpell:new(targetDistance)
	o = {
		name = "combat",
		interval = 2000,
		target = false,
		chance = 15,
		ranged = targetDistance or 1
	} -- create object if user does not provide one
	o.ranged = o.ranged > 1
	setmetatable(o, self)
	self.__index = self
	return o
end

-- Base config
function CustomMonsterSpell:setNeedDirection(needDirection)
	self.needDirection = needDirection

	return self
end

function CustomMonsterSpell:setCondition(condition)
	self.condition = condition

	return self
end

function CustomMonsterSpell:setChance(chance)
	self.chance = chance

	return self
end

function CustomMonsterSpell:setMinDamage(minDamage)
	self.minDamage = -minDamage

	return self
end

function CustomMonsterSpell:setMaxDamage(maxDamage)
	self.maxDamage = -maxDamage

	return self
end

function CustomMonsterSpell:setDamageRange(minDamage, maxDamage)
	self.minDamage = -minDamage
	self.maxDamage = -maxDamage

	return self
end

function CustomMonsterSpell:withTarget()
	self.target = true

	return self
end

function CustomMonsterSpell:setAnimation(animation)
	self.effect = animation

	return self
end

function CustomMonsterSpell:setArea(area)
	self.area = area

	return self
end

-- Elements

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

-- Areas
function CustomMonsterSpell:withWave()
	self.area = SPELL_AREAS.WAVE
	self.needDirection = true

	return self
end

function CustomMonsterSpell:withLongWave()
	self.area = SPELL_AREAS.LONG_WAVE
	self.needDirection = true

	return self
end

function CustomMonsterSpell:withTinyBeam()
	if (self.ranged) then
		self.length = 2
	else
		self.area = SPELL_AREAS.TINY_BEAM
	end
	self.needDirection = true

	return self
end

function CustomMonsterSpell:withLongerBeam(ranged)
	self.needDirection = true
	if (self.ranged) then
		self.length = 7
	else
		self.area = SPELL_AREAS.LONGER_BEAM
	end

	return self
end

function CustomMonsterSpell:withBeam()
	if (self.ranged) then
		self.length = 5
	else
		self.area = SPELL_AREAS.BEAM
	end
	self.needDirection = true

	return self
end

function CustomMonsterSpell:withShorterBeam()
	if (self.ranged) then
		self.length = 3
	else
		self.area = SPELL_AREAS.SHORTER_BEAM
	end
	self.needDirection = true

	return self
end

function CustomMonsterSpell:withShortBeam()
	if (self.ranged) then
		self.length = 4
	else
		self.area = SPELL_AREAS.SHORT_BEAM
	end
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

function CustomMonsterSpell:withStrike()
	self.area = SPELL_AREAS.STRIKE
	self.range = 4

	return self
end

-- Ranged attack animations
function CustomMonsterSpell:withLargeRock()
	self.shootEffect = SHOOT_EFFECTS.LARGE_ROCK

	return self
end

function CustomMonsterSpell:withFlamingArrow()
	self.shootEffect = SHOOT_EFFECTS.FLAMING_ARROW

	return self
end

function CustomMonsterSpell:withRoyalSpear()
	self.shootEffect = SHOOT_EFFECTS.ROYAL_SPEAR

	return self
end

function CustomMonsterSpell:withBolt()
	self.shootEffect = SHOOT_EFFECTS.BOLT

	return self
end

function CustomMonsterSpell:withPowerBolt()
	self.shootEffect = SHOOT_EFFECTS.POWER_BOLT

	return self
end

function CustomMonsterSpell:withSpear()
	self.shootEffect = SHOOT_EFFECTS.SPEAR

	return self
end

function CustomMonsterSpell:withEnergyStrike()
	self.shootEffect = SHOOT_EFFECTS.ENERGY_STRIKE

	return self
end

-- Animations
function CustomMonsterSpell:withBlackSteam()
	self.effect = SPELL_ANIMATIONS.BLACK_STEAM

	return self
end

function CustomMonsterSpell:withStoneShower()
	self.effect = SPELL_ANIMATIONS.STONE_SHOWER

	return self
end

function CustomMonsterSpell:withSmoke()
	self.effect = SPELL_ANIMATIONS.SMOKE

	return self
end

function CustomMonsterSpell:withHoly()
	self.effect = SPELL_ANIMATIONS.HOLY

	return self
end

function CustomMonsterSpell:withEnergy()
	self.effect = SPELL_ANIMATIONS.ENERGY

	return self
end
function CustomMonsterSpell:withEnvenom()
	self.effect = SPELL_ANIMATIONS.ENVENOM

	return self
end

function CustomMonsterSpell:withSparky()
	self.effect = SPELL_ANIMATIONS.SPARKY

	return self
end

function CustomMonsterSpell:withYellowElectric()
	self.effect = SPELL_ANIMATIONS.YELLOW_ELECTRIC

	return self
end

function CustomMonsterSpell:withFlame()
	self.effect = SPELL_ANIMATIONS.FLAME

	return self
end

function CustomMonsterSpell:withFire()
	self.effect = SPELL_ANIMATIONS.FIRE

	return self
end

function CustomMonsterSpell:withTerra()
	self.effect = SPELL_ANIMATIONS.TERRA

	return self
end

function CustomMonsterSpell:withIce()
	self.effect = SPELL_ANIMATIONS.ICE

	return self
end

function CustomMonsterSpell:withPoison()
	self.effect = SPELL_ANIMATIONS.POISON

	return self
end

function CustomMonsterSpell:withAcid()
	self.effect = SPELL_ANIMATIONS.ACID

	return self
end

function CustomMonsterSpell:withIcyWind()
	self.effect = SPELL_ANIMATIONS.ICY_WIND

	return self
end

function CustomMonsterSpell:withDeath()
	self.effect = SPELL_ANIMATIONS.DEATH

	return self
end

function CustomMonsterSpell:withDizzy()
	self.effect = SPELL_ANIMATIONS.DIZZY

	return self
end

function CustomMonsterSpell:withEruption()
	self.effect = SPELL_ANIMATIONS.ERUPTION

	return self
end

function CustomMonsterSpell:withDetonation()
	self.effect = SPELL_ANIMATIONS.DETONATION

	return self
end

function CustomMonsterSpell:withRedStars()
	self.effect = SPELL_ANIMATIONS.RED_STARS

	return self
end

function CustomMonsterSpell:withIcyFlake()
	self.effect = SPELL_ANIMATIONS.ICE_FLAKE

	return self
end

function CustomMonsterSpell:withBlueElectric()
	self.effect = SPELL_ANIMATIONS.ELECTRIC

	return self
end

function CustomMonsterSpell:withVioletElectric()
	self.effect = SPELL_ANIMATIONS.PURPLE_ELECTRIC

	return self
end

function CustomMonsterSpell:withGroundShaker()
	self.effect = SPELL_ANIMATIONS.GROUND_SHAKER

	return self
end

-- Meele attack
function CustomMonsterSpell:withBasicAttack()
	self.name = "melee"
	self.chance = 100

	return self
end

-- Drunk
function CustomMonsterSpell:withDrunk(duration)
	self.name = "drunk"
	self.duration = duration

	return self
end

-- Healing
function CustomMonsterSpell:withHealing(minHealing, maxHealing)
	self.minDamage = minHealing
	self.maxDamage = maxHealing
	self.effect = SPELL_ANIMATIONS.BLUE_STARS
	self.type = COMBAT_HEALING
	return self
end

-- Paralyze
function CustomMonsterSpell:withParalyze(speedChange, duration)
	self.name = "speed"
	self.speedChange = speedChange
	self.duration = duration
	self.minDamage = 0
	self.maxDamage = 0

	return self
end

-- Haste
function CustomMonsterSpell:withHaste(speedChange, duration)
	self.name = "speed"
	self.speedChange = speedChange
	self.duration = duration
	self.minDamage = 0
	self.maxDamage = 0
	self.effect = SPELL_ANIMATIONS.RED_STARS

	return self
end

function CustomMonsterSpell:withStrongHaste(speedChange, duration)
	self.name = "speed"
	self.speedChange = speedChange * 1.7
	self.duration = duration
	self.minDamage = 0
	self.maxDamage = 0
	self.effect = SPELL_ANIMATIONS.RED_STARS

	return self
end

-- skill reduce
function CustomMonsterSpell:withMagicLevelDebuff(magicLevelChangeFrom, magicLevelChangeTo, duration)
	self.name = "magiclevel"
	self.duration = duration
	self.magicLevelChangeFrom = 20 --magicLevelChangeFrom
	self.magicLevelChangeTo = 30 --magicLevelChangeTo

	return self
end

-- Invisible
function CustomMonsterSpell:withInvisible(duration)
	self.name = "invisible", interval
	self.effect = SPELL_ANIMATIONS.BLUE_STARS
	self.duration = duration

	return self
end

MonsterLoot = {}

function MonsterLoot:new(o)
	o =
		o or
		{
			maxCount = 1
		} -- create object if user does not provide one
	setmetatable(o, self)
	self.__index = self
	return o
end

function MonsterLoot:setLoot(name, chance, maxCount)
	self.name = name
	self.chance = chance * 1000
	self.maxCount = maxCount or 1

	return self
end

function MonsterLoot:setLootItem(name)
	self.name = name

	return self
end

function MonsterLoot:setChance(chance) -- in %
	self.chance = chance * 1000

	return self
end

function MonsterLoot:setMaxCount(maxCount)
	self.maxCount = maxCount

	return self
end

function MonsterLoot:setItemId(id)
	self.id = id

	return self
end

function MonsterLoot:withGoldCoins(chance, maxCount)
	return MonsterLoot:new():setLootItem("gold coin"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCrystalCoins(chance, maxCount)
	return MonsterLoot:new():setLootItem("Crystal coin"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withPlatinumCoins(chance, maxCount)
	return MonsterLoot:new():setLootItem("platinum coin"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDemonicEssence(chance, maxCount)
	return MonsterLoot:new():setLootItem("demonic essence"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withAxeRing(chance)
	return MonsterLoot:new():setLootItem("axe ring"):setItemId(3092):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDeathRing(chance)
	return MonsterLoot:new():setLootItem("Death ring"):setItemId(6300):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withClubRing(chance)
	return MonsterLoot:new():setLootItem("club ring"):setItemId(3093):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withMightRing(chance)
	return MonsterLoot:new():setLootItem("Might ring"):setItemId(3048):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withCrystalRing(chance)
	return MonsterLoot:new():setLootItem("crystal ring"):setItemId(3007):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRingofHealing(chance)
	return MonsterLoot:new():setLootItem("ring of healing"):setItemId(1320):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSlightlyRustedArmor(chance)
	return MonsterLoot:new():setLootItem("slightly rusted armor"):setItemId(8896):setChance(chance):setMaxCount(
		maxCount or 1
	)
end

function MonsterLoot:withSoulOrb(chance, maxCount)
	return MonsterLoot:new():setLootItem("soul orb"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withFlaskOfDemonicBlood(chance, maxCount)
	return MonsterLoot:new():setLootItem("flask of demonic blood"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreatManaPotion(chance, maxCount)
	return MonsterLoot:new():setLootItem("great mana potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreatSpiritPotion(chance, maxCount)
	return MonsterLoot:new():setLootItem("great Spirit potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withStrongManaPotion(chance, maxCount)
	return MonsterLoot:new():setLootItem("Strong mana potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withGreatHealthPotion(chance, maxCount)
	return MonsterLoot:new():setLootItem("great health potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withStrongHealthPotion(chance, maxCount)
	return MonsterLoot:new():setLootItem("Strong health potion"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRedGem(chance, maxCount)
	return MonsterLoot:new():setLootItem("red gem"):setItemId(3039):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withHam(chance, maxCount)
	return MonsterLoot:new():setLootItem("ham"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withDragonHam(chance, maxCount)
	return MonsterLoot:new():setLootItem("Dragon ham"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withAssassinStar(chance, maxCount)
	return MonsterLoot:new():setLootItem("assassin star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withLeafStar(chance, maxCount)
	return MonsterLoot:new():setLootItem("leaf star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRoyalStar(chance, maxCount)
	return MonsterLoot:new():setLootItem("Royal star"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withRubyNecklace(chance, maxCount)
	return MonsterLoot:new():setLootItem("ruby necklace"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withOnyxChip(chance, maxCount)
	return MonsterLoot:new():setLootItem("onyx chip"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEmerald(chance, maxCount)
	return MonsterLoot:new():setLootItem("small emerald"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedEmerald(chance, maxCount)
	return MonsterLoot:new():setLootItem("small Enchanted emerald"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedRuby(chance, maxCount)
	return MonsterLoot:new():setLootItem("small Enchanted Ruby"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedSapphire(chance, maxCount)
	return MonsterLoot:new():setLootItem("small Enchanted Sapphire"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallEnchantedAmethyst(chance, maxCount)
	return MonsterLoot:new():setLootItem("small Enchanted Amethyst"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallRuby(chance, maxCount)
	return MonsterLoot:new():setLootItem("small ruby"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallAmethyst(chance, maxCount)
	return MonsterLoot:new():setLootItem("small amethyst"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallTopaz(chance, maxCount)
	return MonsterLoot:new():setLootItem("small topaz"):setChance(chance):setMaxCount(maxCount or 1)
end

function MonsterLoot:withSmallDiamond(chance, maxCount)
	return MonsterLoot:new():setLoot("small diamond", chance, maxCount)
end

function MonsterLoot:withSmallSapphire(chance, maxCount)
	return MonsterLoot:new():setLoot("small sapphire", chance, maxCount)
end

function MonsterLoot:withGoldIngot(chance, maxCount)
	return MonsterLoot:new():setLoot("gold ingot", chance, maxCount)
end

function MonsterLoot:withGreenGem(chance, maxCount)
	return MonsterLoot:new():setLoot("green gem", chance, maxCount)
end

function MonsterLoot:withYellowGem(chance, maxCount)
	return MonsterLoot:new():setLoot("yellow gem", chance, maxCount)
end

function MonsterLoot:withBlueGem(chance, maxCount)
	return MonsterLoot:new():setLoot("Blue gem", chance, maxCount)
end

function MonsterLoot:withVioletGem(chance, maxCount)
	return MonsterLoot:new():setLoot("violet gem", chance, maxCount)
end

function MonsterLoot:withRainbowQuartz(chance, maxCount)
	return MonsterLoot:new():setLoot("rainbow quartz", chance, maxCount)
end

function MonsterLoot:withBlueCrystalShard(chance, maxCount)
	return MonsterLoot:new():setLoot("blue crystal shard", chance, maxCount)
end

function MonsterLoot:withGreenCrystalShard(chance, maxCount)
	return MonsterLoot:new():setLoot("Green crystal shard", chance, maxCount)
end

function MonsterLoot:withVioletCrystalShard(chance, maxCount)
	return MonsterLoot:new():setLoot("Violet crystal shard", chance, maxCount)
end

function MonsterLoot:withGreenCrystalFragment(chance, maxCount)
	return MonsterLoot:new():setLoot("green crystal fragment", chance, maxCount)
end

function MonsterLoot:withPrismaticQuartz(chance, maxCount)
	return MonsterLoot:new():setLoot("prismatic quartz", chance, maxCount)
end

function MonsterLoot:withTerraRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Terra Rod", chance, maxCount)
end

function MonsterLoot:withNecroticRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Necrotic Rod", chance, maxCount)
end

function MonsterLoot:withMoonlightRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Moonlight Rod", chance, maxCount)
end

function MonsterLoot:withNorthwindRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Northwind Rod", chance, maxCount)
end

function MonsterLoot:withUnderworldRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Underworld Rod", chance, maxCount)
end

function MonsterLoot:withSpringsproutRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Springsprout Rod", chance, maxCount)
end

function MonsterLoot:withSnakebiteRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Snakebite Rod", chance, maxCount)
end

function MonsterLoot:withHailstormRod(chance, maxCount)
	return MonsterLoot:new():setLoot("Hailstorm Rod", chance, maxCount)
end

function MonsterLoot:withSerpentSword(chance, maxCount)
	return MonsterLoot:new():setLoot("Serpent Sword", chance, maxCount)
end

function MonsterLoot:withWarAxe(chance, maxCount)
	return MonsterLoot:new():setLoot("war axe", chance, maxCount)
end

function MonsterLoot:withTitanAxe(chance, maxCount)
	return MonsterLoot:new():setLoot("titan axe", chance, maxCount)
end

function MonsterLoot:withGoldenArmor(chance, maxCount)
	return MonsterLoot:new():setLoot("golden armor", chance, maxCount)
end

function MonsterLoot:withSkullcrackerArmor(chance, maxCount)
	return MonsterLoot:new():setLoot("Skullcracker armor", chance, maxCount)
end

function MonsterLoot:withFurArmor(chance, maxCount)
	return MonsterLoot:new():setLoot("fur armor", chance, maxCount)
end

function MonsterLoot:withBlueRobe(chance, maxCount)
	return MonsterLoot:new():setLoot("Blue robe", chance, maxCount)
end

function MonsterLoot:withAssassinDagger(chance, maxCount)
	return MonsterLoot:new():setLoot("assassin dagger", chance, maxCount)
end

function MonsterLoot:withMastermindShield(chance, maxCount)
	return MonsterLoot:new():setLoot("mastermind shield", chance, maxCount)
end

function MonsterLoot:withDemonboneAmulet(chance, maxCount)
	return MonsterLoot:new():setLoot("demonbone amulet", chance, maxCount)
end

function MonsterLoot:withSilverAmulet(chance, maxCount)
	return MonsterLoot:new():setLoot("silver amulet", chance, maxCount)
end

function MonsterLoot:withTerraAmulet(chance, maxCount)
	return MonsterLoot:new():setLoot("terra amulet", chance, maxCount)
end

function MonsterLoot:withSacredTreeAmulet(chance, maxCount)
	return MonsterLoot:new():setLoot("sacred tree amulet", chance, maxCount)
end

function MonsterLoot:withEnvenomedArrow(chance, maxCount)
	return MonsterLoot:new():setLoot("Envenomed Arrow", chance, maxCount)
end

function MonsterLoot:withOnyxArrow(chance, maxCount)
	return MonsterLoot:new():setLoot("Onyx Arrow", chance, maxCount)
end

function MonsterLoot:withTrap(chance, maxCount)
	return MonsterLoot:new():setLoot("closed trap", chance, maxCount):setItemId(31925)
end

function MonsterLoot:withSilverBrooch(chance, maxCount)
	return MonsterLoot:new():setLoot("silver brooch", chance, maxCount)
end

function MonsterLoot:withTribalMask(chance, maxCount)
	return MonsterLoot:new():setLoot("tribal mask", chance, maxCount)
end

function MonsterLoot:withGoannaMeat(chance, maxCount)
	return MonsterLoot:new():setLoot("goanna meat", chance, maxCount)
end

function MonsterLoot:withGoannaClaw(chance, maxCount)
	return MonsterLoot:new():setLoot("goanna claw", chance, maxCount)
end

function MonsterLoot:withBlueGoannaScale(chance, maxCount)
	return MonsterLoot:new():setLoot("Blue Goanna Scale", chance, maxCount)
end

function MonsterLoot:withRedGoannaScale(chance, maxCount)
	return MonsterLoot:new():setLoot("Red Goanna Scale", chance, maxCount)
end

function MonsterLoot:withScaredFrog(chance, maxCount)
	return MonsterLoot:new():setLoot("Scared frog", chance, maxCount)
end

function MonsterLoot:withKnightArmor(chance, maxCount)
	return MonsterLoot:new():setLoot("Knight Armor", chance, maxCount)
end

function MonsterLoot:withKnightLegs(chance, maxCount)
	return MonsterLoot:new():setLoot("Knight Legs", chance, maxCount)
end

function MonsterLoot:withKnightAxe(chance, maxCount)
	return MonsterLoot:new():setLoot("Knight Axe", chance, maxCount)
end

function MonsterLoot:withSpikedSquelcher(chance, maxCount)
	return MonsterLoot:new():setLoot("Spiked Squelcher", chance, maxCount)
end

function MonsterLoot:withTerraHood(chance, maxCount)
	return MonsterLoot:new():setLoot("terra hood", chance, maxCount)
end

function MonsterLoot:withBlueCrystalSplinter(chance, maxCount)
	return MonsterLoot:new():setLoot("Blue Crystal Splinter", chance, maxCount)
end

function MonsterLoot:withGreenCrystalSplinter(chance, maxCount)
	return MonsterLoot:new():setLoot("green Crystal Splinter", chance, maxCount)
end

function MonsterLoot:withWoodenSpellbook(chance, maxCount)
	return MonsterLoot:new():setLoot("wooden spellbook", chance, maxCount)
end

function MonsterLoot:withSpellbookOfMindControl(chance, maxCount)
	return MonsterLoot:new():setLoot("spellbook of mind control", chance, maxCount)
end

function MonsterLoot:withEmeraldBangle(chance, maxCount)
	return MonsterLoot:new():setLoot("Emerald Bangle", chance, maxCount)
end

function MonsterLoot:withOrientalShoes(chance, maxCount)
	return MonsterLoot:new():setLoot("oriental shoes", chance, maxCount)
end

function MonsterLoot:withOpal(chance, maxCount)
	return MonsterLoot:new():setLoot("opal", chance, maxCount)
end

function MonsterLoot:withWhitePearl(chance, maxCount)
	return MonsterLoot:new():setLoot("white pearl", chance, maxCount)
end

function MonsterLoot:withBlackPearl(chance, maxCount)
	return MonsterLoot:new():setLoot("Black pearl", chance, maxCount)
end

function MonsterLoot:withGemmedFigurine(chance, maxCount)
	return MonsterLoot:new():setLoot("gemmed figurine", chance, maxCount)
end

function MonsterLoot:withWoodCape(chance, maxCount)
	return MonsterLoot:new():setLoot("wood cape", chance, maxCount)
end

function MonsterLoot:withHeavyMace(chance, maxCount)
	return MonsterLoot:new():setLoot("Heavy Mace", chance, maxCount)
end

function MonsterLoot:withMagmaCoat(chance, maxCount)
	return MonsterLoot:new():setLoot("magma coat", chance, maxCount)
end

function MonsterLoot:withMagmaBoots(chance, maxCount)
	return MonsterLoot:new():setLoot("magma Boots", chance, maxCount)
end

function MonsterLoot:withMagmaLegs(chance, maxCount)
	return MonsterLoot:new():setLoot("magma Legs", chance, maxCount)
end

function MonsterLoot:withMagmaMonocle(chance, maxCount)
	return MonsterLoot:new():setLoot("magma Monocle", chance, maxCount)
end

function MonsterLoot:withWandOfDraconia(chance, maxCount)
	return MonsterLoot:new():setLoot("wand of draconia", chance, maxCount)
end

function MonsterLoot:withWandOfInferno(chance, maxCount)
	return MonsterLoot:new():setLoot("wand of Inferno", chance, maxCount)
end

function MonsterLoot:withWandOfEverblazing(chance, maxCount)
	return MonsterLoot:new():setLoot("wand of Everblazing", chance, maxCount)
end

function MonsterLoot:withWandOfStarstorm(chance, maxCount)
	return MonsterLoot:new():setLoot("wand of Starstorm", chance, maxCount)
end

function MonsterLoot:withWandOfDragonbreath(chance, maxCount)
	return MonsterLoot:new():setLoot("wand of Dragonbreath", chance, maxCount)
end

function MonsterLoot:withRedPieceOfCloth(chance, maxCount)
	return MonsterLoot:new():setLoot("red piece of cloth", chance, maxCount)
end

function MonsterLoot:withGreenPieceOfCloth(chance, maxCount)
	return MonsterLoot:new():setLoot("Green piece of cloth", chance, maxCount)
end

function MonsterLoot:withBluePieceOfCloth(chance, maxCount)
	return MonsterLoot:new():setLoot("Blue piece of cloth", chance, maxCount)
end

function MonsterLoot:withYellowPieceOfCloth(chance, maxCount)
	return MonsterLoot:new():setLoot("Yellow piece of cloth", chance, maxCount)
end

function MonsterLoot:withWhitePieceOfCloth(chance, maxCount)
	return MonsterLoot:new():setLoot("White piece of cloth", chance, maxCount)
end

function MonsterLoot:withBrownPieceOfCloth(chance, maxCount)
	return MonsterLoot:new():setLoot("Brown piece of cloth", chance, maxCount)
end

function MonsterLoot:withMysticTurban(chance, maxCount)
	return MonsterLoot:new():setLoot("mystic turban", chance, maxCount)
end

function MonsterLoot:withFocusCape(chance, maxCount)
	return MonsterLoot:new():setLoot("focus cape", chance, maxCount)
end

function MonsterLoot:withCrossbow(chance, maxCount)
	return MonsterLoot:new():setLoot("crossbow", chance, maxCount)
end

function MonsterLoot:withPowerBolt(chance, maxCount)
	return MonsterLoot:new():setLoot("Power Bolt", chance, maxCount)
end

function MonsterLoot:withBow(chance, maxCount)
	return MonsterLoot:new():setLoot("Bow", chance, maxCount)
end

function MonsterLoot:withLightningPendant(chance, maxCount)
	return MonsterLoot:new():setLoot("Lightning Pendant", chance, maxCount)
end

function MonsterLoot:withLightningLegs(chance, maxCount)
	return MonsterLoot:new():setLoot("Lightning Legs", chance, maxCount)
end

function MonsterLoot:withLightningBoots(chance, maxCount)
	return MonsterLoot:new():setLoot("Lightning Boots", chance, maxCount)
end

function MonsterLoot:withLightningRobe(chance, maxCount)
	return MonsterLoot:new():setLoot("Lightning Robe", chance, maxCount)
end

function MonsterLoot:withGiantShimmeringPearl(chance, maxCount)
	local pearlId = 281
	local chance = math.random(2)
	if chance == 2 then
		pearlId = 282
	end
	return MonsterLoot:new():setLoot("giant shimmering pearl", chance, maxCount):setItemId(pearlId)
end

suprCube = Action()
function suprCube.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:teleportTo(Position(32368, 32240, 7))
end

suprCube:id(31633)
suprCube:register()
--31633 id
