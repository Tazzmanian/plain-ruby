p []

p [].class

p [1, 2, 3, 1..10, "String"]

p [[1,2,3],4,5,6,[7,8,9]]
puts [[1,2,3],4,5,6,[7,8,9]]

names = %w[Jack Jill Jogn James] # String array

p names

arr = Array.new
p arr
arr = Array.new(10) # [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
p arr
arr = Array.new(10, true) # [true, true, true, true, true, true, true, true, true, true]
p arr

p names[3]
p names[-1] # last element
p names.[](3) # = shorthand names[3]
p names.size
p names.length

p names.fetch(3)
p names.fetch(-1)
p names.fetch(10, "Out of bounds")

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p nums[3, 6]
p nums[3, 20]
p nums[3..6]
p nums.values_at(2, 4, 6, -1, 20) # [3, 5, 7, 9, nil]

p nums.slice(3)
p nums.slice(20)
p nums.slice(3, 6)
p nums.slice(3..6)

# override element
nums[4] = 50
p nums
nums[9] = 10
p nums
nums[19] = 20
p nums # [1, 2, 3, 4, 50, 6, 7, 8, 9, 10, nil, nil, nil, nil, nil, nil, nil, nil, nil, 20]
nums[4, 2] = [5, 60]
p nums
nums[4..5] = [5, 6]
p nums
nums[10, 18] = [11, 12]
p nums

p nums.count
p nums.count(2) # count occurrence

p nums.empty?
p nums.nil?

p nums.first # 1
p nums.last # 12

p nums.first(1) # [1]
p nums.last(1) # [12]

p nums.first(3)
p nums.last(3)

letters = ("a".."z").to_a
p letters

nums.push(13)
p nums 
nums.push(14, 15)
p nums 
nums << 16 << 17
p nums 
nums.insert(0, 0) # position 0 add 0
p nums 
nums.insert(18, 18)
p nums 
nums.insert(19, 19, 20) # position 19 add 19 and 20
p nums 

p nums.pop
p nums

p nums.pop(3)
p nums

# Shift
p nums.shift
p nums.shift(1)
p nums.shift(3)
p nums
p nums.unshift(4)
p nums.unshift(0, 1, 2, 3)

# compare
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

puts "Equality"
p a == b
p a == c
p a == d

p a === b
p a === c
p a === d

puts "Spaceship -1 0 1 when a > x => 1"
p a <=> b
p b <=> a
p a <=> c
p a <=> d
p a <=> 4 # different types result in nil
p a <=> ["", 1, 2] # nil

puts "is_a predicate"
p a.is_a?(Array)
p 1.23.is_a?(Float)
p 1.23.is_a?(Integer)
