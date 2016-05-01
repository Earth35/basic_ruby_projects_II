def bubble_sort (array)
  loop do
	swapped = false
	pos = 0
    array.length.-(1).times do
	  if array[pos] > array[pos+1]
	    array[pos], array[pos+1] = array[pos+1], array[pos]
		swapped = true
	  end
	  pos += 1
	end
	break if !swapped
  end
  return array
end

example = [4,3,78,2,0,2]
print bubble_sort(example)