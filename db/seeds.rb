# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a= Event.create(description:"Le kiff ultime", name:"Atelier Kiff", place:"Quelquepart de bien 12 rue de l'olivier Paris Cedex")
b= Event.create(description:"Pas le kiff ultime", name:"Atelier Pas kiff", place:"Quelquepart de pas bien 14 bvd du loinloin Tresloin Cedex") 
c= Event.create(description:"Viens faire des révélations", name:"Atelier Alleluia", place:"Quelquepart de pas bien 14 bvd du loinloin Tresloin Cedex")
d= Event.create(name:"Test", description:"bakbalaboa", place:"Labas cest pas loin frere")


e = Category.create(title:"Fun", slug:"dsqdsqds")
f = Category.create(title:"Serious", slug:"dsqdsqdqsdaa")

bordel = Event.create(name:"Bordel", description:"on fout la merde freree", place:"Labas cest pas loin frere", category_id:1)

a = Event.create(name:"Wahou", description:"fdsfdsfdsfs", place:"rue de la noix", category_id:2)

