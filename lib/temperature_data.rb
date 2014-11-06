class TemperatureData
  attr_reader :day, :high, :low

  def initialize(day, high, low)
    p @day = day
    @high = high
    @low = low
  end
end
