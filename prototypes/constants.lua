local CONST = {}

--       1 pump at 12000fluid/sec can theoretically feed 200 turbines, each taking 60fluid/sec
-- internal speed:  200/tick                                                         1/tick
-- Let turbine efficiency be 80%, tradeoff for space
CONST.internal_turbines = 200
CONST.efficiency = 0.8


return CONST