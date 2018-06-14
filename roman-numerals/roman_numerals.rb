module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Integer
  NUMBER_TO_ROMAN = 
  { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V",
   6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX", 10 => "X",
  20 => "XX", 30 => "XXX", 40 => "XL", 50 => "L", 60 => "LX", 
  70 => "LXX", 80 => "LXXX", 90 => "XC", 100 => "C", 200 => "CC",
  300 => "CCC", 400 => "CD", 500 => "D", 600 => "DC", 700 => "DCC", 
  800 => "DCCC", 900 => "CM", 1000 => "M", 2000 => "MM", 3000 => "MMM"}
  
  def to_roman
    number = self #self reference here the calling object. 5.to_roman, self is 5
    roman_number = ""
    nth_place = determine_nth_place(number)

    loop do
      divisor, remainder = number.divmod(nth_place)
      
      roman_number << NUMBER_TO_ROMAN[divisor * nth_place] unless divisor == 0
      break if remainder == 0
      nth_place /= 10
      number = remainder
    end
    roman_number
  end
  
  private
  
  def determine_nth_place(number)
    number_size = number.to_s.size
    case number_size
      when 4 then 1000
      when 3 then 100
      when 2 then 10
      else 1
    end
  end
end




