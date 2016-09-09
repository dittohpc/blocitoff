5.times do
  User.create!(
    email:  Faker::Internet.safe_email,
    password: Faker::Internet.password(8,10)
  )
end

users = User.all

77.times do
  Item.create!(
    name: Faker::Hipster.sentence,
    user_id: users.sample,
    created_at: (Time.now - 8.days)
  )
end

items = Item.all

puts "Seeding Complete"
puts "#{Item.count} Items were created"
