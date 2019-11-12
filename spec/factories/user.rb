require 'faker'

FactoryBot.define do
  factory :user do |user|
    sequence :email do |n|
      "person#{n}#{Faker::Internet.email}"
    end
    user.password { '123123' }
    user.password_confirmation { '123123' }
  end
end
