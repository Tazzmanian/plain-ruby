def pass_control_on_condition
  puts "Inside"
  if block_given? # verify the block existence
    yield
  end
  puts "Back Inside"
end

pass_control_on_condition {puts "Inside the block"}

def pass_control_on_condition1
  puts "Inside"
  yield if block_given? 
  puts "Back Inside"
end

pass_control_on_condition1