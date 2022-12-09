class RucksackReorganization
  def calculate_priorities_sum

    # create function to populate this hash table instead of having to manually do it?
    letter_priorities  = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26,
      'A' => 27, 'B' => 28, 'C' => 29, 'D' => 30, 'E' => 31, 'F' => 32, 'G' => 33, 'H' => 34, 'I' => 35, 'J' => 36, 'K' => 37, 'L' => 38, 'M' => 39, 'N' => 40, 'O' => 41, 'P' => 42, 'Q' => 43, 'R' => 44, 'S' => 45, 'T' => 46, 'U' => 47, 'V' => 48, 'W' => 49, 'X' => 50, 'Y' => 51, 'Z' => 52}
    item_priorities_sum = 0

    File.readlines("input.txt", chomp: true).each do |items|
      item_1 = items.slice(0..items.size / 2)
      item_2 = items.slice(items.size / 2..items.size)
      item_priorities_sum += calculate_item_priority(item_1, item_2, letter_priorities)
    end
    puts item_priorities_sum
  end
  
  def calculate_item_priority (item_1, item_2, letter_priorities)
    item_1.split("").each do |letter|
       # find the letter that both item_1 and item_2 have
      if item_2.include? letter
        # determine the priority # for that shared letter
        return letter_priorities[letter]
      end
    end
  end
end

RucksackReorganization.new.calculate_priorities_sum