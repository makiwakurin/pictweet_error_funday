FactoryBot.define do
  factory :tweet do
    text {Faker::Lorem.sentence}
    image {Faker::Lorem.sentence}
    association :user 
  #  association（関連づけ） :userでuserを関連付けている
  end
end
