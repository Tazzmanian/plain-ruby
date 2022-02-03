p ["1", "2", "3"].map {|n| n.to_i}

# ':to_i' becomes an object
p ["1", "2", "3"].map(&:to_i)

p [1, 2, 3].map(&:to_s)



p [1, 2, 3, 4, 5, 6].select {|n| n.even?}
p [1, 2, 3, 4, 5, 6].select(&:even?)
p [1, 2, 3, 4, 5, 6].reject(&:even?)