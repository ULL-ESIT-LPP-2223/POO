#! /home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby 
# Ejemplo de Programación Estructurada o Modular

def perimetro_cuadrado(longitud_lado)
  longitud_lado * 4
end

def area_cuadrado(longitud_lado)
  longitud_lado * longitud_lado
end

def perimetro_triangulo(lado1, lado2, lado3)
  lado1 + lado2 + lado3
end

def area_triangulo(base, altura)
  base * altura / 2
end

puts "Perímetro de un cuadrado de lado 4: #{perimetro_cuadrado(4)}"
puts "Área de un cuadrado de lado 4: #{area_cuadrado(4)}"
puts "Perímetro de un triángulo de lados 6: #{perimetro_triangulo(6, 6, 6)}"
puts "Área de un triángulo de base y altura 6: #{area_triangulo(6, 6)}"
