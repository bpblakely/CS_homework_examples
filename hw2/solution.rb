def func1(x)
  puts("Input filename")
  filename = gets.chomp
  aFile = File.new(filename, "r")
  i=1
  aFile.each do |line|
    if line.include? x
      puts String(i) +": "+ line
    end
    i += 1
  end
  aFile.close
end
func1("Check")
def func2(a)
  a.each {|element| puts element ** 3}
  puts "part b"
  a.each_slice(3) {|element| p element}
  puts "part c"
  puts {a.select {|e| e % 5 == 0}}
  puts "part d (not told to print)"
  b = a.map {|e| e**3}
  puts "part e (not told to print, but going to anyways)"
  z= a.inject {|prod,e| prod * e }
  puts z
end

ran = Array.new
(0..49).each do |i|
  ran.append(rand(10..100))
end
p "function 2"
func2(ran)

def func3A
  i1,i2 =1,1
  (1..34).each do
    i1,i2 = i2, i1+i2
  end
  return i1
end

def func3B(n)
  if n <= 1
    return n
  end
  return func3B(n-1) + func3B(n-2)
end
require 'benchmark'
puts Benchmark.measure {func3A}
puts ("loop ^ 7 lines of code")
puts Benchmark.measure {func3B(35)}
puts ("recursion ^ 6 lines of code")

class Tree
  attr_accessor :children, :node_name
  def initialize(hash)
      @node_name = hash.first[0]
      @children = hash.first[1].map { |k, v| Tree.new({k => v}) }
  end

  #traverse through each node in the tree
  def traverse(n)
    n.children.flat_map do |c|
      [c.node_name] + traverse(c)
    end
  end
end

tree=   Tree.new ( {'ggrandparent'   =>   {'grandparent1'   =>
    { 'parent1'   =>
          { 'child1'   =>   { } } ,'parent2'   =>   { 'child2'   =>   { } ,'child3'   =>
        { } }} ,'grandparent2'   =>{ 'parent3'   =>   { 'child4'   =>   { } } ,'parent4'   =>   { 'child5'   =>   { } ,'child6'   =>   {} }}}})
p "function 4"
z=tree.traverse(tree)
p z

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