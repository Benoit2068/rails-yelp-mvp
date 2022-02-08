# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating 5 restaurants"

Restaurant_Comme_Chez_Vous = { name: "Restaurant Comme Chez Vous", address: "Rue de la Maigroge 12, 2072 St Blaise", category: "french", phone_number: "032 753 58 58"}
Le_Beausite_By_Franck_Chouette = { name: "Le Beausite By Franck Chouette", address: "Rte de Villars 1, 1700 Fribourg", category: "italian", phone_number: "026 424 66 46"}
Chez_Calzette = { name: "Chez Calzette", address: "Centre sportif, 2068 Hauterive", category: "french", phone_number: "078 857 41 48"}
China_Town = { name: "China Town", address: "Rouges-Terres 50, 2068 Hauterive", category: "japanese", phone_number: "032 753 08 88"}
Pizza_Fun_Littoral = { name: "Pizza'Fun Littoral", address: "Grand'Rue 12, 2072 St Blaise", category: "italian"}

[Restaurant_Comme_Chez_Vous, Le_Beausite_By_Franck_Chouette, Chez_Calzette, China_Town, Pizza_Fun_Littoral].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "#{restaurant.name} is created"
end
puts "Finished!"
