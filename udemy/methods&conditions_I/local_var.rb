def introduce_myself
  expression = "test" # local variable
  puts expression
end

introduce_myself

puts expression # in `<main>': undefined local variable or method `expression' for main:Object (NameError)