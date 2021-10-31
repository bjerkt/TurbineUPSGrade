local CONST = require("prototypes.constants")
local SCALE_UTIL = require("prototypes.scale_util")
local turbine = table.deepcopy(data.raw["generator"]["steam-turbine"])
turbine.name = "bulk-turbine"
turbine.minable = {mining_time = 0.3, result = "bulk-turbine"}
turbine.effectivity = CONST.efficiency
turbine.fluid_usage_per_tick = CONST.internal_turbines
turbine.scale_fluid_usage = true
turbine.fast_replaceable_group = "bulk-turbine"
turbine.horizontal_animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
      width = 320,
      height = 245,
      frame_count = 8,
      line_length = 4,
      shift = util.by_pixel(0, -2.5),
      run_mode = "backward",
      scale = 0.5,
      hr_version =
      {
        filename = "__TurbineUPSGrade__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
        width = 320*4,
        height = 245*4,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(0, -2.75),
        run_mode = "backward",
        scale = 0.5/4
      }
    },
    {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
      width = 435,
      height = 150,
      repeat_count = 8,
      frame_count = 1,
      line_length = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(28.75, 18),
      run_mode = "backward",
      scale = 0.5,
      hr_version =
      {
        filename = "__TurbineUPSGrade__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
        width = 435*4,
        height = 150*4,
        repeat_count = 8,
        frame_count = 1,
        line_length = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(28.5, 18),
        run_mode = "backward",
        scale = 0.5/4
      }
    }
  }
}
turbine.vertical_animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
      width = 217,
      height = 347,
      frame_count = 8,
      line_length = 4,
      shift = util.by_pixel(5, 6.5),
      run_mode = "backward",
      scale = 0.5,
      hr_version =
      {
        filename = "__TurbineUPSGrade__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
        width = 217*4,
        height = 347*4,
        frame_count = 8,
        line_length = 4,
        shift = util.by_pixel(4.75, 6.75),
        run_mode = "backward",
        scale = 0.5/4
      }
    },
    {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
      width = 302,
      height = 260,
      repeat_count = 8,
      frame_count = 1,
      line_length = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(39.5, 24.5),
      run_mode = "backward",
      scale = 0.5,
      hr_version =
      {
        filename = "__TurbineUPSGrade__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
        width = 302*4,
        height = 260*4,
        repeat_count = 8,
        frame_count = 1,
        line_length = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(39.5, 24.5),
        run_mode = "backward",
        scale = 0.5/4
      }
    }
  }
}

turbine.water_reflection =
{
  pictures =
  {
    filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
    priority = "extra-high",
    width = 40,
    height = 36,
    shift = util.by_pixel(0, 50),
    variation_count = 2,
    repeat_count = 2,
    scale = 5
  },
  rotate = false,
  orientation_to_variation = true
}
scale_factor, x_len, y_len = SCALE_UTIL.get_building_dims(CONST.internal_turbines)
turbine.collision_box = {{-(x_len/2)+0.25, (-y_len/2)+0.25}, {(x_len/2)-0.25, (y_len/2)-0.25}}
turbine.selection_box = {{-(x_len/2), -y_len/2}, {x_len/2, y_len/2}}
turbine.fluid_box = {
  base_area = 1,
  height = 2,
  base_level = -1,
  pipe_covers = pipecoverspictures(),
  pipe_connections = {
    { type = "input-output", position = {0, (y_len/2)+0.5} },
    { type = "input-output", position = {0, -(y_len/2)-0.5} }
  },
  production_type = "input-output",
  filter = "steam",
  minimum_temperature = 100.0
}
turbine.smoke =
{
  {
    name = "turbine-smoke",
    north_position = {0.0, (-1.0)*scale_factor},
    east_position = {(0.75)*scale_factor, (-0.75)*scale_factor},
    frequency = 10 / 32,
    starting_vertical_speed = 0.08,
    slow_down_factor = 1,
    starting_frame_deviation = 60
  }
}
SCALE_UTIL.scale_graphics(turbine, scale_factor)
data:extend({turbine})