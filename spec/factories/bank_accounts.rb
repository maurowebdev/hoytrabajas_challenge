# frozen_string_literal: true

FactoryBot.define do
  factory :bank_account do
    association :bank
    number { Faker::Bank.account_number(digits: 10) }
    provider { nil }
  end
end
