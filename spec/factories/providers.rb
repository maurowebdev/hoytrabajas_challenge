# frozen_string_literal: true

FactoryBot.define do
  factory :provider do
    name { 'TestPro' }
    national_id_type { 'nit' }
    national_id_number { '123456789-9' }
    contact_name { Faker::Name.name }
    contact_phone_number { '3214321122' }
    association :bank_account
  end
end
