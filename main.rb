def merge_sort(arr)
  if arr.length <= 2
    arr
  else 
    [
    merge_sort(arr.slice(0, (arr.length.to_f / 2).ceil)), 
    merge_sort(arr.slice((arr.length.to_f / 2).ceil, arr.length - 1))
    ]
  end   
end

    puts merge_sort([3, 1, 2, 4])
