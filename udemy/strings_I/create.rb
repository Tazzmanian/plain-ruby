puts "string"

name = "Teodor"
tes = "test"
puts name, tes

space = " "
p space
puts space.length, space.class

name = String.new("Teodor")

p name

name = String("Teodor") # ??? Why does this work

p name

p 5.to_s