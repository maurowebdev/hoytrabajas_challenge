# frozen_string_literal: true

class BankAccount < ApplicationRecord
  belongs_to :bank
  belongs_to :provider, inverse_of: :bank_account, optional: true

  validates_presence_of :bank
  validates :number, length: { in: 10..15 }, allow_blank: true
end
