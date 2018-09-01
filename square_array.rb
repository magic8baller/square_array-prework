def square_array(numbers)
  numbers.each do |element|
    element == element**2
  end
  return numbers
end
