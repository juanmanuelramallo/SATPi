# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

node_a = Node.find_or_create_by(
  state: :active,
  latitude:"-34.906326",
  longitude:"-57.942534",
  last_update_at: Time.zone.now
)

address_a = Address.find_or_create_by(
  country: "Argentina",
  state: "Buenos Aires",
  city: "La Plata",
  zip: "1900",
  address: "El bosque",
  node_id: node_a.id
)

node_b = Node.find_or_create_by(
  state: :active,
  latitude:"-34.9090664",
  longitude:"-57.9447089",
  last_update_at: Time.zone.now
)

address_b = Address.find_or_create_by(
  country: "Argentina",
  state: "Buenos Aires",
  city: "La Plata",
  zip: "1900",
  address: "Facultad de ingeniería",
  node_id: node_a.id
)

sensor_a = Sensor.find_or_create_by(
  type_name: 1,
  last_update_at: Time.zone.now,
  node_id: node_a.id
)

sensor_b = Sensor.find_or_create_by(
  type_name: 1,
  last_update_at: Time.zone.now,
  node_id: node_b.id
)

sensor_b = Sensor.find_or_create_by(
  type_name: 0,
  last_update_at: Time.zone.now,
  node_id: node_a.id
)

package_a = Package.find_or_create_by(
  data: 100.50,
  sensor_id: sensor_a.id
)

package_b = Package.find_or_create_by(
  data: 150.50,
  sensor_id: sensor_a.id
)

package_c = Package.find_or_create_by(
  data: 35.50,
  sensor_id: sensor_b.id
)
