
# puts "Destroying all sessions"
# Session.destroy_all
# Booking.destroy_all
# puts "Destroying all bookings"
# puts "Destroying all courses"
# Course.destroy_all
# puts "Destroying all users"
# User.destroy_all

puts "Creating users ..."
user1 = User.create!(first_name: "John", last_name: "Doe", email: "user1@gmail.com", password: "password", username: "John")
puts "#{User.last.username} created!"
user2 = User.create!(first_name: "Jane", last_name: "Doe", email: "user2@gmail.com", password: "password", username: "Jane")
puts "#{User.last.username} created!"
user3 = User.create!(first_name: "Yannan", last_name: "Sun", email: "user3@gmail.com", password: "password", username: "Yannan")
puts "#{User.last.username} created!"
user4 = User.create!(first_name: "Mark", last_name: "Stevens", email: "user4@gmail.com", password: "password", username: "Mark")
puts "#{User.last.username} created!"
User.create!(first_name: "Jack", last_name: "Sparrow", email: "user5@gmail.com", password: "password", username: "Jack")
puts "#{User.last.username} created!"

puts "Creating courses ..."

Course.create!(title: "The Complete Ruby on Rails Developer Course", description: "Learn to make innovative web apps with Ruby on Rails and unleash your creativity", category: "technology", size: "group", price: 100, image_url: "https://community.theforeman.org/uploads/default/optimized/2X/8/83d09280c8809460222474ef8f7dbc94ee39abc9_2_690x362.png", user: user1, start_date: "2024-08-01", end_date: "2024-12-01", location: "Bennelong Point, Sydney NSW 2000")
puts "#{Course.last.title} created!"
Course.create!(title: "React - The Complete Guide 2024 (incl. Next.js, Redux)", description: "Dive in and learn React.js from scratch! Learn React, Hooks, Redux, React Router, Next.js, Best Practices and way more!", category: "technology", size: "group", price: 200, image_url: "https://images.unsplash.com/photo-1687603921109-46401b201195?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user2, start_date: "2024-08-01", end_date: "2024-12-01", location: "Corner Swanston Street & Flinders Street, Melbourne VIC 3000")
puts "#{Course.last.title} created!"
Course.create!(title: "Yoga", description: "Learn Yoga", category: "sports", size: "private", price: 50, image_url: "https://images.unsplash.com/photo-1506126613408-eca07ce68773?q=80&w=2202&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user1, start_date: "2024-08-01", end_date: "2024-12-01", location: "Clem Jones Promenade, South Brisbane QLD 4101")
puts "#{Course.last.title} created!"
Course.create!(title: "Cooking", description: "Learn Cooking", category: "cooking", size: "group", price: 150, image_url: "https://images.unsplash.com/photo-1556910103-1c02745aae4d?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user3, start_date: "2024-08-01", end_date: "2024-12-01", location: "Fraser Avenue, Perth WA 6005")
puts "#{Course.last.title} created!"
Course.create!(title: "Gardening", description: "Learn how to plant a tree", category: "gardening", size: "group", price: 50, image_url: "https://images.unsplash.com/photo-1621460248083-6271cc4437a8?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user3, start_date: "2024-11-01", end_date: "2025-03-01", location: "Fraser Avenue, Perth WA 6005")
puts "#{Course.last.title} created!"
Course.create!(title: "Football", description: "Play football with your mates", category: "sports", size: "group", price: 10, image_url: "https://plus.unsplash.com/premium_photo-1661856745445-14fd848f0e53?q=80&w=2858&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user3, start_date: "2024-10-01", end_date: "2025-02-01", location: "Fraser Avenue, Perth WA 6005")
puts "#{Course.last.title} created!"
Course.create!(title: "Business", description: "Business 101", category: "education", size: "group", price: 300, image_url: "https://images.unsplash.com/photo-1524178232363-1fb2b075b655?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user3, start_date: "2024-12-01", end_date: "2025-08-01", location: "Fraser Avenue, Perth WA 6005")
puts "#{Course.last.title} created!"
Course.create!(title: "First Aid", description: "How to perform CPR", category: "others", size: "group", price: 200, image_url: "https://plus.unsplash.com/premium_photo-1663050906605-faa2aa0e5ff8?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user4, start_date: "2024-08-10", end_date: "2024-08-10", location: "Fraser Avenue, Perth WA 6005")
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
