#Shows when I will turn 1 billion seconds old

my_birthday = Time.mktime(1990, 11, 9, 3, 33)

puts "I was born on #{my_birthday}"

today = Time.new

puts "Today is #{today}"

my_age = today-my_birthday

puts "I am #{my_age.to_i} seconds old as of today."

billion = (1000000000 - my_age)/30000000

puts "It will be another #{billion.to_i} years until I am 1 billion seconds old."

