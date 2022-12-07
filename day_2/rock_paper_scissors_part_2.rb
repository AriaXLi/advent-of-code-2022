class RockPaperScissors2
  def total_score
    total_score = 0
    File.readlines("input.txt").each do |round|
      round_arr = round.split
      # round_arr[0] is the opponent plays and round_arr[1] is what I play
      total_score += round_outcome_score(round_arr[1]) + shape_score(round_arr[0], round_arr[1])
    end
    puts total_score
  end

  def round_outcome_score(my_play)
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

def shape_score(opponent_play, round_outcome)
  #could I re-implement this but with a hash table so there's less comparisons?
  case opponent_play
  when 'A'
    if round_outcome == 'X'
      return 3
    elsif round_outcome == 'Y'
      return 1
    else
      return 2
    end
  when 'B'
    if round_outcome == 'X'
      return 1
    elsif round_outcome == 'Y'
      return 2
    else
      return 3
    end
  when 'C'
    if round_outcome == 'X'
      return 2
    elsif round_outcome == 'Y'
      return 3
    else
      return 1
    end
  else
    return 0
  end
end

RockPaperScissors2.new.total_score