# frozen_string_literal: true

class Provider < ApplicationRecord
  NIT_REGEX = /\A[1-9]{9}(-[0-9])?\Z/
  ID_TYPES = { nit: 'nit' }.freeze
  public_constant :NIT_REGEX
  private_constant :ID_TYPES

  has_one :bank_account, inverse_of: :provider
  accepts_nested_attributes_for :bank_account
  validates_associated :bank_account

  has_one :bank, through: :bank_account

  enum national_id_type: ID_TYPES

  delegate :name, to: :bank, prefix: true
  delegate :number, to: :bank_account, prefix: true

  validates :national_id_number, format: { with: NIT_REGEX }
  validates :national_id_type, inclusion: { in: ID_TYPES.values }
  validates_presence_of :bank_account
  validates_presence_of :name, :national_id_type, :national_id_number, :contact_name
  validates :contact_phone_number, length: { in: 7..10 }, allow_blank: true
end
