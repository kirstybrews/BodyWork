require_relative '../config/environment'

kirsty = User.new({name: "Kirsty"})
kirsty.save
romina = User.create({name: "Romina"})

bw_pull_up = Exercise.create({name: "Pull-up", category: "Bodyweight", instructions: "https://www.google.com/url?client=internal-element-cse&cx=002443720644516542879:b1ngobnwydy&q=https://www.acefitness.org/education-and-resources/lifestyle/exercise-library/191/pull-ups/&sa=U&ved=2ahUKEwj4yNrypK3tAhXUQzABHaLMAz0QFjAAegQIBhAB&usg=AOvVaw239E9KOuPuMj2XBMy3qCWo"})
bw_squat = Exercise.create({name: "Squat", category: "Bodyweight", instructions: "https://www.acefitness.org/education-and-resources/lifestyle/exercise-library/135/bodyweight-squat/"})
crunch = Exercise.create({name: "Crunches", category: "Bodyweight", instructions: "https://www.google.com/url?client=internal-element-cse&cx=002443720644516542879:b1ngobnwydy&q=https://www.acefitness.org/education-and-resources/lifestyle/exercise-library/52/crunch/&sa=U&ved=2ahUKEwj3_r_Tpa3tAhWswVkKHQwXBDMQFjAAegQIAxAB&usg=AOvVaw0aLxSSEvnvfraW6SUT7FMy"})

# record1 = Record.new(kirsty, pull_ups, "Body weight", "3")
# record2 = Record.new(romina, squats, "300lbs", "2")
# record3 = Record.new(kirsty, crunches, "Body weight", "12")
# record4 = Record.new(romina, pull_ups, "45lbs", "10")

binding.pry 
puts "HELLO WORLD"
