require 'json'
require 'pry'
require_relative '../config/environment'
require "tty-prompt"
prompt = TTY::Prompt.new

puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "} Welcome to BodyWork! {"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts 
user_input = prompt.ask("What is your name?")

selected_user = User.find_name(user_input)
#binding.pry

selected_exercise = prompt.select("Which exercises would you like to see?") do | menu |
    menu.choice "All Exercises"
    menu.choice "My Exercises"
end

    
    
workout = if selected_exercise == "All Exercises"
        all_exercises = Exercise.all
        prompt.select("Pick an exercise:") do | menu |
            all_exercises.each do | exercise |
                menu.choice exercise.name, exercise.id
            end
        end
    elsif selected_exercise == "My Exercises"
        user_exercises = selected_user.exercises
        prompt.select("Pick an exercise:") do | menu |
            # binding.pry 
            user_exercises.each do | exercise |
                menu.choice exercise.name, exercise.id
            end
        end
        #if user picks "squats"
        #we want to return the objects of exercise class
    end
    
    exercise_info = Exercise.find_by(id: workout) 
    # puts exercise_info.name 
    
    #  binding.pry 
    #[#<Exercise id: 9, name: "Crunches", category: "Bodyweight", instructions: "https://www.google.com/url?client=internal-element...">]
    
    p exercise_info
    # puts exercise_info.name 
    # binding.pry 
    # puts exercise_info.category
    # puts exercise_info.instructions 

    # we want the user to be able to cheks it records 



    




# else
#     selected_user.exercises 
binding.pry 
0