Given /^I am on (.+)$/ do |page_name|
  visit root_path
end

Given /I am logged in/ do
  authenticate
end

Then /I should see my email/ do
  page.should have_content(user.name)
end

def authenticate
  user = FactoryGirl.create(:user)
  visit user_session_path
  fill_in :user_email, with: user.email
  fill_in :user_password, with: user.password
  click_button "Entrar"
end
