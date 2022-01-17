p 10 == 10 # true

a, b, c = 10, 20, 30

p a == a # true
p a == b # false 

str = "10"

p str == a # false
p 5 == 5.0 # true
p 5.to_f == 5.0 # true

p a != a # false
p a != b # true 

str = "10"

p str != a # true
p 5 != 5.0 # false
p 5.to_f != 5.0 # false


p a < a 
p a < b 

p 5 < 5.0 
p 5.to_f < 5.0 

p a > a 
p a > b 

p 5 > 5.0 
p 5.to_f > 5.0 


p a >= a 
p a >= b 

p 5 >= 5.0 
p 5.to_f >= 5.0 
