require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


Store.create(
  "name": "Surrey",
  "annual_revenue": 224000,
  "mens_apparel": false,
  "womens_apparel": true 
)
Store.create(
  "name": "Whistler",
  "annual_revenue": 1900000,
  "mens_apparel": true,
  "womens_apparel": false 
)
Store.create(
  "name": "Yaletown",
  "annual_revenue": 430000,
  "mens_apparel": true,
  "womens_apparel": true
)

puts "Current number of stores", Store.count

@mens_stores = Store.where(mens_apparel: true)
@womens_stores_1M = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

puts "_____ Stores that carry Men's Apparel _____"
@mens_stores.each do |store|
  puts "Store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

puts "_____ Stores that carry Womens's Apparel _____"
puts "_________ With < $1M annual revenue __________"
# This is the only way I got the 2nd where clause to work, other than writing the whole expression with "" and using '?'. Why can't we just say annual_revenue: < 1000000 or "anual_revenue < 1000000" ???
@womens_stores_1M.each do |store|
  puts "Store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end