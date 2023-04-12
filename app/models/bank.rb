# frozen_string_literal: true

class Bank < ApplicationRecord
  validates :name, length: { in: 3..50 }
end
