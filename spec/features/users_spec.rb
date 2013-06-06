require 'spec_helper'
require 'faker'

feature "register user" do

  scenario 'user registers without name and it appears a personalized welcome message with his email' do
    visit new_user_registration_path
    email = Faker::Internet.email
    fill_in :user_email, with: email
    fill_in :user_password, with: "password"
    fill_in :user_password_confirmation, with: "password"
    click_on "Registo"
    page.should have_content(email)
  end

  scenario 'user registers with name and it appears a personalized welcome message with his name' do
    visit new_user_registration_path
    name = Faker::Name.name
    email = Faker::Internet.email
    fill_in :user_name, with: name
    fill_in :user_email, with: email
    fill_in :user_password, with: "password"
    fill_in :user_password_confirmation, with: "password"
    click_on "Registo"
    page.should have_content(name)
  end

end
