class CalorieCounting
  def calorie_counting
    most_calories = 0
    elf_total_calories = 0
    File.readlines("input.txt", chomp: true).each do |calories|
      if !calories.empty?
        elf_total_calories += calories.to_i
      else
        if elf_total_calories > most_calories
          most_calories = elf_total_calories
        end
        elf_total_calories = 0
      end
    end
    puts most_calories
  end
end
CalorieCounting.new.calorie_counting 