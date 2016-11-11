class HealthData
  attr_reader :health_data

  def initialize
    @health_data = Parser.parse
  end

  def run
    View.interface_intro
    View.display(sort_list(select_data), @user_gender, @user_race, @user_year)
  end

  def sort_list(data)
    data.sort { |stat_a, stat_b| stat_b.count <=> stat_a.count }
  end

  def select_data
    filter = []
    while filter.empty?
      @user_gender = gender
      @user_race = race
      @user_year = year
      filter = health_data.select do |stat|
        stat.sex == @user_gender && stat.ethnicity == @user_race && stat.year == @user_year
      end
      View.invalid_input if filter.empty?
    end
    filter
  end

  def race
    View.race
  end

  def gender
    View.gender
  end

  def year
    View.year
  end
end
