class Pangram
  def self.pangram?(phrase)
    phrase.downcase.scan(/[a-z]/).uniq.size == 26 #amount of letters in alfabet
  end
end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end