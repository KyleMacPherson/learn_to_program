def sort arr
  recursive_sort arr, [] 
end

def recursive_sort unsorted_array, sorted_array
  
  loop do
    smallest = unsorted_array.min
    sorted_array << unsorted_array.delete(smallest)
    break if unsorted_array.length == 0
  end
  
p sorted_array
end