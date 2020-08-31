def has_palindrome_permutation?(the_string) #passes
    chars = the_string.split('')
    chars_hash = {

    }
    chars.each do |char|
        if chars_hash[char]
            chars_hash[char] += 1
        else 
            chars_hash[char] = 1
        end
    end
    odd_count = 0
    chars_hash.each do |char, number|
        if number % 2 == 1
            odd_count += 1 
        end
    end
    
    if odd_count > 1
        false
    else 
        true
    end
end


# require 'set' provided answer, more efficient, uses set.

# def has_palindrome_permutation?(the_string)

#   # Track characters we've seen an odd number of times.
#   unpaired_characters = Set.new

#   (0...the_string.length).each do |i|
#     char = the_string[i]

#     if unpaired_characters.include? char
#       unpaired_characters.delete(char)
#     else
#       unpaired_characters.add(char)
#     end
#   end

#   # The string has a palindrome permutation if it
#   # has one or zero characters without a pair.
#   unpaired_characters.length <= 1
# end