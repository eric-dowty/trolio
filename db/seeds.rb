# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pics = [
        "https://pbs.twimg.com/media/BkFCNSeIIAAkNsa.jpg",
        "http://www.tampabay.com/resources/images/blogs-photo/rendered/2014/09/TP_387738_SANT_10_weekend_8col.jpg",
        "http://strictlycheryl.com/wp-content/uploads/2014/07/bdayselfie.jpg",
        "https://pbs.twimg.com/media/Bb2LzpCIAAAHQ0b.jpg",
        "http://files.shandymedia.com/styles/page/s3/images/photos/hollyscoop/kanye-west-random-guy-crashes-set2.png",
        "http://www.showandtellonline.com.au/wp-content/uploads/2014/03/jaime-king-kyle-newman-taylor-e1393842347503.jpg",
        "http://dandygoat.com/wp-content/uploads/2013/12/obama_party.png"
]

pics.each do |pic|
  Pic.create!(url: pic)
end