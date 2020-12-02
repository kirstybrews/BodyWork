require 'json'
require 'pry'
require_relative '../config/environment'
# require 'rest-client'

puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "} Welcome to BodyWork! {"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
puts 
puts "Enter your Name"
user_input = gets.chomp 
response = User.find_by(name: "#{user_input}") 

# binding.pry 
0