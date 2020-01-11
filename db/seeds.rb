User.destroy_all

u1 = User.create! name: 'Hasan', email: 'hasan@gmail.com', password: 'hasan', admin: true
u2 = User.create! name: 'Mikail', email: 'mikail@gmail.com', password: 'mikail'

puts "Created #{ User.count } users."
