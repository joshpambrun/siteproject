# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Category.create!(name: 'Test Category', description: 'This category is only used for testing purposes.')
Province.create!(name: 'Alberta', code: 'AB', pst: 0)
Province.create!(name: 'British Columbia', code: 'BC', pst: 0.07)
Province.create!(name: 'Manitoba', code: 'MB', pst: 0.08)
Province.create!(name: 'New Brunswick', code: 'NB', pst: 0.1)
Province.create!(name: 'Newfoundland and Labrador', code: 'NL', pst: 0.1)
Province.create!(name: 'Northwest Territories', code: 'NT', pst: 0)
Province.create!(name: 'Nova Scotia', code: 'NS', pst: 0.1)
Province.create!(name: 'Nunavut', code: 'NU', pst: 0)
Province.create!(name: 'Ontario', code: 'ON', pst: 0.08)
Province.create!(name: 'Prince Edward Island', code: 'PE', pst: 0.1)
Province.create!(name: 'Quebec', code: 'QC', pst: 0.9975)
Province.create!(name: 'Saskatchewan', code: 'SK', pst: 0.06)
Province.create!(name: 'Yukon', code: 'YT', pst: 0)