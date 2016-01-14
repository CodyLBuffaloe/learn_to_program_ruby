puts "Type a word and hit 'Enter'. Do this as many times as you like. When you're done, just hit 'Enter' a second time. "
word = gets
list = []
while (word != " ")
       list.push(word)
end
puts list.sort