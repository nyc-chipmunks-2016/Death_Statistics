class HealthData
  def initialize
    @health_data = Parser.parse
  end

  def run

    binding.pry
    p 'test'

  end

  def race
    View.race
  end

  def gender
    View.gender
  end

end
