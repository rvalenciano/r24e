# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create({ })
u = User.new(
      :username => "Randy", 
      :email => "ravf.226@gmail.com", 
      :password => "admin12345", 
      :password_confirmation => "admin12345",
      :active => true,
      :admin => true
)
u.save(validate: false)

# Test user accounts
(1..50).each do |i|
  u = User.new(
  	  username: "user#{i}",
      email: "user#{i}@example.com",
      password: "1234",
      password_confirmation: "1234"
  )
  u.save(validate: false)

  puts "#{i} test users created..." if (i % 5 == 0)

end