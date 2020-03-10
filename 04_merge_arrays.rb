def merge_arrays(first_array, second_array)
    merged_array_size = first_array.length + second_array.length
    first_array_index = 0
    second_array_index = 0
    output_array = []

    while output_array.length < merged_array_size
        is_first_array_done = first_array_index >= first_array.length
        is_second_array_done = second_array_index >= second_array.length
        if !is_first_array_done && (is_second_array_done || first_array[first_array_index] <= second_array[second_array_index])
            output_array << first_array[first_array_index]
            first_array_index += 1
        else
            output_array << second_array[second_array_index]
            second_array_index += 1
        end
    end

    output_array
end

# icake solution
# def merge_arrays(my_array, alices_array)

#     # Set up our merged_array.
#     merged_array_size = my_array.length + alices_array.length
#     merged_array = Array.new(merged_array_size) 
# above is needed with non-dynamic arrays  
#     current_index_alices = 0
#     current_index_mine = 0
#     current_index_merged = 0
  
#     while current_index_merged < merged_array_size
  
#       is_my_array_exhausted = current_index_mine >= my_array.length
#       is_alices_array_exhausted = current_index_alices >= alices_array.length
  
#       # Case: next comes from my array.
#       # My array must not be exhausted, and EITHER:
#       # 1) Alice's array IS exhausted, or
#       # 2) the current element in my array is less
#       #    than the current element in Alice's array.
#       if !is_my_array_exhausted && (is_alices_array_exhausted ||
#          (my_array[current_index_mine] < alices_array[current_index_alices]))
  
#         merged_array[current_index_merged] = my_array[current_index_mine]
#         current_index_mine += 1
  
#       # Case: next comes from Alice's array.
#       else
#         merged_array[current_index_merged] = alices_array[current_index_alices]
#         current_index_alices += 1
#       end
  
#       current_index_merged += 1
#     end
  
#     merged_array
#   end
  