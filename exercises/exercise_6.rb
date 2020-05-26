require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Barney", last_name: "Dinosaur", hourly_rate: 14.6)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)

@store2.employees.create(first_name: "Joan", last_name: "Doe", hourly_rate: 50)
@store2.employees.create(first_name: "Jose", last_name: "Silva", hourly_rate: 14.6)
@store2.employees.create(first_name: "James", last_name: "Dean", hourly_rate: 100)

