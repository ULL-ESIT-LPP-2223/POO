Point = Struct.new(:x, :y)

p = Point.new(1,2)
puts p[:x]
puts p[0]
puts p[-2]
puts p.x
puts p.y
 
p.each{|x| puts x}
puts p.max
puts p.min
puts p.include?1
q = p.map{|i| i*2}
puts q

class Point
  # Para que no sea mutable
  # undef x=, y=, []=
  
  def + (other)
    Point.new(x + other.x, y + other.y)
  end

  def add!(other)
     self.x = x + other.x
     self.y = y + other.y
     self
  end

  def add(other)
    tmp = self.dup
    tmp.add!(other) 
  end
  
  def to_s
    "(#{x},#{y})"
  end
end

p1 = Point.new(1,0)
p2 = Point.new(0,1)

puts p1
puts p2

r = p1 + p2
puts r

p1.add!(p2)
puts p1

l = p1.add(p2)
puts l
