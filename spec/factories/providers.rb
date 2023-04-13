# frozen_string_literal: true

FactoryBot.define do
  factory :provider do
    name { 'MEGAPROVIDER' }
    national_id_type { 'nit' }
    national_id_number { '123456789-9' }
    contact_name { 'Jhon Doe' }
    contact_phone_number { '3214321122' }
    association :bank_account
  end
end
