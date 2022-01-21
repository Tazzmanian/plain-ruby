a = [1, 2, 3]
b = [1, 2, 3]
c = a


p a, b
p a.object_id, b.object_id
p a.equal?(b)

p a, c
p a.object_id, c.object_id
p a.equal?(c)

a.push(4)
p a, c

d = a.dup
p a, d
p a.object_id, d.object_id
p a.equal?(d)

a.push(5)
p a, d