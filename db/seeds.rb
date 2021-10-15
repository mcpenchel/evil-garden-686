# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Garden.create!() # If validations do not pass, we get an exception (which breaks the code)
# Garden.create()  # If validations do not pass, it keeps running

Garden.destroy_all

garden_1 = Garden.create!(
  name: "Satan's Garden",
  banner_url: 'https://img2.10bestmedia.com/Images/Photos/239851/p-Don-Bonaventure1_54_990x660_201406020016.jpg'
)

puts "Created #{garden_1.name}"

garden_2 = Garden.create!(
  name: "Snoop's Garden",
  banner_url: 'https://pbs.twimg.com/media/Dd_zF_ZUQAEtxaJ.jpg'
)

puts "Created #{garden_2.name}"
