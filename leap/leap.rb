module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Year
  def self.leap?(year)
    year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  end
end