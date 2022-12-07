class RockPaperScissors
  def total_score
    total_score = 0
    File.readlines("input.txt").each do |round|
      round_arr = round.split
      # round_arr[0] is the opponent plays and round_arr[1] is what I play
      total_score += shape_score(round_arr[1]) + round_outcome_score(round_arr[0], round_arr[1])
    end
    puts total_score
  end

  def shape_score(my_play)
    case my_play
    when 'X'
      return 1
    when 'Y'
      return 2
    when 'Z'
      return 3
    else
      return 0
    end
  end

  def round_outcome_score(opponent_play, my_play)
    case my_play
    when 'X'
      if opponent_play == 'A'
        return 3
      elsif opponent_play == 'B'
        return 0
      else
        return 6
      end
    when 'Y'
      if opponent_play == 'A'
        return 6
      elsif opponent_play == 'B'
        return 3
      else
        return 0
      end
    when 'Z'
      if opponent_play == 'A'
        return 0
      elsif opponent_play == 'B'
        return 6
      else
        return 3
      end
    else
      return 0
    end
  end
end

RockPaperScissors.new.total_score