
def merge_sort(arr)
  if arr.length <= 1 then return arr end
  #split arr into 2
  #maybe else here
  left, right = arr.each_slice( (arr.size/2.0).round).to_a

  #split using recurssion
  merge_sorted(merge_sort(left),merge_sort(right))
end

#merge both arrays
def merge_sorted(a1,a2)
  #while elements in a1 or a2
  result = []
  while !a1.empty? or !a2.empty? #ar1.length > 0 || ar2.length > 0
    # compare the first 2 elements of 2 arrays
    #if a1 < a2 shift into result array
    if a2.empty? then result << a1.shift
    elsif a1.empty? then result << a2.shift
    elsif (a1.first < a2.first)
        result << a1.shift
      #else shift a2 into result array
    else (a2.first < a1.first)
          result << a2.shift
    end
  end

  return result
end

p merge_sorted([4,5], [1,8]) # [1, 4, 5, 8]
#p merge_sorted(arr[26, 1, 7, 3, 4, 5])
