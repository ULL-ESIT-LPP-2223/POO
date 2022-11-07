require 'pry'
require 'm_numeros'
require 'm_letras'
require 'm_utiles'

puts Numeros::Aleatorio.new.random
puts Letras::Aleatorio.new.random

binding.pry

include Utiles

Utiles.algo

puts Utiles.class_name

