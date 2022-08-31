def merge_sort(arr)
  if arr.length <= 2
    return arr
  else
    right_side = arr.slice(0, (arr.length / 2))
    left_side = arr.slice((arr.length / 2), arr.length)
    new_arr = [merge_sort(right_side.sort), merge_sort(left_side.sort)]
    print new_arr
  end   
end

    puts merge_sort([3, 1, 4, 2, 5, 4, 8, 9, 18, 11])
