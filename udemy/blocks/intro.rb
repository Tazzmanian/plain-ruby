events = [2, 4, 6, 8, 10]

events.each { 
  |n| puts n ** 3
}

events.each do |n| 
  puts n ** 3
end