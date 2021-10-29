local CONST = require("prototypes.constants")


local turbine = {
    type = "generator",
    name = "bulk-turbine",
    icon = "__base__/graphics/icons/steam-turbine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.3, result = "bulk-turbine"},
    max_health = 300,
    corpse = "steam-turbine-remnants",
    dying_explosion = "steam-turbine-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    effectivity = CONST.efficiency,
    fluid_usage_per_tick = CONST.internal_turbines,
    scale_fluid_usage = true,
    maximum_temperature = 500,
    burns_fluid = false,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "bulk-turbine",
    collision_box = {{-1.25, -2.35}, {1.25, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} }
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
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
          scale = 0.5
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
    },
    vertical_animation =
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
    },
    smoke =
    {
      {
        name = "turbine-smoke",
        north_position = {0.0, -1.0},
        east_position = {0.75, -0.75},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-turbine.ogg",
        volume = 0.67
      },
      match_speed_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    water_reflection =
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
}
data:extend({turbine})