require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yalestown", annual_revenue: 43000, mens_apparel: true, womens_apparel: true)

# fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable

@mens_stores = Store.where("mens_apparel = true")

# Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.each do |store|
  puts "name: #{store.name}, annual revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")
# Repeat
@womens_stores.each do |store|
  puts "name: #{store.name}, annual revenue: #{store.annual_revenue}"
end