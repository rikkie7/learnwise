puts "Destroying all sessions"
Session.destroy_all
Booking.destroy_all
puts "Destroying all bookings"
LearningTopic.destroy_all
puts "Destroying all learning topics"
puts "Destroying all courses"
Course.destroy_all
puts "Destroying all users"
User.destroy_all
Review.destroy_all
puts "Destroying all reviews"

puts "Creating users ..."
user1 = User.create!(first_name: "John", last_name: "Doe", email: "user1@gmail.com", password: "password", username: "John", self_introduction: "I'm a full-stack developer with a passion for building beautiful and functional web applications. I have experience with a variety of technologies, including Ruby on Rails, React, and Node.js. I'm excited to share my knowledge with others and help them achieve their goals.", image_url: "https://as1.ftcdn.net/v2/jpg/08/62/37/84/1000_F_862378496_lYScZSKxfX5IEFKtl9wdPukyOfef4vAb.jpg")
puts "#{User.last.username} created!"
user2 = User.create!(first_name: "Jane", last_name: "Doe", email: "user2@gmail.com", password: "password", username: "Jane", self_introduction: "I'm a certified yoga instructor with over 10 years of experience. I've taught classes all over the world and have helped thousands of students improve their practice. I believe that yoga is for everyone, regardless of age, fitness level, or experience. My classes are fun, challenging, and accessible to all. I look forward to sharing my love of yoga with you!", image_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
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
puts "Creating additional users ..."
user8 = User.create!(first_name: "Alice", last_name: "Smith", email: "user8@gmail.com", password: "password", username: "Alice", self_introduction: "I'm a graphic designer with a passion for creating visually stunning designs. I have a strong background in both print and digital media, and I love helping clients bring their ideas to life through creative design solutions.", image_url: "https://images.pexels.com/photos/1521742/pexels-photo-1521742.jpeg")
puts "#{User.last.username} created!"
user9 = User.create!(first_name: "Bob", last_name: "Johnson", email: "user9@gmail.com", password: "password", username: "Bob", self_introduction: "I'm an experienced software engineer with a focus on backend development. I enjoy working on scalable systems and optimizing performance. Outside of work, I'm an avid reader and enjoy hiking.", image_url: "https://images.pexels.com/photos/5700668/pexels-photo-5700668.jpeg")
puts "#{User.last.username} created!"
user10 = User.create!(first_name: "Clara", last_name: "Williams", email: "user10@gmail.com", password: "password", username: "Clara", self_introduction: "I'm a digital marketer with a knack for creating effective marketing strategies and campaigns. I have a background in SEO, social media, and content marketing, and I'm passionate about helping businesses grow online.", image_url: "https://images.pexels.com/photos/3771803/pexels-photo-3771803.jpeg")
puts "#{User.last.username} created!"
user11 = User.create!(first_name: "David", last_name: "Brown", email: "user11@gmail.com", password: "password", username: "David", self_introduction: "I'm a seasoned financial analyst with expertise in market research and data analysis. I enjoy working with numbers and using data to drive strategic decision-making.", image_url: "https://images.pexels.com/photos/3825480/pexels-photo-3825480.jpeg")
puts "#{User.last.username} created!"
user12 = User.create!(first_name: "Eva", last_name: "Taylor", email: "user12@gmail.com", password: "password", username: "Eva", self_introduction: "I'm a passionate educator with over 10 years of experience in teaching various subjects. I strive to make learning engaging and enjoyable for students of all ages.", image_url: "https://images.pexels.com/photos/2861903/pexels-photo-2861903.jpeg")
puts "#{User.last.username} created!"
user13 = User.create!(first_name: "Frank", last_name: "Miller", email: "user13@gmail.com", password: "password", username: "Frank", self_introduction: "I'm a talented photographer with a keen eye for capturing beautiful moments. I specialize in portrait and landscape photography and enjoy working with clients to create memorable images.", image_url: "https://images.pexels.com/photos/2698512/pexels-photo-2698512.jpeg")
puts "#{User.last.username} created!"
user14 = User.create!(first_name: "Grace", last_name: "Davis", email: "user14@gmail.com", password: "password", username: "Grace", self_introduction: "I'm a project manager with a strong background in organizing and executing complex projects. I excel in team coordination and ensuring that projects are completed on time and within budget.", image_url: "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=2861&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
puts "#{User.last.username} created!"
user15 = User.create!(first_name: "Hank", last_name: "Wilson", email: "user15@gmail.com", password: "password", username: "Hank", self_introduction: "I'm a UX designer with a passion for creating intuitive and user-friendly interfaces. I have a background in human-computer interaction and enjoy solving complex design challenges.", image_url: "https://images.pexels.com/photos/3784441/pexels-photo-3784441.jpeg")
puts "#{User.last.username} created!"
user16 = User.create!(first_name: "Ivy", last_name: "Moore", email: "user16@gmail.com", password: "password", username: "Ivy", self_introduction: "I'm a wellness coach with a focus on holistic health and fitness. I help clients achieve their wellness goals through personalized coaching and support.", image_url: "https://images.pexels.com/photos/3795370/pexels-photo-3795370.jpeg")
puts "#{User.last.username} created!"

puts "Creating courses ..."
course1 = Course.create!(title: "The Complete Ruby on Rails Developer Course", description: "Learn to make innovative web apps with Ruby on Rails and unleash your creativity", category: "technology", format: "online", size: "group", price: 100, image_url: "https://community.theforeman.org/uploads/default/optimized/2X/8/83d09280c8809460222474ef8f7dbc94ee39abc9_2_690x362.png", user: user3, start_date: "2024-08-01 18:00:00", end_date: "2024-12-01 21:00:00")
puts "#{Course.last.title} created!"

course2 = Course.create!(title: "React - The Complete Guide 2024 (incl. Next.js, Redux)", description: "Dive in and learn React.js from scratch! Learn React, Hooks, Redux, React Router, Next.js, Best Practices and way more!", category: "technology", format: "online", size: "group", price: 200, image_url: "https://images.unsplash.com/photo-1687603921109-46401b201195?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user3, start_date: "2024-08-01 18:00:00", end_date: "2024-12-01 21:00:00")
puts "#{Course.last.title} created!"

course3 = Course.create!(title: "Chair Yoga Teacher Training Certificate - Yoga Alliance CE", description: "Learn Safe and Effective Seated Yoga - 30 HR Yoga Alliance CE Approved", category: "sports", format: "in_person", size: "private", price: 50, image_url: "https://images.unsplash.com/photo-1506126613408-eca07ce68773?q=80&w=2202&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user2, start_date: "2024-08-01 18:00:00", end_date: "2024-12-01 21:00:00 ", location: "51-53 Mort Street, Braddon, Australian Capital Territory 2601")
puts "#{Course.last.title} created!"

course4 = Course.create!(title: "Cooking 101: From Basics to Advanced Techniques for Mastering Every Dish", description: "Learn to cook with me - I love to teach cooking to my students - so many techniques and recipes! See you in the kitchen!", category: "cooking", size: "group", price: 150, image_url: "https://images.unsplash.com/photo-1556910103-1c02745aae4d?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user4, start_date: "2024-08-01 18:00:00", end_date: "2024-12-01 21:00:00", location: "395 Pitt Street, Sydney, New South Wales 2000", format: "in_person")
puts "#{Course.last.title} created!"

course5 = Course.create!(title: "Beginners Guide to Vegetable Gardening", description: "Gardening guidelines for establishing a nutrient rich and delectable culinary garden in your own backyard.", category: "gardening", size: "group", price: 50, image_url: "https://images.unsplash.com/photo-1621460248083-6271cc4437a8?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user5, start_date: "2024-11-01 18:00:00", end_date: "2025-03-01 18:00:00", location: "814 Pittwater Road, Dee Why, New South Wales 2099", format: "in_person")
puts "#{Course.last.title} created!"

course6 = Course.create!(title: "The Ultimate Soccer Guide | Play Like A Pro Soccer Player", description: "Learn how to drastically improve your soccer skills, fitness, confidence, and game intelligence FASTER than ever before.", category: "sports", size: "group", price: 10, image_url: "https://plus.unsplash.com/premium_photo-1661856745445-14fd848f0e53?q=80&w=2858&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user7, start_date: "2024-10-01 18:00:00", end_date: "2025-02-01 18:00:00", location: "2-4 Market Place, Hobart, Tasmania 7000", format: "in_person")
puts "#{Course.last.title} created!"

course7 = Course.create!(title: "An Entire MBA in 1 Course:Award Winning Business School Prof", description: "#1 Best Selling Business Course! Everything You Need to Know About Business from Start-up to IPO", category: "education", size: "group", price: 300, image_url: "https://images.unsplash.com/photo-1524178232363-1fb2b075b655?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user14, start_date: "2024-12-01 18:00:00", end_date: "2025-08-01 18:00:00", location: "29 Cameron Street, Launceston, Tasmania 7250", format: "in_person")
puts "#{Course.last.title} created!"

course8 = Course.create!(title: "First Aid Masterclass: A Complete Guide to First Aid", description: "The Complete Guide to First Aid and Emergency Medicine: Learn CPR, Heimlich, How to Stop Bleedings, Baby Care & More!", category: "others", size: "group", price: 200, image_url: "https://plus.unsplash.com/premium_photo-1663050906605-faa2aa0e5ff8?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", user: user6, start_date: "2024-08-10 18:00:00", end_date: "2024-09-10 18:00:00", location: "8 Franklin Street, Melbourne, Victoria 3000", format: "in_person")
puts "#{Course.last.title} created!"

course9 = Course.create!(title: "Rust: The Complete Developer's Guide", description: "Become a Rust engineer. Understand ownership, lifetimes, traits, generics, and much more through practical projects", category: "technology", format: "online", size: "group", price: 100, image_url: "https://miro.medium.com/v2/resize:fit:1400/format:webp/0*ywP7NFzW-8ZWilwJ.png", user: user1, start_date: "2024-08-01 18:00:00", end_date: "2024-12-01 21:00:00")
puts "#{Course.last.title} created!"

puts "Creating sessions ..."
Session.create!(
  title: "Class 01",
  description: "First class of Learn Ruby on Rails Course",
  start_time: "2024-09-18 18:00:00",
  end_time: "2024-09-18 21:00:00",
  date: "2024-09-18",
  course: course1
)

Session.create!(
  title: "Class 02",
  description: "Second class of Learn Ruby on Rails Course",
  start_time: "2024-09-30 18:00:00",
  end_time: "2024-09-30 21:00:00",
  date: "2024-09-30",
  course: course1
)

puts "Creating bookings ..."
Booking.create!(user: user8, course: Course.find_by(title: "Chair Yoga Teacher Training Certificate - Yoga Alliance CE"))
Booking.create!(user: user9, course: Course.find_by(title: "The Ultimate Soccer Guide | Play Like A Pro Soccer Player"))
Booking.create!(user: user10, course: Course.find_by(title: "Chair Yoga Teacher Training Certificate - Yoga Alliance CE"))
Booking.create!(user: user11, course: Course.find_by(title: "Cooking 101: From Basics to Advanced Techniques for Mastering Every Dish"))
Booking.create!(user: user12, course: Course.find_by(title: "The Ultimate Soccer Guide | Play Like A Pro Soccer Player"))
Booking.create!(user: user13, course: Course.find_by(title: "The Ultimate Soccer Guide | Play Like A Pro Soccer Player"))
Booking.create!(user: user14, course: Course.find_by(title: "Chair Yoga Teacher Training Certificate - Yoga Alliance CE"))
Booking.create!(user: user15, course: Course.find_by(title: "Chair Yoga Teacher Training Certificate - Yoga Alliance CE"))
Booking.create!(user: user16, course: Course.find_by(title: "Cooking 101: From Basics to Advanced Techniques for Mastering Every Dish"))
Booking.create!(user: user7, course: Course.find_by(title: "Cooking 101: From Basics to Advanced Techniques for Mastering Every Dish"))
Booking.create!(user: user2, course: Course.find_by(title: "An Entire MBA in 1 Course:Award Winning Business School Prof"))
Booking.create!(user: user3, course: Course.find_by(title: "An Entire MBA in 1 Course:Award Winning Business School Prof"))
Booking.create!(user: user4, course: Course.find_by(title: "An Entire MBA in 1 Course:Award Winning Business School Prof"))
Booking.create!(user: user5, course: Course.find_by(title: "An Entire MBA in 1 Course:Award Winning Business School Prof"))
Booking.create!(user: user6, course: Course.find_by(title: "An Entire MBA in 1 Course:Award Winning Business School Prof"))

puts "Creating learning topics ..."
LearningTopic.create!(course: course1, content: "Learn how to rapidly prototype ideas and turn them into presentable apps")
LearningTopic.create!(course: course1, content: "Become a professional Ruby on Rails developer")
LearningTopic.create!(course: course1, content: "Apply for jobs at software companies as Ruby on Rails developer")
LearningTopic.create!(course: course1, content: "Become a professional web application developer")
LearningTopic.create!(course: course1, content: "Master the Ruby on Rails framework")
LearningTopic.create!(course: course2, content: "Build powerful, fast, user-friendly and reactive web apps")
LearningTopic.create!(course: course2, content: "Provide amazing user experiences by leveraging the power of JavaScript with ease")
LearningTopic.create!(course: course2, content: "Understand the latest features and best practices of React")
LearningTopic.create!(course: course2, content: "Learn how to build full-stack applications with React, Node.js, and MongoDB")
LearningTopic.create!(course: course3, content: "Learn the basics of yoga, including poses, breathing techniques, and meditation")
LearningTopic.create!(course: course3, content: "Improve your flexibility, strength, and balance through regular practice")
LearningTopic.create!(course: course3, content: "Reduce stress, anxiety, and depression with yoga")
LearningTopic.create!(course: course3, content: "Develop a deeper connection with your body, mind, and spirit")
LearningTopic.create!(course: course4, content: "Learn how to cook a variety of dishes, from appetizers to desserts")
LearningTopic.create!(course: course4, content: "Master essential cooking techniques, such as chopping, sautéing, and baking")
LearningTopic.create!(course: course4, content: "Understand the importance of fresh, seasonal ingredients and how to source them")
LearningTopic.create!(course: course4, content: "Create healthy and delicious meals that you and your family will love")
LearningTopic.create!(course: course5, content: "Learn how to plant and care for a variety of plants, flowers, and vegetables")
LearningTopic.create!(course: course5, content: "Design and maintain a beautiful garden that reflects your personal style")
LearningTopic.create!(course: course5, content: "Improve your outdoor space with landscaping and hardscaping projects")
LearningTopic.create!(course: course5, content: "Grow your own food and reduce your carbon footprint")
LearningTopic.create!(course: course6, content: "Improve your football skills, including passing, shooting, and dribbling")
LearningTopic.create!(course: course6, content: "Develop teamwork, communication, and sportsmanship on and off the field")
LearningTopic.create!(course: course6, content: "Stay fit, healthy, and active by playing football regularly")
LearningTopic.create!(course: course6, content: "Have fun and make new friends while playing the beautiful game")
LearningTopic.create!(course: course7, content: "Learn the fundamentals of business, including marketing, finance, and management")
LearningTopic.create!(course: course7, content: "Start your own business or advance your career in a corporate setting")
LearningTopic.create!(course: course7, content: "Understand the latest trends and technologies in the business world")
LearningTopic.create!(course: course7, content: "Network with other business professionals and entrepreneurs")
LearningTopic.create!(course: course8, content: "Learn how to perform CPR, use an AED, and treat common injuries and illnesses")
LearningTopic.create!(course: course8, content: "Stay calm and focused in emergency situations and provide life-saving care")
LearningTopic.create!(course: course8, content: "Prepare for emergencies at home, work, or in public places")
LearningTopic.create!(course: course8, content: "Earn a certification in first aid and be prepared to help others in need")
LearningTopic.create!(course: course9, content: "Become a Rust engineer")
LearningTopic.create!(course: course9, content: "Understand ownership, lifetimes, traits, generics, and much more through practical projects")
LearningTopic.create!(course: course9, content: "Master the Rust programming language and its core concepts")
LearningTopic.create!(course: course9, content: "Build real-world applications with Rust and showcase your skills to potential employers")
LearningTopic.create!(course: course9, content: "Learn how to write safe, efficient, and reliable code with Rust")

puts "Creating reviews ..."
Review.create!(
  content: "An amazing course to start building React applications, the instructor is extremely great, he explains everything in different ways and shows us all the possible ways to work with React. If you're thinking about taking your career to the next level and learn something trendy, I really advise you in this course. Lastly, I want to thank the instructor for such a lovely course, I wish you all the best. Regards",
  rating: "5",
  user: user3,
  course: course2
)
Review.create!(
  content: "This is an amazing React course, packed with so much knowledge. I really enjoyed and learned so much from Max. Thanks and definitely will recommend others to take this course.",
  rating: "4",
  user: user5,
  course: course2
)
Review.create!(
  content: "J'ai vraiment beaucoup apprécié les cours de Max, il connais très bien ce domaine et l'explication sont toujours très claire avec le projets en pratique, j'ai pu accueilli des compétences avancé avec lui.
  juste un conseil pour tous ceux qui souhaite apprendre le développement web ou mobile suivez ces cours, vous ne serrai pas dessue.",
  rating: "4",
  user: user4,
  course: course2
)

Review.create!(
  content: "Nothing better than learning with Stephen Grider. I love how he takes you on a journey through code where each lesson builds upon each other. The course is much more than what the syntax is, you'll leave understanding why the syntax is the way it is.",
  rating: "5",
  user: user4,
  course: course9
)

Review.create!(
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned.
  One of the best parts of the course was the instructor, Stephen. He really knows Rust inside and out and had a knack for explaining tricky concepts in a simple and relatable way, making the whole learning process enjoyable and effective.
  The only thing I’d love to see is for Stephen to add one more chapter at the end to tie everything together with a useful project. That would be the perfect finishing touch!",
  rating: "4",
  user: user3,
  course: course9
)

Review.create!(
  content: "I've been learning Rust for a while now and this course was a great way to solidify my understanding of the language. The instructor, Stephen, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Rust!",
  rating: "5",
  user: user5,
  course: course9
)

Review.create!(
  course: course1,
  user: user3,
  rating: "5",
  content: "I've been learning Ruby on Rails for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Ruby on Rails!"
)

Review.create!(
  course: course1,
  user: user5,
  rating: "5",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course: course3,
  user: user3,
  rating: "5",
  content: "I've been learning Yoga for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Yoga!"
)
Review.create!(
  course: course3,
  user: user5,
  rating: "3",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course: course4,
  user: user3,
  rating: "5",
  content: "I've been learning Cooking for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Cooking!"
)
Review.create!(
  course: course4,
  user: user2,
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course: course5,
  user: user3,
  rating: "5",
  content: "I've been learning Gardening for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Gardening!"
)
Review.create!(
  course: course5,
  user: user2,
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course: course6,
  user: user3,
  rating: "5",
  content: "I've been learning Football for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Football!"
)
Review.create!(
  course: course6,
  user: user2,
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course: course7,
  user: user3,
  rating: "5",
  content: "I've been learning Business for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn Business!"
)
Review.create!(
  course: course7,
  user: user2,
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)
Review.create!(
  course: course8,
  user: user3,
  rating: "5",
  content: "I've been learning First Aid for a while now and this course was a great way to solidify my understanding of the language. The instructor, John, is a fantastic teacher and does a great job of breaking down complex topics into easy-to-understand concepts. I really enjoyed the practical projects and the way the course was structured. I would definitely recommend this course to anyone looking to learn First Aid!"
)
Review.create!(
  course: course8,
  user: user2,
  rating: "4",
  content: "From start to finish, this course was fantastic! The content was super well-organized, covering everything from the basics to more advanced stuff in a really clear and engaging way. The way the topics flowed made it easy to build on what we had already learned."
)

puts "Reviews created!"

chatroom1 = Chatroom.create!( name: "The Complete Ruby on Rails Developer Course", course: course1 )
chatroom2 = Chatroom.create!( name: "React", course: course2 )
puts "Chatroom created!"
Message.create!(content: "Welcome", user: user3, chatroom: chatroom1 )
Message.create!(content: "Welcome to React", user: user3, chatroom: chatroom2)
puts "Messages created!"
puts "Seed created!"
