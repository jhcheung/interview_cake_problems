def reverse_string!(string)
    left_index = 0
    right_index = string.length - 1

    while left_index < right_index
        # placeholder = string[left_index]
        # string[left_index] = string[right_index]
        # string[right_index] = placeholder
        # uses extraneous variable

        string[left_index], string[right_index] = string[right_index], string[left_index]
        left_index += 1
        right_index -= 1
    end
end