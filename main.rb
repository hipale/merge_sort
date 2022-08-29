def merge_sort(arr)
  if arr.length <= 2
    if arr[0] > arr[-1]
      arr[0], arr[-1] = arr[-1], arr[0]
    else 
      arr
    end
    print arr
  else 
    new_arr = [
    (arr.slice(0, (arr.length.to_f / 2).ceil)), 
    (arr.slice((arr.length.to_f / 2).ceil, arr.length - 1))
    ]
    merge_sort(new_arr)
  end   
end

    puts merge_sort([3, 1, 4, 8, 55, 14])
