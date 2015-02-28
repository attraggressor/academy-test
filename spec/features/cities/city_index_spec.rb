include Warden::Test::Helpers
Warden.test_mode!
# Feature: City index page
#   As a user
#   I want to see a list of cities
feature 'City index page' do
  # Scenario: City listed on index page
  #   Given I am signed in
  #   Given I added city name with short name
  #   When I visit the cities index page
  #   Then I see added city
  scenario 'user sees added city with short name' do
    city = FactoryGirl.create(:city)
    visit cities_path
    expect(page).to have_content city.name
    expect(page).to have_content city.short_name
  end
end
