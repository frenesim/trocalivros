Given /^I am on home page$/ do
  visit root_path
end

Given /^My name is "(.*?)"$/ do |name|
  @user||= FactoryGirl.build(:user, name: name)
end

Given /^I am logged in/ do
  authenticate
end

Then /^I should see my name/ do
  page.should have_content(@user.name)
end


def authenticate
  visit new_user_session_path
  @user = FactoryGirl.build(:user) if @user.nil?
  @user.save!
  fill_in :user_email, with: @user.email
  fill_in :user_password, with: @user.password
  click_button "Entrar"
end