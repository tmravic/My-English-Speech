# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts "\n...create admin users!"
User.create!(first_name: "Admin", last_name: "Admin", password: "123456", email:"admin@admin.com", teacher: true)
User.create!(first_name: "Risako", last_name: "Nagai", password: "123456", email:"risako@nagai.com", teacher: true)
User.create!(first_name: "Taylor", last_name: "Mravic", password: "123456", email:"taylor@mravic.com", teacher: true)
User.create!(first_name: "Doug", last_name: "Theman", password: "123456", email:"doug@theman.com", teacher: false)
User.create!(first_name: "Trouni", last_name: "Assassin", password: "123456", email:"trouni@assassin.com", teacher: false)
