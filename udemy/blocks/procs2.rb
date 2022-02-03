def greeter
  puts "Inside"
  yield if block_given?
end

proc = Proc.new do
  puts "inside the proc"
end

greeter {
  puts "Inside block"
}

greeter(&proc)

hi = Proc.new { puts "Hi there"}

5.times(&hi)

# Proc can be call by itself
# Proc is an object block is not
hi.call

