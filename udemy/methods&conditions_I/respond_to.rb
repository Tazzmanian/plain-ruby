num = 1000

# check existing methods
p num.respond_to?("next")
p num.respond_to?(:next)

p num.respond_to?("length")
p num.respond_to?(:length)
