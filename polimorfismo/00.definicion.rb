require 'pry'

# El polimorfismo es el nombre que se le da al concepto de escribir código
# que puede trabajar con objetos de múltiples tipos y clases a la vez

# Ejemplo: to_s
# Se puede iterar y trabajar sobre objetos de diferentes CLASES,
# pero se obtiene el resultado esperado en cada caso
# siempre que cada clase implemente el mismo método

# FixNum

string_numero = 1000.to_s

# Arrays

string_array = [1,2,3].to_s

# Hash

string_hash = ({:name => 'Juan', :age => 10}).to_s


# Ejemplo: el método + 
# Este método depende enteramente de qué TIPO de cosa se esté
# intentando sumar
# El método + trabaja:
#         sumando números
#         concatenando cadenas
#         uniendo arrays

n = 999 + 1

s = "hola " + "mundo"

c = [1, 2, 3] + [4, 5, 6]

binding.pry
