include Warden::Test::Helpers
Warden.test_mode!

# Feature: User index page
#   As a user
#   I want to see a list of users
#   So I can see who has registered
feature 'All users page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: All users listed on page
  #   Given I am signed in
  #   When I visit the all_user page
  #   Then I see my own email address
  scenario 'all_users redirects to index' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit '/all_users'
    expect(page).to have_content user.email
  end
end
