module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.size != strand2.size
    distance = 0
    strand1.chars.each_with_index do |char, idx|
      distance += 1 unless char == strand2[idx]
    end
    distance
  end
end