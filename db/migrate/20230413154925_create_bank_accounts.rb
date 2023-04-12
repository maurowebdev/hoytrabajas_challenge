# frozen_string_literal: true

class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts do |t|
      t.string :number
      t.references :bank, null: false, foreign_key: true
      t.references :provider, null: true, foreign_key: true

      t.timestamps
    end
  end
end
