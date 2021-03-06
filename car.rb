class Car
    def initialize
        @fuel = 10
        @distance = 0
    end
    def get_info
        "I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
    end
    def drive(dist)
        if @fuel - dist / 20.0 >= 0
            @distance += dist
            @fuel -= dist / 20.0
            puts "You traveled #{dist} miles. There is #{@fuel} gallons left in your tank."
        else
            @distance += @fuel * 20.0
            @fuel = 0
            puts "You've traveled #{@distance} miles and now you're out of gas!"
        end
    end
    def fuel_up
        fuel_needed = 10 - @fuel
        cost = fuel_needed * 3.50
        @fuel = 10
        puts "That'll cost you #{cost}"
    end
end
