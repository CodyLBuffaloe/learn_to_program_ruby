#Takes a block of code, calls it once for each hour that passed, puts "Dong!" for each hour.

time = Time.now.hour

def grandfather_clock &block
    block.call

end

grandfather_clock do

  if(time > 12)
         time = time - 12
  end
        time.times do
            puts "Dong!"
        end
end

=being
A bit unsure of the specifications for function. Says I should call block once for each hour of the day.
Does that mean only running the current hour? Or should return all hours previous? Currently returns only the current hour.
=end