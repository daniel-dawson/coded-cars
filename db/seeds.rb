require 'faker'

# This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Faker configurations
Faker::Config.random = Random.new(42)
Faker::Config.locale = 'en-US'

# Admin object
@admin = Admin.create!(
  email: "coded-cars@thrivecommerce.com",
  password: "password"
)

# Owner objects
def owner_data
  name = Faker::FunnyName.two_word_name
  email = name.gsub(' ', '.').downcase! + "@gmail.com"
  phone = Faker::PhoneNumber.cell_phone
  admin = @admin
  {admin: admin, name: name, email: email, telephone: phone}
end

Faker::Number.between(from: 8, to: 14).times do
  Owner.create!(owner_data)
end

# Car objects
def car_data
  make = Faker::Vehicle.make
  model = Faker::Vehicle.model(make_of_model: make)
  color = Faker::Vehicle.color
  mileage = Faker::Vehicle.mileage
  is_for_sale = Faker::Boolean.boolean(true_ratio: 0.3)
  admin = @admin
  {admin: admin, make: make, model: model, color: color, mileage: mileage, is_for_sale: is_for_sale}
end

Owner.all.count.times do
  Car.create!(car_data)
end

# Ownership history objects
Owner.all.count.times do
  OwnershipHistory.create!(
    owner: Owner.all.sample,
    car: Car.all.sample,
    admin: @admin
  )
end
