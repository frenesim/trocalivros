# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    encrypted_password "MyString"
    reset_password_token "MyString"
    reset_password_sent_at "2013-05-23 12:58:48"
    remember_created_at "2013-05-23 12:58:48"
    sign_in_count 1
    current_sign_in_at "2013-05-23 12:58:48"
    last_sign_in_at "2013-05-23 12:58:48"
    current_sign_in_ip "MyString"
    last_sign_in_ip "MyString"
    phone_number "MyString"
  end
end
