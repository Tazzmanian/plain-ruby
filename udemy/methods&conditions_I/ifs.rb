if 5 < 7
  puts true
end

# truthy
if 0
  puts true
end

if ""
  puts true
end

if []
  puts "arr"
end

if {}
  puts "hash"
end

if 1..3 # this should work, why not???
  puts "range"
end

if nil
  puts "nil"
end

color = ""

if color == "Green"
  puts "Green"
elsif color == "Red"
  puts "Red"
else 
  puts "transparent"
end

age = 35
id = true
ticket = "General Admission"

if age > 21 && id
  puts ticket
end

if age < 21 || id
  puts ticket
end