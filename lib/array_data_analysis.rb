class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
    @data.map do |array|
      array.last
    end.min
    # We have an array of arrays
    # we want a collection of the last index of each array

    # iterate through each array √
    # iterate through a collection of the last index
    # of each array √
    # return the lowest number in that collection √
  end

  def highest_temperature
    @data.map do |array|
      array[1]
    end.max
  end

  def day_of_lowest_temperature
    @data.detect do |array|
      array.include?(lowest_temperature)
    end.first
  end

  def day_of_highest_temperature
    @data.detect do |array|
     array.include?(highest_temperature)
   end.first
  end

  def average_temperatures
    @data.map do |row, temp1, temp2|
      (temp1 += temp2) / 2.to_f
    end
  end

end
