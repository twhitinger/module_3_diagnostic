class SearchController < ApplicationController
  def index

  @connection = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1.json'

  https://developer.nrel.gov/api/alt-fuel-stations/v1.json?

  fuel_type=E85,ELEC&zip=80203&limit=10&radius=6&api_key=5z1u69iK3FNXR9hTXRnF1XsUL9CQxkvvBFkjafcP&format=JSON
#     As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
binding.pry
@stations
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
