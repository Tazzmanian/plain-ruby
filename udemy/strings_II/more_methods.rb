puts "Split"
txt = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
p txt.split
txt = "Lorem Ipsum is simply dummy text. of the printing and typesetting industry"
p txt.split(".")

puts "Iterate string characters"
txt.each_char {|char| print char}
print "\n"
p txt.split("")
p txt.chars

puts "Join"
p txt.chars.join
p txt.chars.join(",")

puts "Count"
p txt.count("s")
p txt.count("sm") # count all s and ms

puts "Index and Rindex"
p txt.index("d")
p txt.index("d", 23) # search from position
p txt.rindex("d")
p txt.index("S")
p txt.index("Ipsum")

puts "Insert"
txt.insert(5, " Teodor")
p txt

txt.insert(-15, " Teodor ")
p txt

puts "Squeeze - remove sequentialy repeated letters or specific character"
p txt.squeeze
p txt.squeeze("m")

puts "Clear"
p txt.clear

puts "Delete char or characters"
txt = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
p txt.delete("tsi")



