#Write a program that asks for input, then returns it in all caps.

puts "Whaddya want?"

response = gets.chomp

puts "WHADDAYA MEAN #{response.upcase}?! YOU'RE FIRED!"
puts " "

#Write a table of contents using .center, .ljust, and /rjust to style it.

line_width = 60
puts "Table of Contents".center line_width
puts "Chapter 1: Numbers".ljust(line_width / 2) + "Page 1".rjust(line_width / 2)
puts "Chapter 2: Letters".ljust(line_width / 2) + "Page 72".rjust(line_width / 2)
puts "Chapter 3: Variables".ljust(line_width / 2) + "Page 118".rjust(line_width / 2)
