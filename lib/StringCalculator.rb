require "StringCalculator/version"

module StringCalculator
 def self.getSum(value)
    total = 0
    value.each_byte do |i|
      if i > 47 && i < 58 
        total = total + i.chr.to_i   
      elsif i == 45
        return "Rails Error: Negative number not allowed"
      end
    end
    return total
  end
end
