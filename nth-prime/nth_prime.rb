module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    return 2 if n == 1
    prime_count = 1
    number = 3
    loop do
      prime_count += 1 if is_prime?(number)
      return number if prime_count == n 
      number += 2
    end
  end
  
  def self.is_prime?(number)
    (2...number/2).all? {|num| number % num != 0 }
  end
end