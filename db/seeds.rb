# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts "🧘🤸 Seeding stretch poses..."

stretch1 = StretchPose.create(
      title: 'Triceps Stretch', 
      image: 'https://media.self.com/photos/5a305dbce1ef6d3e6b8801c5/master/w_1920%2Cc_limit/2_10self.jpg', 
      category:'Beginner',
      description: 'One of the most popular upper-body stretches—loosens up the muscles on the back of your upper arm making it great to do after a long strenious day working on your desk",
      "Procedure:",

      "Kneel, sit, or stand tall with feet hip-width apart, arms extended overhead"

      "Bend your right elbow and reach your right hand to touch the top middle of your back"

      "Reach your left hand overhead and grasp just below your right elbow"

      "Gently pull your right elbow down and toward your head"

      "Switch arms and repeat"
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
stretch3 = StretchPose.create(
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
      video: "https://youtube.com/embed/E3611YwA51E"

)
stretch4 = StretchPose.create(
title: "Seated Shoulder Squeeze",
image: "https://media.self.com/photos/5a305dbc2323e96043af7dad/master/w_1600%2Cc_limit/2_11self.jpg",
category: "Beginner",
description: " it relieves poor posture and releases tension in the upper back,
Sit on the floor with your knees bent and feet flat on the floor.
Clasp your hands behind your lower back.
Straighten and extend your arms and squeeze your shoulder blades together.
Do this for 3 seconds and then release. Repeat 5 to 10 times.
Stretches chest, shoulders, upper back
",
is_favoured: "true",
video: "https://youtube.com/embed/XbzY45Z5DE8"


)
stretch5 = StretchPose.create(
      title: "Standing/seated  Hamstring Stretch",
      image: "https://media.self.com/photos/5a305db96c2fc24013a0aa78/master/w_1600%2Cc_limit/2_1Self.jpg",
      category: "Intermediate",
      description: "Stretches neck, back, glutes, hamstrings, calves
      Stand tall with your feet hip-width apart, knees slightly bent, arms by your sides.
Exhale as you bend forward at the hips, lowering your head toward the floor while keeping your head, neck, and shoulders relaxed.
Wrap your arms around backs of your legs and hold anywhere from 45 seconds to 2 minutes.
Bend your knees and roll up when you're done
      ",
      is_favoured: "false",
      video: "https://youtube.com/embed/1rscgJNW27g"
      
      )

stretch6 = StretchPose.create(
      title: "Frog Stretch",
      image: "https://media.self.com/photos/5a305dc583ab3f54feacf750/master/w_1920%2Cc_limit/2_26self.jpg",
      category: "intermediate",
      description: "
      Most of us sit and cross our legs, which can lead to tight hips and result in lower-back pain
Start on all fours.
Slide your knees wider than shoulder-width apart.
Turn your toes out and rest the inner edges of your feet flat on the floor.
Shift your hips back toward your heels.
Move from your hands to your forearms to get a deeper stretch, if possible.
Hold for for 30 seconds to 2 minutes.
Stretches hips, inner thighs",
      
      is_favoured: "false",
      video: "https://youtube.com/embed/bxO4MK8YDWE"
)   



      
puts "✍🏻🗒️ Seeding comments..."

comment1 = Comment.create(description: "This pose really helped me with my carpal tunnel", user_id: 2, stretch_pose_id: stretch1.id)
comment2 = Comment.create(description: "This pose realy helped relieve the strain on my shoulders", user_id: 2, stretch_pose_id: stretch1.id)

puts "Seeding profile..."
profile1 = Profile.create(bio: "fitness-enthusiast", email: "kanyi@gmail.com", user_id: 1)

puts "✅ Done seeding!"