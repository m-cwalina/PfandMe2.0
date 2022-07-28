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
  { "email": "Tom.Zappia@gmail.com", "password": "123456", "name": "Tom Zappia", "phone": "06332168244", "address": "Kantstraße 143, 10623 Berlin" },
  { "email": "Lizzy.Gordan@gmail.com", "password": "123456", "name": "Lizzy Gordon", "phone": "06332145934", "address": "Tempelhofer Damm, 12101 Berlin" },
  { "email": "Tina.Flower@gmail.com", "password": "123456", "name": "Tina Flower", "phone": "05837542887", "address": "Prinzessinnenstraße 26, 10969 Berlin" },
  { "email": "Chris.Danger@gmail.com", "password": "123456", "name": "Chris Danger", "phone": "08564738293", "address": "Karl-Marx-Straße 66, 12043 Berlin" },
  { "email": "House.Gregory@gmail.com", "password": "123456", "name": "Gregory House", "phone": "09578832115", "address": "Gleimstraße 55, 10437 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Willy Wilson", "phone": "09854423254", "address": "Kurfürstendamm 161a, 10709 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Katie Slymer", "phone": "07493991234", "address": "Turmstraße 39, 10551 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Rick Overall", "phone": "09443375890", "address": "Mühlenstraße 5, 10243 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Michael Mendell", "phone": "09032436654", "address": "Böhmische Str. 43, 12055 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Jonas Matter", "phone": "02557852191", "address": "Greifswalder Str. 50, 10405 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Gabriela Rodriquez", "phone": "06558943421", "address": "Karl-Liebknecht-Str. 30, 10178 Berlin" },
  { "email": "Willy.Wilson@gmail.com", "password": "123456", "name": "Lizzy Maguire", "phone": "09345654532", "address": "Ackerstraße 136, 13355 Berlin" }
])
