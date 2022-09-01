def merge_sort(arr)
  if arr.length <= 2
    return arr
  else
    left_side = arr.slice(0, (arr.length / 2).to_f.ceil)
    right_side = arr.slice((arr.length / 2).to_f.ceil, arr.length)
    new_arr = [merge_sort(left_side), merge_sort(right_side)]
    min_val_r = new_arr[0]
    min_val_l = new_arr[1]
    arr = []

  0.upto(min_val_r.length + min_val_l.length - 2) do 
    if  min_val_r.min < min_val_l.min
      arr.push(min_val_r.min)
      min_val_r.delete(min_val_r.min)
    else 
      arr.push(min_val_l.min)
      min_val_l.delete(min_val_l.min)
    end
  end

  if min_val_l == nil then arr.push(min_val_r[0])
  elsif min_val_r == nil then arr.push(min_val_l[0]) 
  end
    
    print arr
  end   
end

    puts merge_sort([3, 5, 4, 2, 6, 7, 9, 7])
