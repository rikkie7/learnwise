puts "Destroying all users"
User.destroy_all
puts "Destroying all courses"
Course.destroy_all
puts "Destroying all sessions"
Session.destroy_all

puts "Creating users ..."
user1 = User.create!(first_name: "John", last_name: "Doe", email: "user1@gmail.com", password: "password", username: "John")
puts "#{User.last.username} created!"
user2 = User.create!(first_name: "Jane", last_name: "Doe", email: "user2@gmail.com", password: "password", username: "Jane")
puts "#{User.last.username} created!"
user3 = User.create!(first_name: "Yannan", last_name: "Sun", email: "user3@gmail.com", password: "password", username: "Yannan")
puts "#{User.last.username} created!"

puts "Creating courses ..."


Course.create!(title: "The Complete Ruby on Rails Developer Course", description: "Learn to make innovative web apps with Ruby on Rails and unleash your creativity", category: "technology", format: "online", size: "group", price: 100, user: user1, start_date: "2024-08-01", end_date: "2024-12-01")
puts "#{Course.last.title} created!"
Course.create!(title: "React - The Complete Guide 2024 (incl. Next.js, Redux)", description: "Dive in and learn React.js from scratch! Learn React, Hooks, Redux, React Router, Next.js, Best Practices and way more!", category: "technology", format: "in_person", size: "group", price: 200, user: user2, start_date: "2024-08-01", end_date: "2024-12-01", location: "116 Wallis Ave, Strathfield NSW 2135, Australia")
puts "#{Course.last.title} created!"
Course.create!(title: "Yoga", description: "Learn Yoga", category: "sports", format: "online", size: "private", price: 50, user: user1, start_date: "2024-08-01", end_date: "2024-12-01")
puts "#{Course.last.title} created!"
Course.create!(title: "Cooking", description: "Learn Cooking", category: "cooking", format: "in_person", size: "group", price: 150, user: user3, start_date: "2024-08-01", end_date: "2024-12-01", location: "116 Wallis Ave, Strathfield NSW 2135, Australia")

puts "#{Course.last.title} created!"

puts "Creating sessions ..."
Session.create!(
  title: "Class 01",
  description: "First class of Learn Ruby on Rails Course",
  start_time: "18:00:00",
  end_time: "21:00:00",
  date: "2024-09-01",
  course: Course.first
)
