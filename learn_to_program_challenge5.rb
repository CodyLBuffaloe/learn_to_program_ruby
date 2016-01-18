=begin
#Takes an unlimited amount of strings, sorts them, repeats them back to you when you break the loop

puts "Type a word and hit 'Enter'. Do this as many times as you like. When you're done, just hit 'Enter' a second time. "

word = gets.chomp

list = []

while(word != "")

       list.push(word)

       word = gets.chomp
end

puts list.sort


#The same program as above, without using .sort

puts "Type a word, then hit 'Enter'. Do this as many times as you want. To quit, just hit 'Enter' a second time."

word2 = gets.chomp

list2 = []



while(word2 != "")

    list2.push(word2)

    word2 = gets.chomp
end

i = 0

actual_length = list2.length - 2

sorted = false

while(sorted != true)
   sorted = true

    for i in 0..actual_length do

        temp = ""

        if(list2[i].downcase > list2[i+1].downcase)

            sorted = false

            temp = list2[i]

            list2[i] = list2[i+1]

            list2[i+1] = temp


        end
     end
     puts "\n"
     puts list2
end
=end
#Same as the table of contents program from challenge3, only with everything in an array

table_of_contents = ["Table of Contents", "Chapter 1: Numbers", "Page 1", "Chapter 2: Letters", "Page 72", "Chapter 3: Variables", "Page 118"]

line_width = 60

puts table_of_contents[0].center line_width
puts table_of_contents[1].ljust(line_width / 2) + table_of_contents[2].rjust(line_width / 2)
puts table_of_contents[3].ljust(line_width / 2) + table_of_contents[4].rjust(line_width / 2)
puts table_of_contents[5].ljust(line_width / 2) + table_of_contents[6].rjust(line_width / 2)
