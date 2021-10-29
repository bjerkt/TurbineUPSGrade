local CONST = require("prototypes.constants")
local recipe = table.deepcopy(data.raw["recipe"]["steam-turbine"])
recipe.name = "bulk-turbine"
recipe.ingredients = {
    {type="item", name="stone", amount=1}
}
recipe.result = "bulk-turbine"
data:extend({recipe})