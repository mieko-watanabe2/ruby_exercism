class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  LAYER_TIME = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    return layers * LAYER_TIME
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    layer_time = number_of_layers * LAYER_TIME
    return layer_time + actual_minutes_in_oven
  end
end
