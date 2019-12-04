
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './songsText'

Song.create(title: "Blowing in the Wind", writers: "Bob Dylan", fullText: WINDTEXT)
Song.create(title: "Blue Moon", writers: "Rogers and Hard", fullText: MOONTEXT)
