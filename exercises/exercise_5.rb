require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum("annual_revenue")
@avg = Store.average("annual_revenue")
@stores_over_1M = Store.where("annual_revenue < ?", 1000000).count

puts "_____________ Company Results _____________"
puts "Company Total Annual Revenue: #{@total_revenue}"
puts "Annual Average per store: #{@avg}"
puts "\# of Stores with >= $1M in annual sales: #{@stores_over_1M}"