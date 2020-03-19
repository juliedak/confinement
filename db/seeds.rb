# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Review.destroy_all
Activity.destroy_all


file1 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584617117/mcmfvo1pydxcoqa3ljar.jpg")
uno = Activity.new(title: "UNO", content: "super jeux de uno, je suis trop forte, vous allez perdre", duration: "15", difficulty: "1")
uno.photos.attach(io: file1, filename: ' ', content_type: 'image/jpg')
uno.save!

puts "activity created"

file2 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584617142/gi9zhx2yytoyobwgi99q.jpg")
film = Activity.new(title: "Regarder un film", content: "Si vous avez des listes de films je suis trop chaude", duration: "15", difficulty: "1")
film.photos.attach(io: file2, filename: ' ', content_type: 'image/jpg')
film.save!

puts "activity created"

file3 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584617136/l7vdziqoht7ylnyz3yqr.jpg")
domino = Activity.new(title: "Jouer aux dominos", content: "Jouer aux dominos, c'est rigolo", duration: "15", difficulty: "1")
domino.photos.attach(io: file3, filename: ' ', content_type: 'image/jpg')
domino.save!

puts "activity created"


file4 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584617108/ecmt9pcivkbx7crsoe40.jpg")
file5 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584617474/bgjxnumc66juh1mbszji.jpg")
cooking = Activity.new(title: "Cuisiner", content: "Si vous avez des idées de recettes, je suis partante", duration: "15", difficulty: "1")
cooking.photos.attach([{io: file4, filename: " ", content_type: 'image/jpg'}, {io: file5, filename: " ", content_type: 'image/jpg'}])
cooking.save!

puts "activity created"


file6 = URI.open("https://res.cloudinary.com/dlh4cl5ih/image/upload/v1584617147/hswnl8aonaffqngbfccu.jpg")
kapla = Activity.new(title: "Jouer aux kapla", content: "Jouer aux dominos, c'est rigolo", duration: "15", difficulty: "1")
kapla.photos.attach(io: file6, filename: ' ', content_type: 'image/jpg')
kapla.save!

puts "activity created"
