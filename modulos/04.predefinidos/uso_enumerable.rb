# module Enumerable
# By default is included in Array class

require 'pry'

a = [1,2,3,4,5,6].each{ |i| puts i}

b = [1,2,3,4,5,6].collect{ |i| i.to_s + "x"}

c = [1,2,3,4,5,6].detect{ |i| i.between?(2,3)}

d = [1,2,3,4,5,6].select{ |i| i.between?(3,5)}

e = [2,1,6,5,4,3].sort

f = [2,1,6,5,4,3].max

g = [2,1,6,5,4,3].min

binding.pry

