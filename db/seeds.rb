# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts

Van.destroy_all


hugo = User.create!(
  email: hugo@beteur.fr,
  password:,
  first_name:,
  last_name: )

alex = User.create!(
  email: alex@beteur.fr,
  password:,
  first_name:,
  last_name: )

marin = User.create!(
  email:,
  password:,
  first_name:,
  last_name: )

marine = User.create!(
  email:,
  password:,
  first_name:,
  last_name: )

jojo = User.create!(
  email:,
  password:,
  first_name:,
  last_name: )

kev = User.create!(
  email:,
  password:,
  first_name:,
  last_name: )

van = Van.create(
  town:,
  description:,
  prices:,
  availability:,
  hyppyness:,
  year:,
  kilometers:,
  owner: )
