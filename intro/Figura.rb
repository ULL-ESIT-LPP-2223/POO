#! /home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby 
# Clase Figura.rb

class Figura 
end

class Cuadrado < Figura

      
  # Un método de instancia es un método que es invocado sobre una instancia de la clase.

  def initialize(lado)   # Las variables locales existen en el ámbito de un método
      
      
    # Las variables de instancia, o variables del objeto, 
    # tienen un ámbito restringido al del objeto actual,
    # empiezan con un símbolo de @
    @lado = lado
     
    # ENCAPSULACIÓN DE LAS VARIABLES DE INSTANCIA
    # Las variables de instancia de un objeto sólo pueden ser accedidas por los 
    # métodos de instancia de ese objeto
          
  end
  
  def area
    @lado * @lado
  end
  
  def perimetro
    @lado * 4
  end
  
  # Método de instancia para mejorar la información que se presenta de una clase
  def to_s
    "#{self.class}: #{@lado}"
  end
  
end

class Triangulo < Figura
    def initialize(base, altura, lado1, lado2, lado3)
        @base = base
        @altura = altura
        @lado1 = lado1
        @lado2 = lado2
        @lado3 = lado3
    end
    def area
        @base * @altura/2
    end
    def perimetro
        @lado1 + @lado2 + @lado3
    end
    def to_s
    "#{self.class}: #{@lado1}, #{@lado2}, #{@lado3}, #{@base}, #{@altura}"
    end
end

# Cuando se llama a un método de instancia el valor de 'self' es una instancia de la clase
# en la que el método está definido.

un_cuadrado = Cuadrado.new(5)

# Una vez invocado el método initialize, dentro del new, se hace automáticamente PRIVADO (private)
# Por lo tanto, un objeto puede llamar al método initialize, pero los programadores
# NO PUEDEN EXPLICITAMENTE invocar a initialize sobre un_cuadrado, para reinicializar su estado.

puts "Se ha definido un #{un_cuadrado}"
puts "Area #{un_cuadrado.area}"
puts "Perimetro #{un_cuadrado.perimetro}"


un_triangulo = Triangulo.new(3,3,3,3,3)

puts "Se ha definido un  #{un_triangulo}"
puts "Area #{un_triangulo.area}"
puts "Perimetro #{un_triangulo.perimetro}"
