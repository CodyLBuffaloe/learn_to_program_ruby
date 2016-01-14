=begin
This is a multi-line Ruby comment.
Make a program that asks for a person's first, middle, and last name,
and then repeats their whole name back to them
=end

puts "What is your first name?"

first_name = gets.chomp

puts "What is your middle name?"

middle_name = gets.chomp

puts "Finally, what is your last name?"

last_name = gets.chomp

puts "Nice to meet you, " + first_name + " " + middle_name + " " + last_name + "."


#Ask for a person's favorite number, then serve it back to them with 1 added to it

puts "What is your favorite number?"

fav_num = gets.chomp

puts "#{fav_num} is great and all, but have you heard about #{fav_num.to_i + 1}?"

