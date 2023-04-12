# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Bank, type: :model do
  subject(:test_bank) { described_class.new }

  describe 'validations' do
    it 'is valid with valid attributes' do
      test_bank.name = 'Valid name'

      expect(test_bank).to be_valid
    end

    it 'is no valid with invalid attributes' do
      test_bank.name = nil

      expect(test_bank).to_not be_valid
    end
  end
end
