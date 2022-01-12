# while (true)
$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

 # while modifier (do while)
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num

# Until (false)
$i = 0
$num = 5
until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

# Until modifier
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num

# for
for i in 0..5
    puts "Value of local variable is #{i}"
end

# For each
(0..5).each do |i|
    puts "Value of local variable is #{i}"
end

# break
for i in 0..5
    if i > 2 then
       break
    end
    puts "Value of local variable is #{i}"
end

# next (continue)
for i in 0..5
    if i < 2 then
       next
    end
    puts "Value of local variable is #{i}"
end

# redo
for i in 0..5
    if i < 2 then
       puts "Value of local variable is #{i}"
       #redo # infinite loop
    end
end


# retry
puts "retry"
for i in 0..5
    begin
        if i > 2 
            raise;
        end
        puts "Value of local variable is #{i}"
    rescue 
        puts "Retry: #{i}"
        retry; # inifnite loop on the current scope
    end
end

