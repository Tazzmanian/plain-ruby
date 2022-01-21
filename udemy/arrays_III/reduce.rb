nums = [1, 2, 3, 4, 4, 5]

p nums.reduce(0) { |prev, cur|
  prev + cur
}

# p nums.reduce(0) do |prev, cur|
#   prev += cur
# end

# inject do the same thing
p nums.inject(0) { |prev, cur|
  prev + cur
}