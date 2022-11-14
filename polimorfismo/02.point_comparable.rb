require 'pry'

class Point
  include Comparable
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
  
  # TIPO de un objeto 3
   def +(other)
     Point.new(@x + other.x, @y + other.y)
     rescue
       raise TypeError, 
         "suma de Point con argumentos que no hacen QUACK como un Point" 
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
  
  #definición del método del Mixin
  def <=>(other)
    #return nil unless other.instance_of? Point
    @x**2 + @y**2 <=> other.x**2 + other.y**2
  end
  
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


# Búsqueda de nombres de métodos cuando se incluyen mixin

p0 = Point::ORIGIN
p1 = Point.new(1,1)
p2 = Point.new(2,2)

p03d = Point3D::ORIGIN
p13d = Point3D.new(1,1,1)
p23d = Point3D.new(2,2,2)

binding.pry

puts "Búsqueda de nombres de métodos cuando se incluyen mixin"
puts p1 + p2
puts p1 < p2
puts p1 <= p2
puts p1 > p2
puts p1 >= p2
puts p1 == p2
puts p1.between?(p0,p2)

puts p13d + p23d
puts p13d < p23d
puts p13d <= p23d
puts p13d > p23d
puts p13d >= p23d
puts p13d == p23d
puts p13d.between?(p03d,p23d)

