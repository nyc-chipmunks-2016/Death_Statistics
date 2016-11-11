module Parser
  def self.parse
    data = JSON(open("https://data.cityofnewyork.us/resource/uvxr-2jwn.json").read)
    data.map { |row| HealthStatistic.new(row) }
  end
end
