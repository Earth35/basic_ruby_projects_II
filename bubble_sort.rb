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
  array
end

def bubble_sort_by (array)
  loop do
    swapped = false
	pos = 0
	array.length.-(1).times do
	  if yield(array[pos], array[pos+1]) > 0
	    array[pos], array[pos+1] = array[pos+1], array[pos]
		swapped = true
	  end
	  pos += 1
	end
	break if !swapped
  end
  array
end

example_i = [4,3,78,2,0,2]
example_s = ["hi","hello","hey"]
# asc numeric
print "#{bubble_sort(example_i)}\n"
# asc by string length
print "#{bubble_sort_by(example_s) do |left, right|
  left.length - right.length
end}\n"
# desc by string length
print "#{bubble_sort_by(example_s) do |left, right|
  right.length - left.length
end}\n"