#!/usr/bin/env ruby

def bubble_sort(array)
  p array #print the input array
  unsorted = false #track our array's sorted-ness

  if array.length <= 1 #just return if array has 1 or 0 elements
    return
  end

  # Traverse array
  # If element is larger than the next, swap them, set unsorted to true since we swap something
  # Repeat until we do not swap any element, meaning array is sorted from smallest > largest
  while true do
    i = 0
    while i < (array.length - 1) do
      if array[i] > array[i + 1]
        array[i], array[i +1] = array[i+1], array[i]
        unsorted = true
      end
      i += 1
    end
    if unsorted == false
      return array
    else
      unsorted = false
    end
  end
end

array = [4,3,78,2,0,2]
p bubble_sort(array)

array2 = [5,1,3,6,8,1,3412,6,67,3,1423,6,5437,12,54,35,34,2,34,45,56,2,34,3,46,345,38]
p bubble_sort(array2)
