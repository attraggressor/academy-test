include Warden::Test::Helpers
Warden.test_mode!

# Feature: City delete
#   As a user
#   I want to delete city
feature 'City delete', :devise, :js do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User can delete city
  #   Given I am signed in
  #   When I delete city
  #   Then I shouldn't see deleted city anymore
  scenario 'user can delete city' do
    user = FactoryGirl.create(:user)
    city = FactoryGirl.create(:city)
    login_as(user, :scope => :user)
    visit city_path(city)
    page.find('#btn_delete').click
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_no_content city.name
  end

end