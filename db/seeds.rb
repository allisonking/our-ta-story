# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tags_list = ["childhood",
"politics",
"military",
"adulthood",
"marriage",
"immigration",
"family",
"kids",
"KMT",
"DPP",
"martial law",
"government",
"parents",
"food",
"education",
"identity",
"Little League Baseball",
"night markets",
"Lunar New Year",
"Taiwanese language",
"aboriginal",
"history",
"culture",
"art"]

tags_list.each do |tag_name|
  Tag.create(name: tag_name)
end
