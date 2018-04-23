# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shipper_list = [
  ["joseph@gmail.com", "123456"],
  ["shivadelphia@gmail.com", "123456"],
  ["bee@gmail.com", "123456"]
]

shipper_list.each do |email, password|
  Shipper.create(email: email, password: password)
end

boat_list = [
  ["The Joe", "50", "Philadelphia", 1],
  ["The Shiv", "60", "Los Angeles", 2],
  ["The Bee", "70", "New York", 3]
]

boat_list.each do |name, container_volume, location, shipper_id|
  Boat.create(name: name, container_volume: container_volume, location: location, shipper_id: shipper_id)
end

job_list = [
  ["Bread", "Take bread to L.A.", "Philadelphia", "Los Angeles", "$1000", "50", 1],
  ["Perfume", "Take Perfume to Beijing", "Los Angeles", "Beijing", "$2000", "60", 2],
  ["Hats", "Take hats to Philadelphia", "New York", "Philadelphia", "$3000", "70", 3]
]

job_list.each do |title, description, origin, destination, cost, containers_needed, shipper_id|
  Job.create(title: title, description: description, origin: origin, destination: destination, cost: cost, containers_needed: containers_needed, shipper_id: shipper_id)
end
