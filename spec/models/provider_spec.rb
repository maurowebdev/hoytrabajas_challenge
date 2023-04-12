# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Provider, type: :model do
  subject(:test_provider) { described_class.new }

  let(:valid_attributes) do
    {
      name: 'Milán',
      national_id_type: 'nit',
      national_id_number: '123456789',
      contact_name: 'Mauricio',
      contact_phone_number: '3005451122',
      bank_account:
    }
  end

  let(:invalid_attributes) do
    {
      name: 'Jhon Doe',
      national_id_type: 'nit',
      national_id_number: '123456789-',
      contact_name: 'Traitor',
      contact_phone_number: '3005451122111',
      bank_account: nil
    }
  end

  let(:bank_account) { create(:bank_account) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      test_provider.attributes = valid_attributes

      expect(test_provider).to be_valid
    end

    it 'is no valid with invalid attributes' do
      test_provider.attributes = invalid_attributes

      expect(test_provider).to_not be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:national_id_type) }
    it { is_expected.to validate_presence_of(:national_id_number) }
    it { is_expected.to validate_presence_of(:contact_name) }
    it { is_expected.to validate_length_of(:contact_phone_number).is_at_least(7).is_at_most(10) }

    context 'format validations' do
      it { should allow_value('123456789').for(:national_id_number) }
      it { should allow_value('123456789-9').for(:national_id_number) }
      it { should_not allow_value('123456789-11').for(:national_id_number) }
      it { should_not allow_value('123456789-').for(:national_id_number) }
    end
  end
end
