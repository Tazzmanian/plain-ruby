a = 'This is a simple Ruby string literal';
puts a;
a = 'Won\'t you read O\'Reilly\'s book?';
puts a;

# Expression Subsitution `#{ ... }`
x, y, z = 12, 36, 72 # parallel assignment
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."

# General Delimited Strings
# %{Ruby is fun.}  equivalent to "Ruby is fun."
# %Q{ Ruby is fun. } equivalent to " Ruby is fun. "
# %q[Ruby is fun.]  equivalent to a single-quoted string
# %x!ls! equivalent to back tick command output `ls`

# String Built-in Methods
myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"

# Unpack directive
print "abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
print "\n"
print "abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
print "\n"
print "abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
print "\n"
print "aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
print "\n"
print "aaa".unpack('h2H2c')               #=> ["16", "61", 97]
print "\n"
print "\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
print "\n"
print "now = 20is".unpack('M*')           #=> ["now is"]
print "\n"
print "whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]
print "\n"