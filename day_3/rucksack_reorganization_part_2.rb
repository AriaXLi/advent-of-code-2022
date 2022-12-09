class RucksackReorganization2
  def calculate_priorities_sum
    #2631
    item_priorities_sum = 0
    num_items_in_rucksack = 0
    items_arr = []
    #TODO finish populate_letter_priorities_hash
    letter_priorities  = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26,
      'A' => 27, 'B' => 28, 'C' => 29, 'D' => 30, 'E' => 31, 'F' => 32, 'G' => 33, 'H' => 34, 'I' => 35, 'J' => 36, 'K' => 37, 'L' => 38, 'M' => 39, 'N' => 40, 'O' => 41, 'P' => 42, 'Q' => 43, 'R' => 44, 'S' => 45, 'T' => 46, 'U' => 47, 'V' => 48, 'W' => 49, 'X' => 50, 'Y' => 51, 'Z' => 52}

    File.readlines("input.txt", chomp: true).each do |item|
      items_arr.append(item)
      num_items_in_rucksack += 1
      if num_items_in_rucksack == 3
        item_priorities_sum += calculate_item_priority(items_arr[0], items_arr[1], items_arr[2], letter_priorities)
        # since there's three items in this group now, need to clear the array and start looking at the next group
        items_arr.clear
        num_items_in_rucksack = 0
      end
    end
    puts item_priorities_sum
  end
  
  def populate_letter_priorities_hash
    letter_priorities  = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26,
      'A' => 27, 'B' => 28, 'C' => 29, 'D' => 30, 'E' => 31, 'F' => 32, 'G' => 33, 'H' => 34, 'I' => 35, 'J' => 36, 'K' => 37, 'L' => 38, 'M' => 39, 'N' => 40, 'O' => 41, 'P' => 42, 'Q' => 43, 'R' => 44, 'S' => 45, 'T' => 46, 'U' => 47, 'V' => 48, 'W' => 49, 'X' => 50, 'Y' => 51, 'Z' => 52}
  end

  def calculate_item_priority (item_1, item_2, item_3, letter_priorities)

    item_1.split("").each do |letter|
       # find the letter that all 3 items have
      if item_2.include? letter and item_3.include? letter
        # determine the priority # for that shared letter
        puts letter
        return letter_priorities[letter]
      end
    end
  end
end

RucksackReorganization2.new.calculate_priorities_sum