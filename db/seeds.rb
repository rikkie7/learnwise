
puts "Destroying all sessions"
Session.destroy_all
puts "Destroying all courses"
Course.destroy_all
puts "Destroying all users"
User.destroy_all




puts "Destroying all sessions"
Session.destroy_all
Booking.destroy_all
puts "Destroying all bookings"
puts "Destroying all courses"
Course.destroy_all
puts "Destroying all users"
User.destroy_all

puts "Creating users ..."
user1 = User.create!(first_name: "John", last_name: "Doe", email: "user1@gmail.com", password: "password", username: "John", self_introduction: "I'm a full-stack developer with a passion for building beautiful and functional web applications. I have experience with a variety of technologies, including Ruby on Rails, React, and Node.js. I'm excited to share my knowledge with others and help them achieve their goals.", image_url: "https://as1.ftcdn.net/v2/jpg/08/62/37/84/1000_F_862378496_lYScZSKxfX5IEFKtl9wdPukyOfef4vAb.jpg")
puts "#{User.last.username} created!"
user2 = User.create!(first_name: "Jane", last_name: "Doe", email: "user2@gmail.com", password: "password", username: "Jane", self_introduction: "I'm a certified yoga instructor with over 10 years of experience. I've taught classes all over the world and have helped thousands of students improve their practice. I believe that yoga is for everyone, regardless of age, fitness level, or experience. My classes are fun, challenging, and accessible to all. I look forward to sharing my love of yoga with you!")
puts "#{User.last.username} created!"
user3 = User.create!(first_name: "Yannan", last_name: "Sun", email: "user3@gmail.com", password: "password", username: "Yannan", self_introduction: "I'm a developer with a passion for teaching. I'm the lead instructor at the London App Brewery, London's leading Programming Bootcamp. I've helped hundreds of thousands of students learn to code and change their lives by becoming a developer. I've been invited by companies such as Twitter, Facebook and Google to teach their employees. My first foray into programming was when I was just 12 years old, wanting to build my own Space Invader game. Since then, I've made hundred of websites, apps and games. But most importantly, I realised that my greatest passion is teaching. I spend most of my time researching how to make learning to code fun and make hard concepts easy to understand. I apply everything I discover into my bootcamp courses. In my courses, you'll find lots of geeky humour but also lots of explanations and animations to make sure everything is easy to understand. I'll be there for you every step of the way.")
puts "#{User.last.username} created!"
user4 = User.create!(first_name: "Mark", last_name: "Stevens", email: "user4@gmail.com", password: "password", username: "Mark", self_introduction: "I'm a professional chef with over 20 years of experience in the culinary industry. I've worked in some of the top restaurants in the world and have trained under Michelin-starred chefs. I'm passionate about sharing my knowledge and love of cooking with others. I believe that anyone can learn to cook delicious and healthy meals with the right guidance and practice. Whether you're a beginner or an experienced cook, I'm here to help you improve your skills and discover new recipes.", image_url: "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
puts "#{User.last.username} created!"
user5 = User.create!(first_name: "Jack", last_name: "Sparrow", email: "user5@gmail.com", password: "password", username: "Jack", self_introduction: "I'm a professional gardener with over 15 years of experience in landscaping and horticulture. I've worked on a wide range of projects, from small urban gardens to large commercial properties. I'm passionate about plants and the environment, and I love sharing my knowledge with others. I believe that gardening is a rewarding and therapeutic activity that anyone can enjoy. Whether you're a beginner or an experienced gardener, I'm here to help you cultivate your green thumb and create a beautiful outdoor space.", image_url: "https://as2.ftcdn.net/v2/jpg/08/63/61/03/1000_F_863610348_PKD3dC2x2KHb8rufps65Zh404Q3ooNw2.webp")
puts "#{User.last.username} created!"
user6 = User.create!(first_name: "Jenny", last_name: "Stevens", email: "user6@gmail.com", password: "password", username: "Jenny", self_introduction: "I'm a certified first aid instructor with over 10 years of experience in emergency response and medical training. I've worked in a variety of settings, from hospitals to schools to community centers. I'm passionate about teaching others how to save lives and respond to emergencies. I believe that everyone should have basic first aid skills and be prepared to help others in times of need. Whether you're a parent, a teacher, or just someone who wants to be prepared for the unexpected, I'm here to help you learn the skills you need to stay safe and help others.", image_url: "https://as1.ftcdn.net/v2/jpg/08/99/58/80/1000_F_899588058_2AxcZBJrzDRBOJhn5ssuNBrFNjn7kE0y.jpg")
puts "#{User.last.username} created!"
user7 = User.create!(first_name: "Stephen", last_name: "Grider", email: "user7@gmail.com", password: "password", username: "Stephen", self_introduction: "I'm a professional football coach with over 15 years of experience in coaching and player development. I've worked with players of all ages and skill levels, from youth teams to professional clubs. I'm passionate about the beautiful game and love sharing my knowledge and expertise with others. I believe that football is more than just a sport – it's a way of life. Whether you're a beginner or an experienced player, I'm here to help you improve your skills, reach your goals, and have fun on the field.", image_url: "https://as1.ftcdn.net/v2/jpg/08/61/73/70/1000_F_861737040_h2cIAgkaDJtwgfJkOv3H7eECjhjoGWAN.webp")


puts "Creating courses ..."
Course.create!(title: "The Complete Ruby on Rails Developer Course", description: "Learn to make innovative web apps with Ruby on Rails and unleash your creativity", category: "technology", format: "online", size: "group", price: 100, image_url: "https://community.theforeman.org/uploads/default/optimized/2X/8/83d09280c8809460222474ef8f7dbc94ee39abc9_2_690x362.png", user: user3, start_date: "2024-08-01", end_date: "2024-12-01")
puts "#{Course.last.title} created!"

Course.create!(title: "React - The Complete Guide 2024 (incl. Next.js, Redux)", description: "Dive in and learn React.js from scratch! Learn React, Hooks, Redux, React Router, Next.js, Best Practices and way more!", category: "technology", format: "online", size: "group", price: 200, image_url: "https://images.unsplash.com/photo-1687603921109-46401b201195?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user3, start_date: "2024-08-01", end_date: "2024-12-01")
puts "#{Course.last.title} created!"

Course.create!(title: "Yoga", description: "Learn Yoga", category: "sports", format: "in_person", size: "private", price: 50, image_url: "https://images.unsplash.com/photo-1506126613408-eca07ce68773?q=80&w=2202&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user2, start_date: "2024-08-01", end_date: "2024-12-01", location: "Clem Jones Promenade, South Brisbane QLD 4101")
puts "#{Course.last.title} created!"

Course.create!(title: "Cooking", description: "Learn Cooking", category: "cooking", size: "group", price: 150, image_url: "https://images.unsplash.com/photo-1556910103-1c02745aae4d?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user4, start_date: "2024-08-01", end_date: "2024-12-01", location: "6 The Esplanade, Perth WA 6000, Australia:", format: "in_person")
puts "#{Course.last.title} created!"

Course.create!(title: "Gardening", description: "Learn how to plant a tree", category: "gardening", size: "group", price: 50, image_url: "https://images.unsplash.com/photo-1621460248083-6271cc4437a8?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user5, start_date: "2024-11-01", end_date: "2025-03-01", location: "904/84 Pitt St, Sydney NSW 2000, Australia", format: "in_person")
puts "#{Course.last.title} created!"

Course.create!(title: "Football", description: "Play football with your mates", category: "sports", size: "group", price: 10, image_url: "https://plus.unsplash.com/premium_photo-1661856745445-14fd848f0e53?q=80&w=2858&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user7, start_date: "2024-10-01", end_date: "2025-02-01", location: "1/186 Scarborough Beach Road, Mount Hawthorn", format: "in_person")
puts "#{Course.last.title} created!"

Course.create!(title: "Business", description: "Business 101", category: "education", size: "group", price: 300, image_url: "https://images.unsplash.com/photo-1524178232363-1fb2b075b655?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user4, start_date: "2024-12-01", end_date: "2025-08-01", location: "22 Howard Street, Perth", format: "in_person")
puts "#{Course.last.title} created!"

Course.create!(title: "First Aid", description: "How to perform CPR", category: "others", size: "group", price: 200, image_url: "https://plus.unsplash.com/premium_photo-1663050906605-faa2aa0e5ff8?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user6, start_date: "2024-08-10", end_date: "2024-08-10", location: "D1060 Hay Street, West Perth WA 6005", format: "in_person")
puts "#{Course.last.title} created!"

puts "Creating courses ..."
Course.create!(title: "Rust: The Complete Developer's Guide", description: "Become a Rust engineer. Understand ownership, lifetimes, traits, generics, and much more through practical projects", category: "technology", format: "online", size: "group", price: 100, image_url: "https://community.theforeman.org/uploads/default/optimized/2X/8/83d09280c8809460222474ef8f7dbc94ee39abc9_2_690x362.png", user: user1, start_date: "2024-08-01", end_date: "2024-12-01")
puts "#{Course.last.title} created!"

puts "Creating learning topics ..."
LearningTopic.create!(course_id: 1, content: "Learn how to rapidly prototype ideas and turn them into presentable apps")
LearningTopic.create!(course_id: 1, content: "Become a professional Ruby on Rails developer")
LearningTopic.create!(course_id: 1, content: "Apply for jobs at software companies as Ruby on Rails developer")
LearningTopic.create!(course_id: 1, content: "Become a professional web application developer")
LearningTopic.create!(course_id: 1, content: "Master the Ruby on Rails framework")
LearningTopic.create!(course_id: 2, content: "Build powerful, fast, user-friendly and reactive web apps")
LearningTopic.create!(course_id: 2, content: "Provide amazing user experiences by leveraging the power of JavaScript with ease")
LearningTopic.create!(course_id: 2, content: "Understand the latest features and best practices of React")
LearningTopic.create!(course_id: 2, content: "Learn how to build full-stack applications with React, Node.js, and MongoDB")
LearningTopic.create!(course_id: 3, content: "Learn the basics of yoga, including poses, breathing techniques, and meditation")
LearningTopic.create!(course_id: 3, content: "Improve your flexibility, strength, and balance through regular practice")
LearningTopic.create!(course_id: 3, content: "Reduce stress, anxiety, and depression with yoga")
LearningTopic.create!(course_id: 3, content: "Develop a deeper connection with your body, mind, and spirit")
LearningTopic.create!(course_id: 4, content: "Learn how to cook a variety of dishes, from appetizers to desserts")
LearningTopic.create!(course_id: 4, content: "Master essential cooking techniques, such as chopping, sautéing, and baking")
LearningTopic.create!(course_id: 4, content: "Understand the importance of fresh, seasonal ingredients and how to source them")
LearningTopic.create!(course_id: 4, content: "Create healthy and delicious meals that you and your family will love")
LearningTopic.create!(course_id: 5, content: "Learn how to plant and care for a variety of plants, flowers, and vegetables")
LearningTopic.create!(course_id: 5, content: "Design and maintain a beautiful garden that reflects your personal style")
LearningTopic.create!(course_id: 5, content: "Improve your outdoor space with landscaping and hardscaping projects")
LearningTopic.create!(course_id: 5, content: "Grow your own food and reduce your carbon footprint")
LearningTopic.create!(course_id: 6, content: "Improve your football skills, including passing, shooting, and dribbling")
LearningTopic.create!(course_id: 6, content: "Develop teamwork, communication, and sportsmanship on and off the field")
LearningTopic.create!(course_id: 6, content: "Stay fit, healthy, and active by playing football regularly")
LearningTopic.create!(course_id: 6, content: "Have fun and make new friends while playing the beautiful game")
LearningTopic.create!(course_id: 7, content: "Learn the fundamentals of business, including marketing, finance, and management")
LearningTopic.create!(course_id: 7, content: "Start your own business or advance your career in a corporate setting")
LearningTopic.create!(course_id: 7, content: "Understand the latest trends and technologies in the business world")
LearningTopic.create!(course_id: 7, content: "Network with other business professionals and entrepreneurs")
LearningTopic.create!(course_id: 8, content: "Learn how to perform CPR, use an AED, and treat common injuries and illnesses")
LearningTopic.create!(course_id: 8, content: "Stay calm and focused in emergency situations and provide life-saving care")
LearningTopic.create!(course_id: 8, content: "Prepare for emergencies at home, work, or in public places")
LearningTopic.create!(course_id: 8, content: "Earn a certification in first aid and be prepared to help others in need")
LearningTopic.create!(course_id: 9, content: "Become a Rust engineer")
LearningTopic.create!(course_id: 9, content: "Understand ownership, lifetimes, traits, generics, and much more through practical projects")
LearningTopic.create!(course_id: 9, content: "Master the Rust programming language and its core concepts")
LearningTopic.create!(course_id: 9, content: "Build real-world applications with Rust and showcase your skills to potential employers")
LearningTopic.create!(course_id: 9, content: "Learn how to write safe, efficient, and reliable code with Rust")

puts "Creating sessions ..."
Session.create!(
  title: "Class 01",
  description: "First class of Learn Ruby on Rails Course",
  start_time: "2024-09-18 18:00:00",
  end_time: "2024-09-18 21:00:00",
  date: "2024-09-18",
  course: Course.first
)

puts "Creating reviews ..."
Review.create!(
  content: "An amazing course to start building React applications, the instructor is extremely great, he explains everything in different ways and shows us all the possible ways to work with React. If you're thinking about taking your career to the next level and learn something trendy, I really advise you in this course. Lastly, I want to thank the instructor for such a lovely course, I wish you all the best. Regards",
  rating: "5",
  user_id: "3",
  course_id: "2"
)
Review.create!(
  content: "This is an amazing React course, packed with so much knowledge. I really enjoyed and learned so much from Max. Thanks and definitely will recommend others to take this course.",
  rating: "4",
  user_id: "5",
  course_id: "2"
)
Review.create!(
  content: "J'ai vraiment beaucoup apprécié les cours de Max, il connais très bien ce domaine et l'explication sont toujours très claire avec le projets en pratique, j'ai pu accueilli des compétences avancé avec lui.
  juste un conseil pour tous ceux qui souhaite apprendre le développement web ou mobile suivez ces cours, vous ne serrai pas dessue.",
  rating: "4",
  user_id: "4",
  course_id: "2"
)

Review.create!(
  content: "Nothing better than learning with Stephen Grider. I love how he takes you on a journey through code where each lesson builds upon each other. The course is much more than what the syntax is, you'll leave understanding why the syntax is the way it is.",
  rating: "5",
  user_id: "4",
  course_id: "9"
)

Review.create!(
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned.
  One of the best parts of the course was the instructor, Stephen. He really knows Rust inside and out and had a knack for explaining tricky concepts in a simple and relatable way, making the whole learning process enjoyable and effective.
  The only thing I’d love to see is for Stephen to add one more chapter at the end to tie everything together with a useful project. That would be the perfect finishing touch!",
  rating: "4",
  user_id: "3",
  course_id: "9"
)

Review.create!(
  content: "I've been learning Rust for a while now and this course was a great way to solidify my understanding of the language. The instructor, Stephen, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Rust!",
  rating: "5",
  user_id: "5",
  course_id: "9"
)

Review.create!(
  course_id: "1",
  user_id: "3",
  rating: "5",
  content: "I've been learning Ruby on Rails for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Ruby on Rails!"
)

Review.create!(
  course_id: "1",
  user_id: "5",
  rating: "5",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course_id: "3",
  user_id: "3",
  rating: "5",
  content: "I've been learning Yoga for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Yoga!"
)
Review.create!(
  course_id: "3",
  user_id: "5",
  rating: "3",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course_id: "4",
  user_id: "3",
  rating: "5",
  content: "I've been learning Cooking for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Cooking!"
)
Review.create!(
  course_id: "4",
  user_id: "2",
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course_id: "5",
  user_id: "3",
  rating: "5",
  content: "I've been learning Gardening for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Gardening!"
)
Review.create!(
  course_id: "5",
  user_id: "2",
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course_id: "6",
  user_id: "3",
  rating: "5",
  content: "I've been learning Football for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Football!"
)
Review.create!(
  course_id: "6",
  user_id: "2",
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course_id: "7",
  user_id: "3",
  rating: "5",
  content: "I've been learning Business for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Business!"
)
Review.create!(
  course_id: "7",
  user_id: "2",
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course_id: "8",
  user_id: "3",
  rating: "5",
  content: "I've been learning First Aid for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn First Aid!"
)
Review.create!(
  course_id: "8",
  user_id: "2",
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)

puts "Seeds created!"
