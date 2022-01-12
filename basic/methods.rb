def test(a1 = "Ruby", a2 = "Perl")
    puts "The programming language is #{a1}"
    puts "The programming language is #{a2}"
end
test "C", "C++"
test
test("JS", "TS")

# default return
def test1
    i = 10;
    k = 20; # returns the last statement
end

puts "#{test1}";

# return
def test
    i = 100
    j = 200
    k = 300
 return i, j, k
 end
 var = test
 puts var

 # var args
 def sample (*test) # by default methods are private
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
       puts "The parameters are #{test[i]}"
    end
 end
 sample "Zara", "6", "F"
 sample "Mac", "36", "M", "MCA"

 # Class methods
 class Accounts
    def reading_charge # by default is public
    end
    def Accounts.return_date # java static method
        puts "TEST"
    end
end

Accounts.return_date

# Aliases
def bar
end

alias foo bar # foo is alias for bar. The alias of the method keeps the current definition of the method, even when methods are overridden.
alias $MATCH $&

# Undef - cancel the method definition.
puts "#{defined? bar}"
undef bar
puts "#{defined? bar}"
puts "#{defined? foo}"