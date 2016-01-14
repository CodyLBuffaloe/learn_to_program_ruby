#This is a ruby comment!

#How many hours are in a year?

hours_per_day = 24
days_per_year = 365
hours_per_year = hours_per_day * days_per_year
puts "There are #{hours_per_year} hours in a normal year."

#How many minutes in a decade?

minutes_per_hour = 60
minutes_per_decade = (minutes_per_hour * hours_per_day) * (days_per_year * 10)

puts "There are #{minutes_per_decade} minutes in a decade."

#How many seconds old are you?

seconds_per_minute = 60
my_age = 25
age_in_seconds = ((seconds_per_minute * minutes_per_hour) * hours_per_day) * (days_per_year * my_age)
puts "I am #{age_in_seconds} seconds old as of my last birthday."

#If I am 1235 million seconds old, how old am i?

years_old = 1235000000 / 30000000
puts "If you were 1235 million seconds old, you'd be #{years_old} years old."