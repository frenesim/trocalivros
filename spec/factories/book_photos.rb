# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book_photo, :class => 'BookPhotos' do
    livro_id 1
  end
end
