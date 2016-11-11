module View

  def self.interface_intro
    system "clear"
    puts Rainbow("Welcome to Death Statisics 💀").bg(:blue)
  end

  def self.race
    puts "Enter a race (non-hispanic white, non-hispanic black, hispanic, asian & pacific islander):".yellow
    gets.chomp.upcase
  end

  def self.gender
    puts "Enter a gender (male/female):".yellow
    gets.chomp.upcase
  end

  def self.year
    puts "Enter a year from 2007-2011 to see statistics: ".yellow
    gets.to_i
  end

  def self.display(data, gender, race, year)
    puts "Information for: ".blue + "#{gender} ".red + ", #{race}".red
    puts "Year: ".blue + "#{year}\n".red
    data.each do |stat|
      puts "Cause Of Death: ".blue + "#{stat.cause_of_death}".yellow
      puts "Count: ".blue + "#{stat.count}".yellow
      puts "Percentage: ".blue + "#{stat.percent}%\n".yellow
    end
  end

  def self.invalid_input
    puts "Invalid input, please try again".red
  end

end
