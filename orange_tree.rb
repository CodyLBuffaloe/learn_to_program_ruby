class OrangeTree
    def initialize

        @age = 1
        @height = 1
        @dead = false
        @oranges = 0
        puts "You planted an orange tree!"

    end

    def height

        puts "Your tree is #{@height} feet tall."

    end

    def oneYearPasses
       @age = @age + 1
       @height = @height + 2
       @oranges = 0
       if(@age >9)
        deadTree
       end

    end

    def countTheOranges

        if((@age >1) and (@age < 5))
            oneYearPasses
            @oranges = 3
            puts "Your tree is #{@age}! You have #{@oranges} oranges this year!"
        elsif((@age > 4 ) and (@age < 7))
            oneYearPasses
            @oranges = 5

            puts "Your tree is #{@age}! You have #{@oranges} oranges this year!"
        elsif((@age > 6) and (@age < 9))
            oneYearPasses
            @oranges = 10

            puts "Your tree is #{@age}! You have #{@oranges} oranges this year!"
        elsif(@age < 2)
            oneYearPasses
            puts "Your tree is too young to produce oranges!"
        else
            deadTree
        end
        if(@oranges == 0)
            oneYearPasses
        end


    end

    def pickAnOrange

        if(@oranges > 0)
            @oranges = @oranges - 1
            puts "You picked an orange. You have #{@oranges} oranges left."
        else
            puts "You have no oranges left to pick this year."
            countTheOranges

        end

    end

    def deadTree

        if(@age > 9)

            puts "Your tree has died! :("
            exit
        else
            puts "Your tree is still alive! Hooray!"
            oneYearPasses
        end

    end

end

tweedles = OrangeTree.new



puts tweedles.countTheOranges
puts tweedles.countTheOranges
puts tweedles.countTheOranges

puts tweedles.pickAnOrange
puts tweedles.pickAnOrange
puts tweedles.pickAnOrange
puts tweedles.pickAnOrange
puts tweedles.pickAnOrange
puts tweedles.pickAnOrange
puts tweedles.pickAnOrange

puts tweedles.countTheOranges
puts tweedles.countTheOranges
puts tweedles.countTheOranges
puts tweedles.countTheOranges




