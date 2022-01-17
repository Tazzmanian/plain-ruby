puts "What's your name?"
name = gets.chomp # chomp removes the trailing /n.
p "Your name is #{name}"

puts "Age?"
age = gets.chomp.to_i # to integer
p "Next year you are #{age + 1}"