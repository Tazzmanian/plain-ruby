p [1, 3, 5, 7, 9].any?{|num| 
  num.even?
}

# do end block doesn't work 
# p [1, 2, 4, 7, 8].all? do |num| 
#   num.even?
# end 

p [1, 2, 4, 7, 8].all? { |num| 
  num.even?
}