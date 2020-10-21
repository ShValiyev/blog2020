# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new(email: 'aialeksandrov@mephi.ru', password: 'qwerty', name: 'Alexey', admin: true)
u.save
I18n.locale = :ru

20.times do
  email = Faker::Internet.email
  name = Faker::Name.name
  password = Faker::Internet.password
  user = User.create(email: email, password: password, name: name)

  rand(10).times do
    title  = Faker::Lorem.words(2..10).join(' ')
    body  = Faker::Lorem.paragraphs(2..8).join("\n")
    Article.create(user: user, text: body, title: title)
  end
end
