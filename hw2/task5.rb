class Shape
  attr_accessor :color
  def initialize(color="blue")
    @color = color
  end
end

class Circle < Shape
  attr_accessor :radius
  def initialize(color1=super(color), radius=2.0)
    super(color1)
    @radius = radius
  end
  def area
    return Math::PI * radius**2
  end
end
class Rectangle < Shape
  attr_accessor :len,:width
  def initialize(color1=super(color),width=1.0,len=1.0)
    super(color1)
    @width = width
    @len = len
  end
  def area
    return len * width
  end
end
def func5
  arr=Array.new
  (0..99).each { |i|
    if rand(2) == 0
      arr.append(Rectangle.new())
    else
      arr.append(Circle.new())
    end
  }
  return arr.sum{|e| e.area}
end
p "function 5"
p func5
