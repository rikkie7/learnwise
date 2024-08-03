puts "Destroying all sessions"
Session.destroy_all
puts "Destroying all courses"
Course.destroy_all
puts "Destroying all users"
User.destroy_all

puts "Creating users ..."
user1 = User.create!(first_name: "John", last_name: "Doe", email: "user1@gmail.com", password: "password", username: "John")
puts "#{User.last.username} created!"
user2 = User.create!(first_name: "Jane", last_name: "Doe", email: "user2@gmail.com", password: "password", username: "Jane")
puts "#{User.last.username} created!"
user3 = User.create!(first_name: "Yannan", last_name: "Sun", email: "user3@gmail.com", password: "password", username: "Yannan")
puts "#{User.last.username} created!"

puts "Creating courses ..."

Course.create!(title: "Ruby on Rails", description: "Learn Ruby on Rails", category: "technology", size: "group", price: 100, user: user1, location: "Bennelong Point, Sydney NSW 2000")
puts "#{Course.last.title} created!"
Course.create!(title: "React", description: "Learn React", category: "technology", size: "group", price: 200, user: user2, location: "Corner Swanston Street & Flinders Street, Melbourne VIC 3000")
puts "#{Course.last.title} created!"
Course.create!(title: "Yoga", description: "Learn Yoga", category: "sports", size: "private", price: 50, user: user1, location: "Clem Jones Promenade, South Brisbane QLD 4101")
puts "#{Course.last.title} created!"
Course.create!(title: "Cooking", description: "Learn Cooking", category: "cooking", size: "group", price: 150, user: user3, location: "Fraser Avenue, Perth WA 6005")

puts "#{Course.last.title} created!"



puts "Creating Sessions ..."
Session.create!(title: "Cooking 101", description: "Learn the basics of Cooking", start_time: DateTime.new(2021, 9, 1, 9, 0, 0), end_time: DateTime.new(2021, 9, 1, 10, 0, 0), course: course1)
puts "#{Session.last.title} created!"
