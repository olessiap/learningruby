# # Bubble Sort
#
# Implement the bubble sort algorithm to sort an array of integers.
# What are the worst and best case asmyptotic time and
# space complexity of your solution?
#
# https://en.wikipedia.org/wiki/Bubble_sort
#checks e with e+1 and swaps
def bubble_sort(arr)
  loop do

  swaped = false

  n = arr.length
  (n-1).times do |e| # loops through block twice
    if arr[e] > arr[e+1]
      arr[e], arr[e+1] = arr[e+1], arr[e]
      swaped = true
    end
  end
  break if !swaped #breaks when swaped is false
end
arr
end

p bubble_sort([1, 3, 2])
