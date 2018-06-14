class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(time)
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = 6 
end