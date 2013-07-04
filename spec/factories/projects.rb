FactoryGirl.define do
  factory :project do
    name  { Faker::HipsterIpsum.word }
  end
end
