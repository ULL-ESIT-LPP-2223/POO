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
  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end
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

# Herencia
# Cuando una clase está basada en otra,
# y crea una nueva implementación 
# que mantiene el mismos comportamiento y 
# añade nuevas funcionalidades 
class Point3D < Point
  attr_reader :z
  def initialize(x,y,z)
    super(x,y)              #encadenamiento (chaining)
    @z = z
  end
  #invalidando (overriding)
#  def to_s
#    "(#{@x}, #{@y}, #{@z})"
#  end
  
  def to_s
    s = "( "
    s << super.to_s        #encadenamiento (chaining)
    s << ", #{@z} )"
    s
  end
  
  #constante
  ORIGIN = Point3D.new(0,0,0)
end

p0 = Point::ORIGIN
p1 = Point.new(1,1)
p2 = Point.new(2,2)

puts p0
puts p1
puts p2

puts p1 + p2

p03d = Point3D::ORIGIN
p13d = Point3D.new(1,1,1)
p23d = Point3D.new(2,2,2)

puts p03d
puts p13d
puts p23d

puts p13d + p23d

binding.pry
