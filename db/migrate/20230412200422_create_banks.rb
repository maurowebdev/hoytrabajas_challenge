# frozen_string_literal: true

class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
