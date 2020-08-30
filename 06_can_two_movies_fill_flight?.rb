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


# Bonus

#     What if we wanted the movie lengths to sum to something close to the flight length (say, within 20 minutes)?
#       instead of checking if movie_lengths_seen include?, do if (movie_lengths_seen & (match_movie_length - 20..match_movie_length + 20).to_a).any?
#     What if we wanted to fill the flight length as nicely as possible with any number of movies (not just 2)?
#       Would likely increase complexity. Instead of doing a simple include check, we would have to iterate through the rest of the movie and see if multiple of them added together equalled the matching time
#     What if we knew that movie_lengths was sorted? Could we save some space and/or time?
#       could space time. if we know it's in order, then we can stop checking for matches after the number exceeds/is less than our desired number.



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