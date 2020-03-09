def reverse_chars!(chars, rev_start, rev_end)
    left_index = rev_start
    right_index = rev_end

    while left_index < right_index
        chars[left_index], chars[right_index] = chars[right_index], chars[left_index]
        left_index += 1
        right_index -= 1
    end
    return chars
end

def reverse_words!(words)
    reverse_chars!(words, 0, words.length - 1)

    left_index = 0
    word_start = 0
    word_end = 0

    while left_index <= words.length - 1
        if words[left_index] == " "
            word_end = left_index - 1
            reverse_chars!(words, word_start, word_end)
            word_start = left_index + 1
        elsif left_index == words.length - 1
            word_end = left_index
            reverse_chars!(words, word_start, word_end)
        end
        left_index += 1
    end

    return words
end

# icake solution
# def reverse_words!(message)

#     # First we reverse all the characters in the entire message.
#     reverse_characters!(message, 0, message.length - 1)
  
#     # This gives us the right word order
#     # but with each word backward.
  
#     # Now we'll make the words forward again
#     # by reversing each word's characters.
  
#     # We hold the index of the *start* of the current word
#     # as we look for the *end* of the current word.
#     current_word_start_index = 0
  
#     (0..message.length).each do |i|
  
#       # Skip unless we're at the end of the current word.
#       next unless i == message.length || message[i] == ' '
  
#       reverse_characters!(message, current_word_start_index, i - 1)
  
#       # If we haven't exhausted the string our
#       # next word's start is one character ahead.
#       current_word_start_index = i + 1
#     end
#   end
  
#   def reverse_characters!(message, left_index, right_index)
  
#     # Walk towards the middle, from both sides.
#     while left_index < right_index
  
#       # Swap the left char and right char.
#       message[left_index], message[right_index] =
#         message[right_index], message[left_index]
  
#       left_index  += 1
#       right_index -= 1
#     end
  
  
#   end
  
  