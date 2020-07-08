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

