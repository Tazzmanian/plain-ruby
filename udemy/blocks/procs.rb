a = [1,2,3,4,5]
b = [6,7,8,9,10]
c = [11,12,13,14,15]

p a, b, c

a_cub = a.map {|n| n ** 3}
b_cub = b.map {|n| n ** 3}
c_cub = c.map {|n| n ** 3}

p a_cub, b_cub, c_cub

cubes = Proc.new  { |n| n ** 3 }

a_cubs = a.map(&cubes)
b_cubs = b.map(&cubes)
c_cubs = c.map(&cubes)

p a_cubs, b_cubs, c_cubs

squares = Proc.new  { |n| n ** 2 }

b_sq = b.map(&squares)

p b_sq

# replace
# a_cubs = a.map(&cubes)
# b_cubs = b.map(&cubes)
# c_cubs = c.map(&cubes)
a_cubs, b_cubs, c_cubs = [a, b, c].map {|arr| arr.map(&cubes)}
p a_cubs, b_cubs, c_cubs


currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new {|currency| currency * 0.95}
to_rupees = Proc.new {|currency| currency * 68.13}
to_pesos = Proc.new {|currency| currency * 20.67}

p currencies.map(&to_euros)

def talk_about(name, &myproc)
  puts "Let me tell you about #{name}"
  myproc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius"
  puts "#{name} is a hmh"
end

bad_things = Proc.new do |name|
  puts "#{name} is sad"
  puts "#{name} is 35"
end

talk_about("Teodor", &good_things)
talk_about("Teodor", &bad_things)

