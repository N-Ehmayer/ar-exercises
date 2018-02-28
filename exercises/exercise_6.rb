require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
store1 = Store.find(1)
store2 = Store.find(2)

store1.employees.create(first_name: "Rick",
                         last_name: "Sanchez",
                         hourly_rate: 70)

store1.employees.create(first_name: "Morty",
                         last_name: "Cobb",
                         hourly_rate: 40)

store1.employees.create(first_name: "Oliver",
                         last_name: "Tree",
                         hourly_rate: 60)

store2.employees.create(first_name: "Nic",
                         last_name: "Ehmayer",
                         hourly_rate: 90)

store2.employees.create(first_name: "Felix",
                         last_name: "Greer",
                         hourly_rate: 60)




# @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)



