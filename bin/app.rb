require 'json'
require 'pry'
require_relative '../config/environment'
# require 'rest-client'

puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "} Welcome to BodyWork! {"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts 
puts "Enter your Name"
user_input = gets.chomp #what the user inputs
response = User.find_name(user_input) 
p response


# binding.pry 
0