# define a method bubble_sort that takes an array and returns a sorted array
# get the indices of the array
# for the first two numbers, compares them and swap the numbers if the first is greater than the second
# repeat the process for the rest of the numbers make sure to wrap the array in a loop
# return the sorted array
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts bubble_sort(array).to_s

