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
