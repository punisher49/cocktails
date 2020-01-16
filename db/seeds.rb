User.destroy_all

u1 = User.create! name: 'Hasan', email: 'hasan@gmail.com', image: 'https://art.pixilart.com/93d506b739a0133.png', password: 'chicken', admin: true
u2 = User.create! name: 'Mikail', image: 'https://previews.123rf.com/images/triken/triken1608/triken160800028/61320729-male-avatar-profile-picture-default-user-avatar-guest-avatar-simply-human-head-vector-illustration-i.jpg', email: 'mikail@gmail.com', password: 'chicken'

puts "Created #{ User.count } users."



Cocktail.destroy_all

puts "Creating cocktails..."

c1 = Cocktail.create! name: 'Passionfruit Caprioska', image: 'http://prettymayhem.com/wp-content/uploads/2016/04/passionfruit-caprioska.jpg', creator: 'Unknown Bartender', ingredients: '2 oz. passion-fruit juice, 1 oz. simple syrup, 2 oz. Absolut Vodka,
 1 oz. lime juice, 1/2 oz. lemon juice', instructions: 'Put all ingredients in a shaker, and shake together. Strain into a large stemmed glass, and garnish with something fun, like a bright flower.', user_id: u1.id

c2 = Cocktail.create! name: 'Old Fashioned', image: 'https://cdn.liquor.com/wp-content/uploads/2018/05/08113350/bourbon-old-fashioned-720x720-recipe.jpg', creator: 'James E. Pepper', ingredients: '1 1/2 oz Bourbon or Rye whiskey, 2 dashes Angostura bitters, 1 Sugar cube, Few dashes plain water', instructions: 'Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Garnish with orange slice, and a cocktail cherry.', user_id: u1.id

c3 = Cocktail.create! name: 'Mojito', image: 'https://cdn.liquor.com/wp-content/uploads/2018/09/04153106/mojito-720x720-recipe.jpg', creator: 'Sir Francis Drake', ingredients: '1 1/2 oz White rum, 6 leaves of Mint, Soda Water, 1 oz Fresh lime juice, 2 teaspoons Sugar', instructions: 'Mint sprigs muddled with sugar and lime juice. Rum added and topped with soda water. Garnished with sprig of mint leaves. Served with a straw.', user_id: u1.id

c4 = Cocktail.create! name: 'Long Island', image: 'https://www.supergoldenbakes.com/wordpress/wp-content/uploads/2019/07/Long_island_iced_tea-1-4s.jpg', creator: 'Robert "Rosebud" Butt', ingredients: '15mL Vodka, 15mL Rum, 15mL Tequila, 15mL Gin, 15mL Cointreau, Coca Cola, 15-20mL Lemon Juice', instructions: ' Add all ingredients into highball glass filled with ice. Stir gently. Garnish with lemon spiral. Serve with straw.', user_id: u2.id

c5 = Cocktail.create! name: 'Espresso Martini', image: 'https://makemeacocktail.com/images/cocktails/1724/Espresso-martini.jpg', creator: 'Dick Bradsell', ingredients: '100ml vodka, 50ml freshly brewed espresso coffee, 50ml coffee liqueur (use Kahlua), 3 coffee beans (as a garnish)', instructions: 'Add ice, vodka, sugar syrup, coffee liqueur, and espresso to a cocktail shaker. Shake well in a shaker. Strain into an espresso glass.', user_id: u2.id

c6 = Cocktail.create! name: 'Bloody Mary', image: 'https://cdn.liquor.com/wp-content/uploads/2017/09/01105541/classic-bloody-mary-720x720-recipe.jpg', creator: 'Fernand Petiot ', ingredients: 'large handful of ice, 100ml vodka, 500ml tomato juice, 1 tbsp lemon juice, few shakes Worcestershire sauce, few shakes Tabasco (smoked Tabasco is nice), pinch celery salt, pinch black pepper, 2 celery sticks', instructions: 'Place the ice in a large jug. Measure the vodka, tomato juice and lemon juice and pour it straight onto the ice. Add 3 shakes of Worcestershire sauce and Tabasco (or more if you like it very spicy) and a pinch of celery salt and pepper. Stir until the outside of the jug feels cold, then strain the cocktail into 2 tall glasses. Top up with fresh ice, add a celery stick and lemon slice to both glasses and enjoy.', user_id: u2.id


puts "Create #{ Cocktail.all.length} cocktails:"
puts Cocktail.pluck(:name).join(', ')






Comment.destroy_all

puts "Creating Comments"


com1 = Comment.create! name: 'Erick', body: 'Most popular cocktail', cocktail_id: c1.id
com2 = Comment.create! name: 'John', body: 'Best cocktail for those who loves something strong', cocktail_id: c2.id
com3 = Comment.create! name: 'Frank', body: 'Has been created 500 years ago and still popular', cocktail_id: c3.id
com4 = Comment.create! name: 'Sal', body: 'If you want to get drunk, go for it', cocktail_id: c4.id
com5 = Comment.create! name: 'Terry', body: 'Mix of coffee and alcohol. Interesting', cocktail_id: c5.id
com6 = Comment.create! name: 'Santiago', body: 'Bloody Mary. Tastes nice and spice.', cocktail_id: c6.id



puts "Create #{ Comment.all.length} comments:"
puts Comment.pluck(:name).join(', ')
