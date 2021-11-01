local tech = {
    name = "bulk-turbine",
    localised_name = {"technology-name.bulk-turbine"},
    localised_description = {"technology-description.bulk-turbine"},
    type = "technology",
    icon = "__base__/graphics/technology/radar.png",
    icon_mipmaps = 4,
    icon_size = 256,
    prerequisites = { "nuclear-power" },
    effects = {
        {recipe="bulk-turbine", type="unlock-recipe"}
    },
    unit = {
        count = 800,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
}
data:extend({tech})