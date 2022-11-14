require 'pry'

class Point
  attr_reader :x, :y
  
  def initialize(x,y)
    @x, @y = x, y
    if defined?(@@number_of_points)
      @@number_of_points += 1
    else
      @@number_of_points = 1
    end
  end
  
  #metodos de instancia
  def *(value)
    Point.new(@x * value, @y * value)
  end
  
  def -@
    Point.new(-@x, -@y)
  end
  
  # def +(other)
  #  Point.new(@x + other.x, @y + other.y)
  # end
  
  # TIPO de un objeto 1
#     def +(other)
#      raise TypeError, "Se espera como argumento un punto: Point" unless other.is_a?Point
#       Point.new(@x + other.x, @y + other.y)
#     end
  
  # TIPO de un objeto 2
   def +(other)
     raise TypeError, 
       "cadenat" unless other.respond_to?:x and other.respond_to?:y
     Point.new(@x + other.x, @y + other.y)
   end
  
  # TIPO de un objeto 3
  # def +(other)
  #   Point.new(@x + other.x, @y + other.y)
  #   rescue
  #     raise TypeError, 
  #       "suma de Point con argumentos que no hacen QUACK como un Point" 
  # end
  
  def to_s #invalidando 
    "( #{@x}, #{@y} )"
  end
  
  #metodo de clase
  def self.count
    @@number_of_points
  end
  
  #constante
  ORIGIN = Point.new(0,0)
end

#Herencia
class Point3D < Point
  attr_reader :z
  def initialize(x,y,z)
    super(x,y)
    @z = z
  end
  def to_s
    "(#{@x}, #{@y}, #{@z})"
  end
  
#  def to_s
#    s = "( "
#    s << super.to_s
#    s << ", #{@z} )"
#    s
#  end
  
  #constante
  ORIGIN = Point3D.new(0,0,0)
end


# Búsqueda de nombres de métodos 

p0 = Point::ORIGIN
p1 = Point.new(1,1)
p2 = Point.new(2,2)

p03d = Point3D::ORIGIN
p13d = Point3D.new(1,1,1)
p23d = Point3D.new(2,2,2)

binding.pry

# La CLASE de un objeto
# Un objeto tiene una CLASE bien definida en Ruby
# Esa CLASE nunca CAMBIARÁ durante el tiempo de vida del objeto

puts "CLASE"
puts p1.class
puts p1.class == Point
puts p1.instance_of?Point       # PREDICADO


puts p1.is_a?Point
puts p1.kind_of?Point           # equivalentes
Point === p1

puts p1.is_a?Object
puts p1.kind_of?Object
Object === p1

puts p1.is_a?BasicObject
puts p1.kind_of?BasicObject
BasicObject === p1


# ¿Es instancia de cualquier subclase?

puts p13d.class
puts p13d.class == Point3D
puts p13d.instance_of?Point3D   # PREDICADO

puts p13d.is_a?Point3D
puts p13d.kind_of?Point3D
puts p13d.is_a?Point
puts p13d.is_a?Object
puts p13d.is_a?BasicObject

# La clase de un objeto no incluye herencia

puts p1.instance_of?Object
puts p1.instance_of?BasicObject


puts p13d.instance_of?Point
puts p13d.instance_of?Object
puts p13d.instance_of?BasicObject


# El TIPO de un objeto es el CONJUNTO de MÉTODOS a los que puede responder
#
# El tipo de un objeto puede variar, está relacionado con la clase, pero
# la clase es sólo parte del tipo de un objeto.
#
# obj.metodo()  o metodo(obj)

puts "TIPO"
p1 + 3
