FactoryBot.define do

  factory :post do
    title { FFaker::Lorem.sentence }
    content { FFaker::Lorem.paragraph }
    published_date { 3.days.ago }
    user
  end

end
