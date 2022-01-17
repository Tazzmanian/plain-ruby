10.times {
  puts 1
}

10.times do 
  puts 1
  puts "Multiline block"
end

10.times do |i|
  puts "Multiline block #{i} iteration"
end

10.times { |i|
  puts 1
  puts i
}