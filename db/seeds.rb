# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.find_or_initialize_by(email: 'admin@teamairship.com', first_name: 'Admin', last_name: 'McTesterson')
admin.password = admin.password_confirmation = 'password'
admin.save

user = User.find_or_initialize_by(email: 'user@teamairship.com', first_name: 'Author', last_name: 'McBlogger')
user.password = user.password_confirmation = 'password'
user.save

date = [3.days.ago, 2.days.from_now]
10.times do
  user.posts.create(title: FFaker::Lorem.sentence, content: FFaker::Lorem.paragraph, published_date: date.sample)
end

