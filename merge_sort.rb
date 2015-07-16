def merge_sort(array)
  return array if array.length <= 1
  half_array = array.length / 2
  left = merge_sort(array[0..half_array - 1])
  right = merge_sort(array[half_array..-1])
  sorted = []
  until left.empty? || right.empty?
    left[0] <= right[0] ? sorted << left.shift : sorted << right.shift
  end
  return sorted + left + right
end

p merge_sort([108, 15, 50, 4, 8, 42, 23, 16, -3]) # => [-3, 4, 8, 15, 16, 23, 42, 50, 108]