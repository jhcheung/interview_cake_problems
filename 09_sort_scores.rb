#counting sort solution

def sort_scores(unsorted_scores, highest_possible_score)

    # Sort the scores in O(n) time.
    score_counts = [0] * (highest_possible_score + 1) #populate array of all 0s
  
    unsorted_scores.each do |score|
      score_counts[score] += 1 #for each score, uses index to iterate the count in the array by 1
    end
    
    sorted_scores = []
    
    highest_possible_score.downto(0) do |score| #counting down from highest score
      count = score_counts[score] #get the count from the array
      
      (0...count).each do |time| #loop the count times to add the score x times
        sorted_scores.push(score)
      end
    end
    
    sorted_scores
end
  
  
  