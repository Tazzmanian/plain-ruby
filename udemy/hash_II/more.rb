hash = Hash.new(0) # Hash default value

hash[:sushi]=10
hash[:steak]=15

p hash[:fruits] # 0

hash = Hash.new("Not found")

hash[:sushi]=10
hash[:steak]=15

p hash[:fruits] # Not found

# convert to arr and vice versa
p hash.to_a
p hash.to_a.to_h


p hash.sort
p hash.sort.reverse

p hash.sort_by {|k, v| k}
p hash.sort_by {|k, v| v}

p hash.key?(:fruit)
p hash.key?(:sushi)
p hash.key?("sushi")

p hash.value?(10)
p hash.value?(7)

# in methods the currly braces can be omitted when the hash is the last element

def calc(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

p calc({tax: 0.05, tip: 0.30, price: 9.99})
p calc(tax: 0.05, tip: 0.30, price: 9.99)
p calc tax: 0.05, tip: 0.30, price: 9.99

p hash.delete(:steak)
p hash

hash[:sushi]=10
hash[:steak]=15

p hash
p hash.reject{ |k, v| v > 10}
p hash.select{ |k, v| v > 10}

hash1 = {salad: 10}

p hash.merge(hash1)