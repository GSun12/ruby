def swap(tmp,ai,ai1)
  tmp[ai], tmp[ai1] = tmp[ai1], tmp[ai]
  tmp
end


def bubbleSort(array)
  arrayLength=array.length
  loop do
    swapped = false
    (arrayLength-1).times do |i|
      if array[i]>array[i+1]
        array=swap(array,i,i+1)
        swapped =true
      end

    end
    break if not swapped
  end
  array
end

# p bubbleSort([4,2,1])