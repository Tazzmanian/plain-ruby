puts "hello".capitalize
puts "hello".upcase
puts "Hello".downcase
puts "Hello".swapcase
puts "Hello".reverse

word = "hello"

p word.capitalize
p word

word = word.capitalize
p word
word.upcase! # Bang method - modify the current variable - the same as word = word.upcase
p word

name = "Snow White"

p name.include?("S")
p name.include?("s")
p name.include?(" ")

p name.empty?
p "".empty?
p " ".empty?

p name.nil?
p "".nil?
p " ".nil?

p name[100].nil?