# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Add Provinces
provinces = ['AB', 'BC', 'MB', 'NB', 'NL', 'NS', 'NT', 'NU', 'ON', 'PE', 'QC', 'SK', 'YT']
pst = [0.00, 0.07, 0.08, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.09975, 0.06, 0.00]
hst = [0.00, 0.00, 0.00, 0.10, 0.10, 0.00, 0.10, 0.00, 0.08, 0.10, 0.00, 0.00, 0.00]
i = 0

provinces.each do | province |
  Province.create!(name: province, pst: pst[i], gst: 0.05, hst: hst[i])
  i += 1
end

# Add Statuses
statuses = ['In Progress', 'Paid', 'Shipped', 'Delivered']

statuses.each do | status |
  Status.create!(name: status)
end

# Add Categories
categories = [{name: 'Paper', description: 'Paper and paper products'}, 
              {name: 'Office Supplies', description: 'Pens, staplers, markers, and more'}, 
              {name: 'Ink and Toner', description: 'Ink and toner for Dunder Mifflin Sabre printers'}, 
              {name: 'Printers', description: 'Printers made by Sabre'}]

categories.each do | category |
  Category.create!(name: category[:name], description: category[:description])
end