# frozen_string_literal: true

FactoryBot.define do
  factory :bank_account do
    association :bank
    number { '1234567890' }
    provider { nil }
  end
end
