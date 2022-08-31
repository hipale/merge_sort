def merge_sort(arr)
  if arr.length <= 2
    print arr
  else 
    right_side = arr.slice(0, (arr.length.to_f / 2).ceil)
    left_side = arr.slice((arr.length.to_f / 2).ceil, arr.length - 1)
    merge_sort(right_side.sort)
    merge_sort(left_side.sort)
  end   
end

    puts merge_sort([3, 1, 4, 2, 5, 4])
