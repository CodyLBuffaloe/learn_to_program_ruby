#Takes a block of code, calls it once for each hour that passed, puts "Dong!" for each hour.

time = Time.now.hour

def grandfather_clock time, &block

    if(time > 12)
        time = time - 12
        block.call
    else
        block.call
    end

end

 grandfather_clock Time.now.hour do
    time.times do
    puts "Dong!"
    end
 end

