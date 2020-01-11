User.destroy_all

u1 = User.create! name: 'Hasan', email: 'hasan@gmail.com', image: 'https://i.pinimg.com/474x/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg', password: 'hasan', admin: true
u2 = User.create! name: 'Mikail', email: 'mikail@gmail.com', password: 'mikail'

puts "Created #{ User.count } users."
