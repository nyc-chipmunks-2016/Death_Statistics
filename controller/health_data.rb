class HealthData
  attr_reader :health_data

  def initialize
    @health_data = Parser.parse
  end

  def select_by_year
  end

  def run
    user_gender = gender
    user_race = race
    filter = health_data.select do |stat|
      stat.sex == user_gender && stat.ethnicity == user_race && stat.year == 2011
    end

    View.display(filter)

    # binding.pry
    p 'test'

  end

  def race
    View.race
  end

  def gender
    View.gender
  end

end
