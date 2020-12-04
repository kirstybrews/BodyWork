require 'pry'
class User < ActiveRecord::Base
    has_many :records
    has_many :exercises, through: :records

    # def self.find_names(name)
    #         self.all.select do |u|
    #             if u.name == name 
    #                 return u
    #         end
    #     end
    # end 

    def self.find_name(user_name)
       user = self.find_by(name: user_name)
       if !user
        new_user = self.create(name: user_name)
        # puts "Welcome, #{new_user.name}!"
       else
        user
        # puts "Welcome back, #{user.name}!"
       end
    end 

    def personal_record(exercise_id)
        exercise = Exercise.find_by(id: exercise_id)
        exercise_array = self.records.select do | record |
            record.exercise_id == exercise_id
        end 
        weights = exercise_array.map do | record |
            record.weight
        end 
        # binding.pry 
        max_weight = weights.max 
        puts "Your PR for #{exercise.name} is #{max_weight}lbs."
    end 

end 