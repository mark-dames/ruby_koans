module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Grains
  def self.square(square_number)
    raise ArgumentError if square_number < 1 || square_number > 64
    
    grains = 1
     2.upto(square_number) { |_| grains *= 2 }
    grains
  end
  
  def self.total
    (1..64).reduce(0) { |total_grains, square_number| total_grains + square(square_number) }
  end
end