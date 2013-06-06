require 'spec_helper'
require 'faker'

feature "register user" do

  scenario 'user registers without name and it appears a personalized welcome message with the email' do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit new_user_registration_path
    email = Faker::Internet.email
    fill_in :user_email, with: email
    fill_in :user_password, with: "password"
    fill_in :user_password_confirmation, with: "password"
    click_on "Registo"
    page.should have_content(email)
    #get autores_path
    #response.status.should be(302)
  end

  scenario 'user registers with name and it appears a personalized welcome message with the name' do

  end

  scenario "unauthenticated user can see list of books" do
    visit livros_path
  end

end
