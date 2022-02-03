squares_lambda = lambda { |n| n ** 2 }
squares_proc = Proc.new { |n| n ** 2 }

p [1,2,3].map(&squares_proc)
p squares_proc.call(5)

p [1,2,3].map(&squares_lambda)
p squares_lambda.call(5)

some_lambda = lambda { |name, age| "#{name} is #{age} years old" }
some_proc = Proc.new { |name, age| "#{name} is #{age} years old" }


# "Teodor is 35 years old"
# "Teodor is  years old"
p some_proc.call("Teodor", 35)
p some_proc.call("Teodor")


# "Teodor is 35 years old"
# Error: wrong number of arguments (given 1, expected 2)
p some_lambda.call("Todorov", 35)
# p some_lambda.call("Todorov")

def diet
  status = lambda {return "You gave in"} # in normal block we can not use return
  status.call
  "You completed the diet"
end

p diet

def diet1
  status = Proc.new {return "You gave in"} # returns on the entire method
  status.call
  "You completed the diet"
end

p diet1



