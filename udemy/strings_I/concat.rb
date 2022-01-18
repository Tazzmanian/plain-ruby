f_name = "Test "
l_name = "test"

p f_name + l_name

f_name += l_name

p f_name

f_name.concat(l_name)

p f_name # overriden 

# shadow operator
p f_name << l_name << " TEST"

p f_name.prepend(l_name)

