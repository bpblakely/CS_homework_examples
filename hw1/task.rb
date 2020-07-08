#Brian Blakely
def function1
  puts("Input 2 lines, using enter to separate them")
  file= File.new("savedFile.txt","w")
  line1=gets
  file.write(line1)
  line2=gets
  file.write(line2)
  file.close
end

#prints the describe stuff in the priority of what was first mentioned in the description of the problem
#My understanding is that it should only print one time for a file
def function2
  puts("Type the name of a file")
  fileName=gets.chomp
  aFile = File.new(fileName, "r")
  aFile.each do |line|
    words=line.split
    if line.match(/Python/) ||  line.match(/Java/)
      puts("This file is interesting")
      return 0
    elsif line.match(/Ruby/ )|| line.match(/ruby/)
      puts("This file is extraordinary")
      return 0
    end
  end
  puts("This file is so so")
   
end

def function3
  (1..100).each { |i|
    puts("The square of integer #{i} is #{i * i}")
  }
end

def function4
  puts("Pick a number between 10 and 100")
  # doesn't catch non-integer input mismatches
  num=gets.to_i
  if num<10 || num>100
    puts("incorrect input range")
    return 0
  end
  arr=Array.new
  #num-1 since apparently in ruby the last value in the range is inclusive, not exclusive like python
  (0..num-1).each { |i|
    arr.append(rand(2)) #this generates either a 0 or 1, in our case 0 = tails , 1= heads
  }
  # cool property of using 0 and 1 is if we want to count # of heads we can just sum the entire array
  # if we want the number of tails we can just do length - sum
  puts("H : T ratio,  #{arr.sum} : #{arr.length-arr.sum} ")
   
end

def func5
  file= File.new("story.txt","r")
  h=Hash.new(0)
  file.each do |line|
    words=line.split
    words.each do |word|
      word=word.gsub(/[.,()"?:;!]/,'') # remove all special characters in the sentence since we only want words
      if h.has_key?(word)
        h[word]=h[word]+1 #incrmement the value of a word
      else
        h[word]=1 #give a unique word the value of 1
      end
    end
  end
  #now we have a hash, h,  full of the word frequencies of the text file.
  sorted=h.sort_by { |word,frequency| -frequency} #sorts by frequency in descending order, stored as array [word,frequency]
  sum=sorted.transpose[1].sum
  puts ("Total words = #{sum}") # sum by transposing the array making [word,frequency]= [frequency] letting .sum be used
  puts ("Unique words = #{h.length}")
  puts ("Third most frequent word is '#{sorted[2][0]}' with a frequency of #{sorted[2][1]} out of #{sum} total words")
end

# Now call the functions as the following.
function1
function2
function3
function4
function5
