empty_hash = {}

p empty_hash
p empty_hash.class

hash = {"Teodor" => 35, "Aleks" => 19}

p hash
p hash["Teodor"]
p hash.fetch("Teodor")

# Symbols - uses less memory
:name
p :name.class
p :name.methods

hash = {:name => "Teodor",
        :age => 35}

p hash[:name]

# shorter way to create hash
hash = {name: "Teodor",
        age: 35}
p hash[:age]

# convert symbol to string
p :age.to_s
p :age.to_s.to_sym
p "School bus".to_sym # not a good practice

p hash["salad"] # nil
# p hash.fetch("salad") # error
p hash.fetch("salad", "Error message: Not found") # error

hash[:salad] = "Shopska"
p hash[:salad]

hash.store(:sushi, "vulcan")
p hash[:sushi]

hash.store(:sushi, "alqska")
p hash[:sushi]

p hash.length
p hash.empty?

hash.each { |key, value|
  p "Key: #{key}, Value: #{value}"
}

hash.each { |items|
  p "Key: #{items[0]}"
}

hash.each { |items|
  p "Value: #{items[1]}"
}

hash.each_key { |key|
  p "Key: #{key}"
}

hash.each_value { |value|
  p "Value: #{value}"
}

p hash.keys
p hash.values



