def pass_control
  puts "inside"
  yield 
  puts "back inside"
end

pass_control {
  puts "inside block"
}


# I am very sad
# I am very ...
def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i {
  "sad" # implicit return 
}

who_am_i {
  "..."
}

def multiple_pass
  puts "Inside"
  yield
  puts "Back Inside"
  yield
end

multiple_pass {
  puts "Inside the block"
}

def multiple_pass1
  puts "Inside multiple_pass1"
  yield
  puts "Back Inside multiple_pass1"
  yield
end



result = multiple_pass1 {"Inside the block multiple_pass1"}
# "Inside the block multiple_pass1"
p result