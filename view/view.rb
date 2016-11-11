module View

  def self.race
    puts "Enter a race:"
    gets.chomp.upcase
  end

  def self.gender
    puts "Enter a gender:"
    gets.chomp.upcase
  end

  def self.display(data)
    data.each do |stat|
      puts stat.cause_of_death
      puts stat.count
      puts stat.percent
    end
  end

end
