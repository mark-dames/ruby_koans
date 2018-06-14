class Sieve
  def initialize(max_number)
    @max_number = max_number
  end
  
  def primes
    range = (2..@max_number).to_a
    range.each do |prime|
      range.reject! { |num| num % prime == 0 && num != prime }
    end
    range
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end