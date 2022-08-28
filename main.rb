def merge_sort(arr, merge = false)
  print arr
  0.upto(arr.length - 2) do |num| 
    if arr.none?  { arr[num] > arr[num + 1]} && arr.length != 4
      return arr
    elsif merge == true
      new_arr = []
      first_half = arr[1]
      two_half = arr[1]
      until first_half = [] && two_half = []
        if first_half.first < two_half.first
           new_arr.push(first_half.first)
           puts "a"
        else 
          new_arr.push(two_half.first)
        end
        merge_sort(new_arr)
      end 
    elsif arr.length <= 2
      new_arr = [merge_sort(arr.slice(arr[0], arr.length / 2)), merge_sort(arr.slice(arr.length / 2 - 1, arr.last))]
      merge_sort(new_arr, true)
    end
  end
end

    puts merge_sort([1, 3, 2, 6])
