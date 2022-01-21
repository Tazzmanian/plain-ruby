words = %w[aaaaaaaaa bbbbbbbbbbbb ccccccccc ddddd eee f]

# find and detect are the same
p words.find { |word| word.length > 8}
p words.detect { |word| word.length > 8}