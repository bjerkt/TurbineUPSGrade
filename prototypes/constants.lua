local CONST = {}

--       1 pump at 12000fluid/sec can theoretically feed 200 turbines, each taking 60fluid/sec
-- internal speed:  200/tick                                                         1/tick
-- Let turbine efficiency be 80%, tradeoff for space

-- Vanilla turbine is 3x5 building
CONST.internal_turbines = settings.startup["turbine-ratio"].value
CONST.efficiency = (settings.startup["turbine-efficiency"].value)/100
return CONST