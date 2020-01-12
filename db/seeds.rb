User.destroy_all

u1 = User.create! name: 'Hasan', email: 'hasan@gmail.com', image: 'https://i.pinimg.com/474x/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg', password: 'hasan', admin: true
u2 = User.create! name: 'Mikail', email: 'mikail@gmail.com', password: 'mikail'

puts "Created #{ User.count } users."





Cocktail.destroy_all

puts "Creating artists..."

c1 = Cocktail.create! name: 'Caprioska', image: 'http://d3lp4xedbqa8a5.cloudfront.net/s3/digital-cougar-assets/GourmetTraveller/2013/05/08/4325/0111gtberowra-caprioska-628.jpg?width=768&height=639&mode=crop&quality=75&anchor=middlecenter', creator: 'n/a', ingredients: 'n/a', instructions: 'n/a'



puts "Create #{ Cocktail.all.length} cocktails:"
puts Cocktail.pluck(:name).join(', ')
