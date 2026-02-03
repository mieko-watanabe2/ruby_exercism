class AssemblyLine
  CARS_PRODUCED_PER_HOUR = 221
  SUCCESS_RATE_90 = 0.90
  SUCCESS_RATE_80 = 0.80
  SUCCESS_RATE_77 = 0.77
  MINUTES_IN_AN_HOUR = 60

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if (1..4) === @speed
      @speed * CARS_PRODUCED_PER_HOUR
    elsif (5..8) === @speed
      @speed.to_f * CARS_PRODUCED_PER_HOUR * SUCCESS_RATE_90
    elsif @speed == 9
      @speed.to_f * CARS_PRODUCED_PER_HOUR * SUCCESS_RATE_80
    else
      @speed.to_f * CARS_PRODUCED_PER_HOUR * SUCCESS_RATE_77
    end
  end

  def working_items_per_minute
    if (1..4) === @speed
    production_rate_per_hour.round / MINUTES_IN_AN_HOUR
    elsif (5..8) === @speed
    production_rate_per_hour.round / MINUTES_IN_AN_HOUR
    elsif @speed == 9 
    production_rate_per_hour.round / MINUTES_IN_AN_HOUR
    else
    production_rate_per_hour.round / MINUTES_IN_AN_HOUR
    end
  end
end
