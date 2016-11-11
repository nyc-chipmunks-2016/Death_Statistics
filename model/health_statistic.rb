class HealthStatistic
  attr_reader :year, :ethnicity, :cause_of_death, :percent, :sex, :count

  def initialize(args = {})
    @year = args.fetch("year", "").to_i
    @ethnicity = args.fetch("ethnicity", "")
    @cause_of_death = args.fetch("cause_of_death", "")
    @percent = args.fetch("percent", "").to_i
    @sex = args.fetch("sex", "")
    @count = args.fetch("count", "").to_i
  end
end
