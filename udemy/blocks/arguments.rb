def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Teodor") { |name|
  puts "#{name} is 35"
}