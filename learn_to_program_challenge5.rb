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

word = gets.chomp

list = []

while(word != "")
end
