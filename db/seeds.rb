# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create admin user
require 'faker'
User.create(email: 'admin@mail.com', password: '123456')

# Create resources
20.times do
  bank = Bank.create(name: Faker::Bank.name)

  provider = Provider.new(
    name: Faker::Company.name,
    national_id_type: 'nit',
    national_id_number: "123456#{rand(100..999)}-9",
    contact_name: Faker::Name.name,
    contact_phone_number: '3214321122',
    bank_account: BankAccount.new(number: "1234567#{rand(100..999)}", bank:)
  )

  provider.save
end
