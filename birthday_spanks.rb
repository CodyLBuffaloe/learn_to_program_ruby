
puts "What year were you born?"

year = gets.chomp

puts "What month were you born?"

month = gets.chomp

puts "What day were you born?"

day = gets.chomp

birthday = Time.mktime(year.to_i, month.to_i, day.to_i)

today = Time.new

birthday_spanks = (today - birthday)/30000000

puts "You are #{birthday_spanks.to_i} years old! #{birthday_spanks.to_i} Spanks for you!"