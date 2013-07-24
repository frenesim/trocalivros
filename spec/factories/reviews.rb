# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review, :class => 'Reviews' do
    revie "MyString"
    livro_id 1
  end
end
