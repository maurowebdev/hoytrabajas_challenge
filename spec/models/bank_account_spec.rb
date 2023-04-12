# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  subject(:test_bank_account) { described_class.new }

  let(:provider) { create(:provider) }
  let(:bank) { create(:bank) }
  let(:valid_attributes) do
    {
      number: '1234567890',
      bank:,
      provider:
    }
  end

  let(:valid_attributes) do
    {
      number: '1234567890',
      bank:,
      provider:
    }
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      test_bank_account.attributes = valid_attributes

      expect(test_bank_account).to be_valid
    end

    it 'is no valid with invalid attributes' do
      expect(test_bank_account).to_not be_valid
    end

    it { is_expected.to validate_presence_of(:bank) }
    it { is_expected.to validate_length_of(:number).is_at_least(10).is_at_most(15) }
  end
end
