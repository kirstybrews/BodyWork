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

selected_exercise = prompt.select("Which exercises would you like to do?") do | menu |
    menu.choice "See All Exercises"
    menu.choice "See My Exercises"
    menu.choice "Create New Exercise"
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
    if 
        #if user picks "squats"
        #we want to return the objects of exercise class
end
    
exercise_info = Exercise.find_by(id: workout) 
    # puts exercise_info.name 
    #  binding.pry 
    #[#<Exercise id: 9, name: "Crunches", category: "Bodyweight", instructions: "https://www.google.com/url?client=internal-element...">]
    
p exercise_info

new_exercise = if selected_exercise == "Create New Exercise"
    exercise_name = prompt.ask("What is the name of the exercise?")
    category = prompt.select("What is the exercise category?") do | menu |
        menu.choice "Bodyweight"
        menu.choice "Abs"
        menu.choice "Upperbody"
        menu.choice "Lowerbody"
        menu.choice "Kettlebells"
    end
    instructions = prompt.ask("Please include some instructions?")
    Exercise.create(name: exercise_name, category: category, instructions: instructions)
end

create_new_record = prompt.ask?("Would you like to log your exercise?") do | menu |
    menu.choice "Yes"
    menu.choice "No"
end

if create_new_record == "Yes"
    new_record = Record.create(user_id: selected_user.id, exercise_id: .id, weight: 0, sets: 3, total_reps: 15)
end


    # puts exercise_info.name 
    # binding.pry 
    # puts exercise_info.category
    # puts exercise_info.instructions 

    # we want the user to be able to cheks it records
user_records = selected_user.records
p user_records





    




# else
#     selected_user.exercises 
binding.pry 
0