def custom_each(arr) 
  i = 0
  while i < arr.size
    yield(arr[i]) if block_given?
    i += 1
  end
end
arr = [1,2,3,4,5]
p arr
custom_each(arr) { |n| 
  puts n ** 2
}

custom_each(arr) { |n| 
  puts n ** 3
}