def merge_sort(arr)
  if arr.size < 2
    return arr
  else
    left_side = merge_sort(arr.slice(0, arr.length / 2))
    right_side = merge_sort(arr.slice(arr.length / 2, arr.length))
    
    arr = []
    0.upto(left_side.size + right_side.size - 1) do
      if left_side == []
        arr << right_side.shift
      elsif right_side.empty?
        arr << left_side.shift
      else 
        if left_side[0] < right_side[0]
          arr << left_side.shift
        elsif right_side[0] < left_side[0]
          arr << right_side.shift
        else
        arr << left_side.shift
        end
      end
    end
     arr
  end   
end

    puts merge_sort([3, 5, 4, 2, 1, 8, 7, 5])
