class Squares
  def initialize(max_number)
    @numbers = (1..max_number)
  end
  
  def square_of_sum
    @numbers.reduce(&:+) ** 2
  end
  
  def sum_of_squares
    @numbers.reduce(0) {|sum, num| sum + num ** 2  }
  end
  
  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end