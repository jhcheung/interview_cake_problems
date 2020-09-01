class WordCloudData
    attr_reader :words_to_counts
  
    def initialize(input_string)
      @words_to_counts = {}

      # Count the frequency of each word
      self.split_words(input_string)
    end

    def add_word_to_hash(word)
        if @words_to_counts.include?(word)
            @words_to_counts[word] += 1
        elsif @words_to_counts.include? word.downcase
            @words_to_counts[word.downcase] += 1
        elsif @words_to_counts.include?(word.capitalize)
            @words_to_counts[word] = 1
            @words_to_counts[word] += @words_to_counts[word.capitalize]
            @words_to_counts.delete(word.capitalize)
        else
          @words_to_counts[word] = 1
        end
    end

    def split_words(input_string)
        current_word_index = 0
        current_word_length = 0 
        
        input_string.each_char.with_index do |character, index|

            if index == input_string.length - 1
              if self.is_letter?(character)
                current_word_length += 1
              end
              if current_word_length > 0
                current_word = input_string.slice(current_word_index,
                  current_word_length)
                self.add_word_to_hash(current_word)
              end
      
            elsif character == ' ' || character == "\u2014"
              if current_word_length > 0
                current_word = input_string.slice(current_word_index,
                  current_word_length)
                self.add_word_to_hash(current_word)
                current_word_length = 0
              end
      
            elsif character == '.'
              if index < input_string.length - 1 && input_string[index + 1] == '.'
                if current_word_length > 0
                  current_word = input_string.slice(current_word_index,
                    current_word_length)
                  self.add_word_to_hash(current_word)
                  current_word_length = 0
                end
              end
      
            elsif self.is_letter?(character) || character == '\''
              if current_word_length == 0
                current_word_index = index
              end
              current_word_length += 1
      
            elsif character == '-'
              if index > 0 && self.is_letter?(input_string[index - 1]) &&
                 self.is_letter?(input_string[index + 1])
                if current_word_length == 0
                  current_word_index = index
                end
                current_word_length += 1
              else
                if current_word_length > 0
                  current_word = input_string.slice(current_word_index,
                    current_word_length)
                  self.add_word_to_hash(current_word)
                  current_word_length = 0
                end
              end
            end
          end
    end

    def is_letter?(character)
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.include?(character)
    end
  end
  
  
  
  