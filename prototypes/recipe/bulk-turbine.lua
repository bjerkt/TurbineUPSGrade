local CONST = require("prototypes.constants")
local recipe = table.deepcopy(data.raw["recipe"]["steam-turbine"])
recipe.name = "bulk-turbine"
recipe.ingredients = {
    {type="item", name="steam-turbine", amount=CONST.internal_turbines},
    {type="item", name="pump", amount=math.floor(CONST.internal_turbines/2)},
    {type="item", name="pipe", amount=CONST.internal_turbines*2}
}
recipe.result = "bulk-turbine"
data:extend({recipe})