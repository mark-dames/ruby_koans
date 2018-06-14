module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class RunLengthEncoding
  def self.encode(plain_text)
    count = 0
    encoded = ''
    plain_text.chars.each_with_index do |char, idx|
      count += 1
      if plain_text[idx+1] != char
        count == 1 ? encoded << char : encoded << "#{count}#{char}"
        count = 0
      end
    end
    encoded
  end
  
  def self.decode(encoded_text)
    splitted = encoded_text.scan(/\d*[a-z ]{1}/i)
    decoded = splitted.map do |data|
      data.size == 1 ? data : data[-1] * data[0...-1].to_i
    end
    decoded.join
  end
end