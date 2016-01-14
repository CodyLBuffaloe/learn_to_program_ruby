#A program that sings you 99 Bottles of Beer

bottles_of_beer = 99

while(bottles_of_beer > 0)

    if(bottles_of_beer == 1)
        puts "#{bottles_of_beer} bottle of beer on the waaaaaaallll! Take it down, pass it around, no more bottles of beer on the wall!"
    else
        puts "#{bottles_of_beer} bottles of beer on the wall!, #{bottles_of_beer} bottles or beer, take one down, pass it around, #{bottles_of_beer - 1} bottles of beer on the wall! "
    end

    bottles_of_beer = bottles_of_beer -1
end
=begin
#Shouting and repeating, program won't hear you if you don't capitalize everything,
then have to say bye three times or you can't leave
=end

puts "Say hi to grandma."
response = gets.chomp
bye_count = 0

while(bye_count < 3)

    if(response != response.upcase)
        puts "WHADDAYA SAY, CHILD? I CANNA' HEAR YUH!"
    else
        puts "NO, NOT SINCE #{rand(1930..1950)}!"
    end

    response = gets.chomp

    if(response == "BYE")
        bye_count = bye_count+1
    else
        bye_count = 0
    end
end

#How to tell if any year between a given range is a leap year.

puts "What is the year you'd like to start at?"
year = gets.to_i
puts "What is the year you'd like to end at?"
end_year = gets.to_i

while (year <= end_year)
    if(year % 100 != 0 && year % 4 == 0)
        puts "#{year}"
    elsif(year % 400 == 0)
        puts "#{year}"
    end
    year = year +1
end



