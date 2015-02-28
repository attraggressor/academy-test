include Warden::Test::Helpers
Warden.test_mode!
# Feature: City show page
#   As a user
#   I want to see city details and options
feature 'City show page' do
  # Scenario: User sees city details with edit options
  #   Given I am signed in
  #   When I click on city name
  #   Then I see city details and edit options
  scenario 'user sees city details' do
    city = FactoryGirl.create(:city)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit city_path(city)
    expect(page).to have_content 'Edit | Delete | Back'
    expect(page).to have_content city.name
    expect(page).to have_content city.short_name
  end
end
