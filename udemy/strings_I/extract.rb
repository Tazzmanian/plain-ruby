story = "dfasdasadfas fasdfas fasdfasd fasdfa  fgfdg shgf jhgjhkk  kghjkhg l"

p story.length

puts story[10]

story[10] = "A"
story[20, 22] = "TEST"
puts story
story[20..22] = "TEST"
puts story

p story[200]

p story.slice(10)

p story[-1] # read from right to left

p story.slice(-1)

p story[13, 7]

p story.slice(13, 7)

p story[-10, 5]

p story.slice(-10, 5)

p story[20..30]
p story.slice(20..30)

p story[20...30]
p story.slice(20...30)

p story[20..300]
p story.slice(20..300)

p story[20..-9]
p story.slice(20..-9)

p story[20...-9]
p story.slice(20...-9)