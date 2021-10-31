data:extend{
    {
      type = "int-setting",
      name = "turbine-ratio",
      setting_type = "startup",
      minimum_value = 25,
      maximum_value = 2000,
      default_value = 200,
      order = "b",
    },
    {
        type = "int-setting",
        name = "turbine-efficiency",
        setting_type = "startup",
        minimum_value = 1,
        maximum_value = 100,
        default_value = 80,
        order = "c"
    }
}