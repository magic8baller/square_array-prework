def square_array(numbers)
  new_numbers = []
  numbers.each { |element|  new_numbers << element**2 }
  new_numbers
end

p square_array([4, 8, 16, 32])
# => [16, 64, 256, 1024]


  # --- Array#map

def square_map(array)
  array.map{ |elem| elem**2 }
end

p square_map([4, 6, 8, 12])
# => [16, 36, 64, 144]



# other methods! :

  # ---  Array#inject([])

def square_inject(array)
  array.inject([]) { |arr, num| arr << num * num }
end

p square_inject([6, 10, 42, 7])
# => [36, 100, 1764, 49]



  # -- #each_with_object

def square_each_w_obj(array)
  array.each_with_object([]) { |elem, new_arr| new_arr << elem ** 2 }
end

p square_each_w_obj([5, 6, 7, 8])
# => [25, 36, 49, 64]



  # -- Array#each_index -> init with Array#new

def square_each_idx(array)
  final = Array.new(array.length)
  array.each_index { |i| final[i] = array[i]**2 }
  final
end

p square_each_idx([2, 3, 4, 5])
# => [4, 9, 16, 25]


    # *above: arg(array.length) creates new array w/ length == original arr. length
    #-Array.new(array.size) ==> [nil, nil, nil, nil]
    #-assign squares to e/ of those empty(nil) array vals at respective idx posxn
