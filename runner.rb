require_relative 'model/health_statistic'
require_relative 'controller/health_data'
require_relative 'controller/parser'
require_relative 'view/view'
require 'open-uri'
require 'json'
require 'pry'
#
# health_data_api = JSON(open("https://data.cityofnewyork.us/resource/uvxr-2jwn.json").read)
# # health_data_parse = JSON.parse(health_data_api)
#
#
#
# test_api = health_data_api.map { |row| HealthStatistic.new(row) }
# binding.pry
#
# p 'test'


controller = HealthData.new.run
