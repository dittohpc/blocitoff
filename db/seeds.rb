50.times do
  User.create!(
    email:  Faker::Internet.safe_email,
    password: Faker::Internet.password(8,10)
  )
end

users = User.all

200.times do
  Item.create!(
    name: Faker::Hipster.sentence,
    user_id: Faker::Number.between(1, 52)
  )
end

items = Item.all

puts "Seeding Complete"
puts "#{User.count} Users were created"
puts "#{Item.count} Items were created"
