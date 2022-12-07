class CalorieCounting2
  def calorie_counting
    top_3_total_calories = [0, 0, 0]
    elf_total_calories = 0
    File.readlines("input.txt", chomp: true).each do |calories|
      if !calories.empty?
       elf_total_calories += calories.to_i
      else
        is_top_3_elf?(elf_total_calories, top_3_total_calories)
        elf_total_calories = 0
      end
    end
    puts top_3_total_calories.sum
  end

  def is_top_3_elf?(elf_total_calories, top_3_total_calories)
    if elf_total_calories > top_3_total_calories.min
      index = top_3_total_calories.find_index(top_3_total_calories.min)
      top_3_total_calories[index] = elf_total_calories
    end
  end
end

CalorieCounting2.new.calorie_counting