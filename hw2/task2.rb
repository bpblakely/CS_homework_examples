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
