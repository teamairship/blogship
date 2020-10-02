FactoryBot.define do

  factory :user do
    email { FFaker::Internet.email }
    password { 'password' }
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    role { 'author' }
  end

  factory :admin, class: "User" do
    email { FFaker::Internet.email }
    password { 'password' }
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    role { 'author' }
  end

end
