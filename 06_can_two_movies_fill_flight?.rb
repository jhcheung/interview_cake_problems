require 'set'
# rewritten from scratch after seeing and studying solution, not reading it
def can_two_movies_fill_flight?(movie_lengths, flight_length)
    movie_lengths_seen = Set.new # can also just use hash, but instead of adding to hash, set hash to true.

    movie_lengths.any? do |movie_length| 
        matching_movie_length = flight_length - movie_length

        if movie_lengths_seen.include?(matching_movie_length)
            true
        else
            movie_lengths_seen.add(movie_length)
            false
        end
    end
end



# first solution
# def can_two_movies_fill_flight?(movie_lengths, flight_length)
#     movie_diff_hash = {

#     }

#     exact_movie_length? = false
#     movie_lengths.each do |movie_length|
#         if movie_diff_hash[flight_length - movie_length]
#             movie_diff_hash[flight_length - movie_length] += 1
#         else 
#             movie_diff_hash[flight_length - movie_length] = 1
#         end

#     end

#     movie_lengths.each do |movie_length|
#         if movie_length === flight_length / 2 && movie_diff_hash[movie_length] > 1
#             exact_movie_length? = true
#         elsif movie_diff_hash[movie_length]
#             exact_movie_length? = true
#         end
#     end

#     exact_movie_length?
# end