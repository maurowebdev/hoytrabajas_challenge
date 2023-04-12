class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name, null: false
      t.string :national_id_type, null: false, default: 'nit'
      t.string :national_id_number, null: false
      t.string :contact_name, null: false
      t.string :contact_phone_number

      t.timestamps
    end
  end
end
