# frozen_string_literal: true

class Bank < ApplicationRecord
  has_many :bank_accounts
  has_many :providers, through: :bank_accounts
  validates :name, length: { in: 3..50 }
end
