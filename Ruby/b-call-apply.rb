=begin
Example aplly Unrelated methods 
that can be called only after they 
are associated with an object
=end
class Square
  def area
    @side * @side
  end
  def initialize(side)
    @side = side
  end
end

area_un = Square.instance_method(:area)

s = Square.new(12)
area = area_un.bind(s)
puts area.call   #=> 144




def f1(a,b)
    puts "f1(#{a}, #{b})"
end

arr = [1,2]

f1(1,2)

f1(*arr)
