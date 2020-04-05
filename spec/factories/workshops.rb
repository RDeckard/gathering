# frozen_string_literal: true

FactoryBot.define do
  factory :workshop do
    name { 'MyString' }
    description { 'MyText' }
    workshop_template { nil }
  end
end
