# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    require 'faker'
    100.times do
    doc = Doctor.create!(first_name: Faker::DcComics.hero,last_name: Faker::Creature::Cat.name, specialty: Faker::Games::Pokemon.name, zip_code: Faker::Address.zip_code)
    pat = Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name)
    rdv = Appointment.create!(doctor: doc, patient: pat, date: Faker::Date.forward(days: 23))
    end