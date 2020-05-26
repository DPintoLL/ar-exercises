# store and employee are being required from setup
require_relative '../setup'

puts "Exercise 1"
puts "----------"

store = Store.create(
  "name": "Burnaby",
  "annual_revenue": 300000,
  "mens_apparel": true,
  "womens_apparel": true 
)
store = Store.create(
  "name": "Richmond",
  "annual_revenue": 1260000,
  "mens_apparel": false,
  "womens_apparel": true 
)
store = Store.create(
  "name": "Gastown",
  "annual_revenue": 190000,
  "mens_apparel": true,
  "womens_apparel": false
)

# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
puts "Current number of stores", Store.count