# explicite return
def add_two_numbers(num1, num2)
  puts "Calculating..."
  return num1 + num2
end

# implicite return - last line is consider as return
def add_two_numbers_v2(num1, num2)
  puts "Calculating..."
  num1 + num2
end

puts add_two_numbers(1, 3)
puts add_two_numbers_v2(2, 3)

def nothing 
end

p nothing

