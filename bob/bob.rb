module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Bob
  def self.hey(remark)
    return "Fine. Be that way!" if remark.match(/\A\s*\z/)
    
    letters = remark.gsub(/[^a-z]/i, '')
    if letters.match(/^[A-Z]+$/)
      remark.rstrip.end_with?('?') ? "Calm down, I know what I'm doing!" : "Whoa, chill out!"
    else
      remark.rstrip.end_with?('?') ? 'Sure.' : "Whatever."
    end
  end
end