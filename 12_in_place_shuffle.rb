def get_random(floor, ceiling)
    rand(floor..ceiling)
  end
  
  def shuffle(array)
  
    # Shuffle the input in place.
    return array if array.length <= 1
    
    last_index_in_array = array.length - 1
    
    (0..array.length - 2).each do |index|
      random_choice_index = get_random(index, last_index_in_array)
      
      if random_choice_index != index
        array[index], array[random_choice_index] = array[random_choice_index], array[index]
      end
    end
  
  end
  
  sample_array = [1, 2, 3, 4, 5]
  puts "Sample array: #{sample_array}"
  
  puts 'Shuffling sample array...'
  shuffle(sample_array)
  puts sample_array.inspect