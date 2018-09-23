def square_array(numbers)
  new_numbers = []
  numbers.each { |element|  new_numbers << element**2 }
  new_numbers
end

square_array([3, 4, 6, 7])  # => [9, 16, 36, 49]


# with #each - need to push into new array, because is going over each element;
# map = returns a collection;

=begin
#with pushing squares into new array w/in block:

def square_map(array)
  result = []
  array.map {|elem| result << elem**2}
end
square_map([3, 4, 6, 7])
    # =>[[9, 16, 36, 49], [9, 16, 36, 49], [9, 16, 36, 49], [9, 16, 36, 49]]
=end

#right way:

def square_map(numbers)
  final = []
  final = numbers.map { |num| num**2 }
end


square_map([3, 4, 6, 7])   # => [9, 16, 36, 49]
