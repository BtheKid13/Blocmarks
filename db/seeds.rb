require 'faker'

# Create Users
5.times do
  user = User.new(
    first_name:     Faker::StarWars.character,
    last_name:      Faker::Name.last_name,
    email:          Faker::Internet.email,
    password:       Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

# Create an admin user
unless User.find_by(email: 'admin@example.com')
  admin = User.new(
    first_name:     'Wil',
    last_name:      'Burke',
    email:          'billyburke13@gmail.com',
    password:       'helloworld'
  )
  admin.skip_confirmation!
  admin.save!
end

users = User.all
puts "#{users.count} users have been persisted."

#Creates Topics
20.times do
  t = Topic.new
  t.title = Faker::Beer.name

  t.save!
end

topics = Topic.all
puts "#{topics.count} Topics Seeded"

#Creates Bookmarks
50.times do
  b = Bookmark.create!(
  url: Faker::Internet.domain_name,
  topic: topics.sample
  )
  b.save!
end

bookmarks = Bookmark.all
puts "#{bookmarks.count} Bookmarks Seeded"

puts "Seed Finished"
