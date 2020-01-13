User.destroy_all

u1 = User.create! name: 'Hasan', email: 'hasan@gmail.com', image: 'https://i.pinimg.com/474x/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg', password: 'chicken', admin: true
u2 = User.create! name: 'Mikail', email: 'mikail@gmail.com', password: 'chicken'

puts "Created #{ User.count } users."





Cocktail.destroy_all

puts "Creating artists..."

c1 = Cocktail.create! name: 'Caprioska', image: 'http://d3lp4xedbqa8a5.cloudfront.net/s3/digital-cougar-assets/GourmetTraveller/2013/05/08/4325/0111gtberowra-caprioska-628.jpg?width=768&height=639&mode=crop&quality=75&anchor=middlecenter', creator: 'n/a', ingredients: 'n/a', instructions: 'n/a', user_id: u1.id

c2 = Cocktail.create! name: 'Old Fashioned', image: 'https://cdn.liquor.com/wp-content/uploads/2018/05/08113350/bourbon-old-fashioned-720x720-recipe.jpg', creator: 'n/a', ingredients: 'n/a', instructions: 'n/a', user_id: u1.id

c3 = Cocktail.create! name: 'Mojito', image: 'https://cdn.liquor.com/wp-content/uploads/2019/07/10134111/Bacardi_Mojito_Drink-feature.jpg', creator: 'n/a', ingredients: 'n/a', instructions: 'n/a', user_id: u1.id

c4 = Cocktail.create! name: 'Long Island', image: 'https://www.supergoldenbakes.com/wordpress/wp-content/uploads/2019/07/Long_island_iced_tea-1-4s.jpg', creator: 'n/a', ingredients: 'n/a', instructions: 'n/a', user_id: u2.id

c5 = Cocktail.create! name: 'Sidecar', image: 'https://stevethebartender.com.au/wp-content/uploads/2014/12/sidecar-cocktail-recipe.jpg', creator: 'n/a', ingredients: 'n/a', instructions: 'n/a', user_id: u2.id








puts "Create #{ Cocktail.all.length} cocktails:"
puts Cocktail.pluck(:name).join(', ')
