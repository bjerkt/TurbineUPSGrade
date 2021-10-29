local item = table.deepcopy(data.raw["item"]["steam-turbine"])
item.name = "bulk-turbine"
item.place_result = "bulk-turbine"
item.icons = {
    {
        icon = "__base__/graphics/icons/steam-turbine.png",
        icon_mipmaps = 4,
        icon_size = 64,
        tint = {r = 0.8, g = 0.2, b = 0.2, a = 1}
    }
}
data:extend({item})