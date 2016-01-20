class OrangeTree
    def initialize

        @age = 0
        @height = 1
        @dead = false
        @oranges = 0

    end

    def height

        while(@dead != true)

            if(@age > 1)

                @height = @height + 3

            end

        end

    end

    def oneYearPasses

        if(@oranges == 0)
            @year = @year + 1
        end

    end

    def count_the_oranges
        while(@dead != true)
            if(@age > 3)
                @orange_count = @orange_count + 5
            else
                puts "This tree is too young to produce oranges yet!"
            end
        end
    end

    def pick_an_orange
        if(@oranges > 0)
            @oranges = oranges -1
            puts "You picked and orange and ate it. It was delicious!"
        else
            puts "You have no more oranges left!"
        end
    end

    def tree_dead
        if(@one_year_passes > 30)
            @dead = true
            puts "Your tree has died! :("
            exit
        end
    end
end

puts OrangeTree.tree_dead