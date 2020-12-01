require_relative '../config/environment'

kirsty = User.new({name: "Kirsty"})
kirsty.save 
romina = User.create({name: "Romina"})


# pull_ups = Exercise.new("Body weight", "Pull-ups", "Hang from the bar, lift your chin over")
# squats = Exercise.new("Body weight","Squats", "Slowly lower so that your thighs are perpendicular to the ground")
# crunches = Exercise.new("Body weight", "crunches", "Lay on the ground, bring the upper back of your body towards your legs")

# record1 = Record.new(kirsty, pull_ups, "Body weight", "3")
# record2 = Record.new(romina, squats, "300lbs", "2")
# record3 = Record.new(kirsty, crunches, "Body weight", "12")
# record4 = Record.new(romina, pull_ups, "45lbs", "10")

binding.pry 
puts "HELLO WORLD"
