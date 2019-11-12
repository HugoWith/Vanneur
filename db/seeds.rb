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

van1 = Van.create!(
  town: "Lyon",
  description: "van 2 places à l'avant, très bien équipé. Parfait pour quelques semaines de trip !",
  prices:"50",
  availability: Date.new(2019,12,26),
  hyppyness: true,
  year: 1996,
  kilometers: 60.000,
  owner: kev)

van2 = Van.create!(
  town: "Lyon",
  description: "Van tout équipé, prêt à prendre la route",
  prices:"50",
  availability: Date.new(2019,12,26),
  hyppyness: false,
  year: 1999,
  kilometers: 50.000,
  owner: kev)

van3 = Van.create!(
  town: "Lyon",
  description: "Merveilleux van. Rangements et rideaux disponibles. A déjà servi pour faire un sacré tour d'Australie",
  prices:"80",
  availability: Date.new(2019,12,26),
  hyppyness: true,
  year: 2006,
  kilometers: 70.000,
  owner: hugo)

van4 = Van.create!(
  town: "Lyon",
  description: "A fait de la route mais la tient encore. Mignon comme tout. Vaisselle et rangements dispos.",
  prices:"75",
  availability: Date.new(2019,12,30),
  hyppyness: true,
  year: 2010,
  kilometers: 75.000,
  owner: marine)

van5 = Van.create!(
  town: "Lyon",
  description: "Van pour 2. Lit hyper confortable. Rangements prévus. Prêt à rouler",
  prices:"75",
  availability: Date.new(2019,12,30),
  hyppyness: true,
  year: 2015,
  kilometers: 30.000,
  owner: kev)
