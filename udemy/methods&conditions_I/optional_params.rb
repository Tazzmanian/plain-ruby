def optionalMethod(name, age = 35) 
  puts "#{name}: #{age}"
end

optionalMethod "Teodor"
optionalMethod("Teodor")

optionalMethod "Teodor", "still 34"
optionalMethod("Teodor", "still 34")