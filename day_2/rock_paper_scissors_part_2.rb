#!/usr/bin/env ruby
class RockPaperScissors2
  def total_score
    total_score = 0
    shape_combination_scores = {'A X' => 3, 'A Y' => 1, 'A Z' => 2, 'B X' => 1, 'B Y' => 2, 'B Z' => 3, 'C X' => 2, 'C Y' => 3, 'C Z' => 1}

    File.readlines("input.txt", chomp: true).each do |round|
      shape_score = shape_combination_scores[round]
      round_arr = round.split
      total_score += calculate_round_outcome_score(round_arr[1]) + shape_score
    end
    
    puts total_score
  end


  def calculate_round_outcome_score(my_play)
    case my_play
    when 'X'
      return 0
    when 'Y'
      return 3
    when 'Z'
      return 6
    else
      return 0
    end
  end
end

RockPaperScissors2.new.total_score