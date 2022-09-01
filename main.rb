def merge_sort(arr)
  if arr.length <= 2
    return arr
  else
    left_side = arr.slice(0, (arr.length / 2))
    right_side = arr.slice((arr.length / 2), arr.length)
    new_arr = [merge_sort(left_side), merge_sort(right_side)]
    min_val_r = new_arr[0]
    min_val_l = new_arr[1]
    arr = []

    0.upto(min_val_r.length + min_val_l.length - 2) do 
    if min_val_r.min < min_val_l.min && min_val_r.min != nil
      arr.push(min_val_r.min)
      min_val_r.delete(min_val_r.min)
    else 
      arr.push(min_val_l.min)
      min_val_l.delete(min_val_l.min)
    end
    end
    if min_val_l[0] != nil then arr.push(min_val_l[0]) 
    elsif min_val_r[0] != nil then arr.push(min_val_r[0]) 
    end
    return arr
  end   
end

    puts merge_sort([3, 5, 4, 2])
