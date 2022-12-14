class CampCleanup
  
  def check_assignment_overlap
    num_overlap = 0
    
    File.readlines("input.txt", chomp: true).each do |pairs|
      # splitting the pairs into their respective arrays
      pairs_arr = pairs.split(/[\s,-]/)
      pair_1 = (pairs_arr[0]..pairs_arr[1]).to_a
      pair_2 = (pairs_arr[2]..pairs_arr[3]).to_a
      
      # determining if one pair fully contains the other
      if (pair_1 - pair_2).empty? || (pair_2 - pair_1).empty?
        num_overlap += 1
      end
    end

    puts num_overlap
  end
  
  CampCleanup.new.check_assignment_overlap
end