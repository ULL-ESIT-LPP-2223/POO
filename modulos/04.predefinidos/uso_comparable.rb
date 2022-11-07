#Comparable
require 'pry'

class SizeMatters
  include Comparable
  attr :str
  def <=>(anOther)
    str.size <=> anOther.str.size
  end
  def initialize(str)
    @str = str
  end
  def inspect
    @str
  end
end

s1 = SizeMatters.new("Z")
s2 = SizeMatters.new("YY")
s3 = SizeMatters.new("XXX")
s4 = SizeMatters.new("WWWW")
s5 = SizeMatters.new("VVVVV")

binding.pry

puts s1 < s2                       #=> true
puts s1 <= s2                       #=> true
puts s1 > s2                       #=> true
puts s1 >= s2                       #=> true
puts s4.between?(s1, s3)           #=> false
puts s4.between?(s3, s5)           #=> true
puts ([ s3, s2, s5, s4, s1 ].sort).to_s   #=> [Z, YY, XXX, WWWW, VVVVV]
