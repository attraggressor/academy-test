include Warden::Test::Helpers
Warden.test_mode!
# Feature: City edit page
#   As a user
#   I want to edit city
#   So I can change city name and/or short name
feature 'City edit page' do
  # Scenario: User changes city name and/or short name
  #   Given I am signed in
  #   When I make changes
  #   Then I see changed attributes
  scenario 'user sees changes' do
    city = FactoryGirl.create(:city)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_city_path(city)
    fill_in 'Name', :with => 'Warszawa'
    fill_in 'Short name', :with => 'Wawa'
    click_button 'Update'
    expect(page).to have_content('Warszawa')
    expect(page).to have_content('Wawa')
  end
end
