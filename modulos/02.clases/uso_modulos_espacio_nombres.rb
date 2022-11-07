require 'pry'
require 'm_numeros'
require 'm_letras'

binding.pry

puts Numeros::Aleatorio.new.random
puts Letras::Aleatorio.new.random

