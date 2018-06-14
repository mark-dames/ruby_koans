module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Phrase
  
  def initialize(phrase)
    @words = phrase.downcase.split(/,\s*| /)
    clean_up!(words)
    @occurences = Hash.new(0)
  end
  
  def word_count
    words.each { |word| occurences[word] += 1 }
    occurences
  end
  
  private
  
  attr_reader :words, :occurences
  
  def clean_up!(words)
    words.map! do |word|
      word.match(/\w+\'\w+/) ? word : word.gsub(/[^a-z0-9]/, "")
    end
  end
end