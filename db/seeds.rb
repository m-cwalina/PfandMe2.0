# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all PICKERS..."
Picker.destroy_all

puts 'Creating more pickers (phew)...'

Picker.create!([
  { "email": "Tim.Gregor@gmail.com", "password": "123456", "name": "Tim Gregor", "phone": "01773168274", "address": "Kurfürstendamm 26, 10719 Berlin" },
  { "email": "Jans.Schneider@gmail.com", "password": "123456", "name": "Jans Schneider", "phone": "01373165274", "address": "Schöneberger Str. 16, 10963 Berlin" },
  { "email": "Sam.Richin@gmail.com", "password": "123456", "name": "Sam Richin", "phone": "01373165277", "address": "Friedrichstrasse 96, 10117 Berlin" },
  { "email": "Maxi.Friedrich@gmail.com", "password": "123456", "name": "Maxi Friedrich", "phone": "01373165277", "address": "Am Wriezener bhf, 10243 Berlin" },
  { "email": "Andy.Smith@gmail.com", "password": "123456", "name": "Andy Smith", "phone": "02773162579", "address": "Hauptstraße 15, 10317 Berlin" },
  { "email": "Tom.Zappia@gmail.com", "password": "123456", "name": "Tom Zappia", "phone": "06332168244", "address": "Kantstraße 143, 10623 Berlin" }
])

# User.create!([
#  { "email": "Tim.Gregor@gmail.com", "password": "123456", "name": "Tim Gregor", "number": "01773168274", "address": "Kurfürstendamm 26, 10719 Berlin", "role": 'employee' },
#  { "email": "Jans.Schneider@gmail.com", "password": "123456", "name": "Jans Schneider", "number": "01373165274", "address": "Schöneberger Str. 16, 10963 Berlin", "role": 'employee' },
#  { "email": "Sam.Richin@gmail.com", "password": "123456", "name": "Sam Richin", "number": "01373165277", "address": "Friedrichstrasse 96, 10117 Berlin", "role": 'employee' },
#  { "email": "Maxi.Friedrich@gmail.com", "password": "123456", "name": "Maxi Friedrich", "number": "01373165277", "address": "Am Wriezener bhf, 10243 Berlin", "role": 'employee' },
#  { "email": "Andy.Smith@gmail.com", "password": "123456", "name": "Andy Smith", "number": "02773162579", "address": "Hauptstraße 15, 10317 Berlin", "role": 'employee' },
#  { "email": "Tom.Zappia@gmail.com", "password": "123456", "name": "Tom Zappia", "number": "06332168244", "address": "Kantstraße 143, 10623 Berlin", "role": 'employee' }
# ])
