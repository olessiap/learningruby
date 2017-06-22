def bsearch(arr, target, store = [])
  arr.sort!
  arr = arr.dup #copy of arr

  if arr.length == 1 && target != arr.first
    return nil
  end
  #find middle point of current sub_arr
  midpoint = arr.length/2
  midpoint_v = arr[midpoint]
    if target == midpoint_v
      store << arr #
      store.flatten!.sort! #
      return store.index(target)
    #until sub_arr.length == 0
    elsif target < midpoint_v
      store << arr[midpoint..-1] #
      arr = arr[0...midpoint]
      bsearch(arr, target, store)
    elsif target > midpoint_v
      store << arr[0...midpoint]
      arr = arr[midpoint..-1]
      bsearch(arr, target, store)
    end
end

p bsearch([1, 2, 3, 4, 5], 2)
