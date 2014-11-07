class ClassDataAnalysis

  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def lowest_temperature
    data.map do |instance|
      instance.low
    end.min
  end

  def highest_temperature
    data.map do |instance|
      instance.high
    end.max
  end

  def day_of_lowest_temperature
    array_of_low = []

    data.each do |instance|
      array_of_low << instance.low
    end
    array_of_low.index(array_of_low.min)+1
  end

  def day_of_highest_temperature
    array_of_high = []

    data.each do |instance|
      array_of_high << instance.high
    end
    array_of_high.index(array_of_high.max)+1
  end

  def average_temperatures
    data.map do |instance|
      (instance.high + instance.low) / 2.to_f
    end
  end

end
