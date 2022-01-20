puts "Blocks"
3.times { |i|
  puts "test #{i}"
}

3.times do |i|
  puts "test #{i}"
end

puts "each"

(1..5).to_a.each { |item|
  puts "Each item: #{item}"
}

puts "For loop"

nums = (1..3).to_a

p nums

for num in nums
  puts num
end

puts "num is accessed outside the for loop"
puts num

puts "Each with index"

nums.each_with_index do |num, i|
  puts "Pisition: #{i} = #{num}"
end

puts "Collect and map"

res = nums.map { |num| num ** 2}
p res

res = nums.collect { |num| num ** 3}
p res

p "While/until loop"

i = 0

while i < nums.length 
  p "While #{nums[i]}"
  i += 1
end

i = 0
until i == nums.length
  p "While #{nums[i]}"
  i += 1
end

puts "Break"
i = 0
while i < nums.length 
  if nums[i] > 1
    break
  end
  p "While break #{nums[i]}"
  i += 1
end

puts "Next"

while i < nums.length 
  unless nums[i] > 1
    next
  end
  p "While next #{nums[i]}"
  i += 1
end

puts "Revers array #{nums.reverse}"