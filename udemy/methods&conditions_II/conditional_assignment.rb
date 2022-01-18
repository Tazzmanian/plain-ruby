y = nil

y ||= 5 # y = 5 if y is nil. Similar to TS x = c | 10

puts y

y ||= 10 # y = y || 10

puts y

y = nil

x = y || 15

puts x