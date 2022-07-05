# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all PICKERS..."
Pickers.destroy_all

puts 'Creating more pickers (phew)...'

Picker.create([
  {"name": "Tim Gregor", "phone": "01773168274", "longitude": 13.4155, "latitude": 52.5276},
  {"name": "Jans Schneider", "phone": "01373165274", "longitude": 13.3289, "latitude": 52.5037},
  {"name": "Maxi Friedrich", "phone": "01373165277", "longitude": 13.3379, "latitude": 52.5056},
  {"name": "Andy Smith", "phone": "02773162579", "longitude": 13.3943, "latitude": 52.5125},
  {"name": "Tom Zappia", "phone": "06332168244", "longitude": 13.3914, "latitude": 52.5069}
])
