# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
burrito = { name: 'Burrito', address: 'Depois da praça', phone_number: '1111111' }
riosul =  { name: 'rio sul', address: 'Rua de tras no quarteirao do lado', phone_number: '222222' }
spaziano = { name: 'spaziano', address: 'meio longe', phone_number: '333333' }
tropikos =  { name: 'tropikos', address: 'aqui na frente', phone_number: '444444' }
cantina = { name: 'cantina', address: 'na esquina da praça', phone_number: '555555' }

[burrito, riosul, spaziano, tropikos, cantina].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
