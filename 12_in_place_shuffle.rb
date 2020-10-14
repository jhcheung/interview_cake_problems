

# Write a method for doing an in-place ↴ shuffle of an array.

# The shuffle must be "uniform," meaning each item in the original array must have the same probability of ending up in each spot in the final array.

# Assume that you have a method get_random(floor, ceiling) for getting a random integer that is >= floor and <= ceiling.


def get_random(floor, ceiling)
    rand(floor..ceiling)
  end
  
  def shuffle(array)
  
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