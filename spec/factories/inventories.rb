# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    title "MyString"
    description "MyText"
    quantity 1
  end
end
