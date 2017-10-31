# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

puts 'Creating 10 fake tasks...'
stat =["done", "in progress", "to be started"]
10.times do
  task = Task.create(
    name:  Faker::GameOfThrones.character,
    status:  stat.sample)
end
puts 'Finished!'
