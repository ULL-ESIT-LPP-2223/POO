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
  
  # TIPO de un objeto 2
  def +(other)
    raise TypeError, 
      "Error: suma de Point con argumentos que no hacen QUACK como un Point " unless other.respond_to?:x and other.respond_to?:y
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
  
  # Definición del método del Mixin
  # El operador <=> define un ORDEN entre objetos
  #
  #                    -1 si left <  right
  # left <=> right  ->  0 si left == right
  #                     1 si left >  right
  #                     nil si no se pueden comparar
  def <=> (other)
    return nil unless other.instance_of? Point     # más restrictivo
    @x**2 + @y**2 <=> other.x**2 + other.y**2
  end

#   # Invalidación del ==
#   # Sin herencia      ++restrictivo
#   def == (other)
#     if other.instance_of? Point
#       @x == other.x && @y == other.y
#     elsif
#       false
#     end
#   end
# 
#   # Con herencia       +restrictivo
#   def == (other)
#     if other.is_a? Point
#       @x == other.x && @y == other.y
#     elsif
#       false
#     end
#   end
# 
#   # Con tipeado pato  -restrictivo
#   def == (other)
#     @x == other.x && @y == other.y
#     rescue
#       false
#   end
  
end

# Definición de la igualdad entre puntos 

p0 = Point::ORIGIN
p1 = Point.new(1,0)
p2 = Point.new(0,1)

puts p1 == p2

