
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require_relative './songsText'

Dir[File.join(__dir__, 'stringCharts', '*.rb')].each { |file| require file }


Song.create(title: "A Little Respect", writers: "Erasure", fullText: A_LITTLE_RESPECT)
Song.create(title: "Accidentally in Love", writers: "Counting Crows", fullText: ACCIDENTALLY)
Song.create(title: "All That She Wants", writers: "Ace of Base", fullText: ALL_THAT_SHE_WANTS)
Song.create(title: "Blowing in the Wind", writers: "Bob Dylan", fullText: WINDTEXT)
Song.create(title: "Blue Moon", writers: "Rogers and Hart", fullText: MOONTEXT)
Song.create(title: "Faith", writers: "George Michael", fullText: FAITH)
Song.create(title: "Forget You/F**k You", writers: "Cee Lo Green", fullText: FORGET_YOU)