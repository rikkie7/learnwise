LearnWise

Welcome to LearnWise, a full-stack web application designed to enhance learning experiences by connecting students with educational resources and services. Inspired by modern learning platforms, LearnWise offers a suite of features to facilitate booking learning sessions, integrating interactive maps, and engaging in real-time discussions through chatrooms.


Features

• Browse Learning Resources: Explore a variety of educational resources, including tutors, courses, and learning materials with detailed profiles.

• Book Sessions: Easily schedule and book learning sessions with tutors for various subjects and time slots.

• Manage Bookings: View and manage your active and past learning sessions through your user dashboard.

• Map Integration: Visualise tutor locations and educational venues on an interactive map using Mapbox GL JS.

• Real-Time Chat: Engage in real-time discussions with tutors and other users through integrated chatrooms.

• Search and Filter: Utilize a search bar to filter resources and sessions by location, subject, and description.

• Chatbot Assistance: Receive instant help and guidance from an AI-powered chatbot. Whether you need help navigating the platform, booking sessions, or finding resources, the chatbot is available 24/7 to assist you with quick responses and personalized recommendations.

Technology Stack

• Backend: Ruby on Rails

• Frontend: HTML, CSS, JavaScript, and Stimulus

• Map Integration: Mapbox GL JS

• Chatbot: AI

• Payment Processing: Stripe

• Database: PostgreSQL

• Deployment: Heroku

Getting Started

Prerequisites
Ruby (version 3.1 or higher)
Rails (version 7.0 or higher)
PostgreSQL
Node.js (for JavaScript dependencies)

Installation

1 - Clone the repository: git clone git@github.com:rikkie7/learnwise.git
2 - cd learnwise
3 - Install dependencies: bundle install
4 - Set up the database: rails db:create rails db:migrate rails db:seed
5 - Start the server: rails s
6 - For Stripe payment confirmation:
  6.1 - run: brew install ngrok/ngrok
  6.2 - run: ngrok http http://localhost:300
  6.3 - Copy the Forwarding and visit. ie: https://9e88-159-196-12-115.ngrok-free.app
7 - Use this URL to browse around

Alternatively you can go to the website:
https://www.learn-wise.live/

Log in
Email: user1@gmail.com
Password: password

Payment page:
email: user1@gmail.com
Card information: 4242 4242 4242 4242
MM / YY : 03/34
CVC: 222
Cardholder name: John

Usage
• Register: Create an account or log in to start browsing and booking learning sessions.
• Browse: Navigate through available resources and view their details.
• Book: Select a session and choose your desired time slot.
• Manage: Access your dashboard to view and manage your bookings.
• Chat: Engage in real-time discussions through the chatrooms feature.
• Chatbot: Get instant assistance and guidance from the integrated chatbot for booking sessions, finding resources, or navigating the platform efficiently.  
