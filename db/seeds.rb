# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "👩👨 Seeding users..."

user1 = User.create(username: 'Jen', password: 'apple')
user2 = User.create(username: 'Shani', password: 'banana')
user3 = User.create(username: 'Gehrig', password: 'banana')
user4 = User.create(username: 'Ethan', password: 'banana')
user5 = User.create(username: 'Hain', password: 'banana')
user6 = User.create(username: 'Ilolo', password: 'banana')
user7 = User.create(username: 'Vivian', password: 'banana')
user8 = User.create(username: 'Rodney', password: 'banana')
user9 = User.create(username: 'Ethan', password: 'banana')
user10 = User.create(username: 'Stella', password: 'banana')
user11 = User.create(username: 'Irene', password: 'banana')
user12 = User.create(username: 'Lucy', password: 'banana')
user13 = User.create(username: 'Nina', password: 'banana')


puts "🧘🤸 Seeding stretch poses..."

stretch1 = StretchPose.create(
      title: 'Triceps Stretch', 
      image: 'https://media.self.com/photos/5a305dbce1ef6d3e6b8801c5/master/w_1920%2Cc_limit/2_10self.jpg', 
      category:'Beginner',
      description: 'One of the most popular upper-body stretches—loosens up the muscles on the back of your upper arm making it great to do after a long strenious day working on your desk.Procedure:
      Kneel, sit, or stand tall with feet hip-width apart, arms extended overhead.
      Bend your right elbow and reach your right hand to touch the top middle of your back.
      Reach your left hand overhead and grasp just below your right elbow.
      Gently pull your right elbow down and toward your head.
      Switch arms and repeat.
      ', 
      is_favoured: 'false', 
      video: "https://youtube.com/embed/hSaqjF0dMMg"
)

stretch2 = StretchPose.create(
      title: "Seated Neck Release",
      image: "https://media.self.com/photos/5a305dbc83ab3f54feacf74c/master/w_960%2Cc_limit/2_12self.jpg",
      category: "Beginner",
      description: "Most people tend to forget to stretch the neck. But relieving tension in your neck can make a positive impact on the rest of your upper body, from your shoulders to your spine.
      How to do it:
     1.Stand with feet shoulder-width apart, or sit down with your back straight and chest lifted.
     2.Drop your left ear to your left shoulder.
     3.To deepen the stretch, gently press down on your head with your left hand.
     4.Hold for 30 seconds to 2 minutes.
      ",
      is_favoured: "true",
      video: "https://youtube.com/embed/mS4S6kos8MM"
)
strech3 = StretchPose.create(
      title: "Butterfly Stretch",
      image: "https://media.self.com/photos/5a305dc79bddcf5b219b2c67/master/w_960%2Cc_limit/2_27self.jpg",
      category: "Beginner",
      description: " Stretches your hips glutes abnd thighs
      Sit tall on the floor with the soles of your feet together, knees bent out to sides.
Hold onto your ankles or feet, engage your abs, and slowly lower your body toward your feet as far as you can while pressing your knees toward the floor.
If you're too tight to bend over, simply press your knees down.
Hold this stretch for 30 seconds to 2 minutes.
      ",
      is_favoured: "true",
      video: "https://youtube/embed/E3611YwA51E"

)


puts "✍🏻🗒️ Seeding comments..."

comment1 = Comment.create(description: "This pose really helped me with my carpal tunnel", user_id: 2, stretch_pose_id: stretch1.id)
comment2 = Comment.create(description: "This pose realy helped relieve the strain on my shoulders", user_id: 2, stretch_pose_id: stretch1.id)

puts "✅ Done seeding!"