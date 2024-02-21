# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Event.destroy_all
Attendance.destroy_all

# CREATION OF 10 USER AND PUTT ALL OF THEM INSIDE A ARRAY
# all_user = []
# 15.times do |i|
#     email = Faker::Internet.email
#     all_user << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 20), password: "password", email: Faker::Internet.email(domain: 'yopmail.com') )
    
# end

# # CREATION OF 5 EVENT WITH RANDOM USER AS ADMIN AND PUT ALL OF THEM INSIDE AN ARRAY
# all_event = []
# 10.times do
#     duration = rand(1..100)*5
#     all_event << Event.create(start_date: Faker::Date.forward(days: 365), duration: duration, title: Faker::Lorem.sentence(word_count: 10), description: Faker::Lorem.sentence(word_count: 10), price: rand(1..1000), location: Faker::Address.city, admin: all_user.sample)
# end
