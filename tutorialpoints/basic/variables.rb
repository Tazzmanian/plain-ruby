$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable" # string interpolation
   end
end
class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

class Customer
    @@no_of_customers = 0 # class variable
    def initialize(id, name, addr)
       @cust_id = id; # instance variable
       @cust_name = name;
       @cust_addr = addr;
       @@no_of_customers += 1;
    end
    def display_details()
       puts "Customer id #@cust_id";
       puts "Customer name #@cust_name";
       puts "Customer address #@cust_addr";
    end
    def total_no_of_customers()
        puts "Total number of customers: #@@no_of_customers"
     end
 end
 
# Create Objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
 
# Call Methods
cust1.display_details();
cust2.display_details();

cust1.total_no_of_customers();
cust2.total_no_of_customers();

class Example
    VAR1 = 100 # constant
    VAR2 = 200
    def show
       puts "Value of first Constant is #{VAR1}"
       puts "Value of second Constant is #{VAR2}"
    end
 end
 
 # Create Objects
 object = Example.new()
 object.show

=begin     
123                  # Fixnum decimal
1_234                # Fixnum decimal with underline
-500                 # Negative Fixnum
0377                 # octal
0xff                 # hexadecimal
0b1011               # binary
?a                   # character code for 'a'
?\n                  # code for a newline (0x0a)
12345678901234567890 # Bignum

123.4                # floating point value
1.0e6                # scientific notation
4E20                 # dot not required
4e+20                # sign before exponential
=end

puts 'escape using "\\"';
puts 'That\'s right';

# expressions in string
puts "Multiplication Value : #{24*60*60}";

# Arrays
ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

# Hashes
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

colors.each do |key, value|
    print key, " is ", value, "\n"
end

# Ranges inclusive
(10..15).each do |n| 
    print n, ' ' 
end

puts "";
# Ranges exclusive
(10...15).each do |n| 
    print n, ' ' 
end

puts "";

# Defined operator
foo = 42
puts "#{defined? foo}"    # => "local-variable"
puts "#{defined? $_}"     # => "global-variable"
puts "#{defined? bar}"    # => nil (undefined)

# Ruby Dot "." and Double Colon "::" Operators
MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST