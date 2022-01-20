arr = [1, 3, 4, 9, 6, 4, 3, 1]

p arr.sort

words = ["caterpillar", "Kengoroo", "apple", "Zebra"]

p words.sort # ["Kengoroo", "Zebra", "apple", "caterpillar"] Uppercase are first


puts "Concat"
p words.concat(arr)

puts "Min max"
p arr.min
p arr.max

puts "Include"
p arr.include?(6)

puts "Find index" # the two methods are identical
p arr.find_index(9)
p arr.index(9)

puts "Select method"
odds = arr.select do |num|
  num.odd? # needs boolean
end
p odds

puts "reject method - oposite of select"
evens = arr.reject do |num|
  num.odd? # needs boolean
end
p evens

puts "Unpack"
multi = [[1, 2, 3], "a", "b", "c", [4, 5, 6]]
p multi[0]
first, a, b, c, second = multi
p first
p second
p a, b, c

puts "Partition - split the array by condition"
p arr.partition {|num| num > 5}

