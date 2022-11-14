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
  
  #definición del método del Mixin
  def <=>(other)
    #return nil unless other.instance_of? Point
    @x**2 + @y**2 <=> other.x**2 + other.y**2
  end

  # obj.coerce(arg)
  # En general devuelve [arg.convertido, obj]
  # def coerce(other)
  #   [self, other]
  # end
end

binding.pry

p = Point.new(1,1)
puts p * 3
puts 3 * p
