# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Office.create!(name: 'Flatiron General')
Doctor.create!(name: 'Dr.Meredith Grey', username: 'MGrey', password: 'Seattle', email: 'mgrey@greysloan.com', speciality: 'General Surgery', office_id: Office.first.id)
Patient.create!(name: 'Sean', profile: 'Sick', comments: 'none', covid: false, office_id: Office.first.id)