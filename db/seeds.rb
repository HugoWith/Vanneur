# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts "users destroyed"

Van.destroy_all
puts "vans destroyed"

Rental.destroy_all
puts "rentals destroyed"


hugo = User.create!(
  email: "hugo@beteur.fr",
  password: "pouetpouet",
  first_name: "Hugo",
  last_name: "Valla")

alex = User.create!(
  email: "alex@beteur.fr",
  password: "alexxxxx",
  first_name: "Alex",
  last_name: "Viretti")

marin = User.create!(
  email: "marin@beteur.fr",
  password: "dodouc",
  first_name: "Marin",
  last_name: "Vanthier")

marine = User.create!(
  email: "marine@beteur.fr",
  password: "saucisse",
  first_name: "Marine",
  last_name: "Diot")

jojo = User.create!(
  email: "toto@gmail.com",
  password: "totooooooo",
  first_name:"Jojo",
  last_name: "Blanchard")

kev = User.create!(
  email: "stetienne@yahoo.fr",
  password: "elprofessor",
  first_name:"Kev",
  last_name:"Cha")

