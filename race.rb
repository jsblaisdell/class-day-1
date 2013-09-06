class RaceTrack
    def to_s
        puts @cars.join(", ")
    end
    def initialize
        @cars = []
    end
    def add_car(car)
        @cars << car unless @current_race == true
    end
    def start_race
        @current_race = true
        puts "Go!"

    end
end

class RaceCars
    def go
        @speed = rand(60..80)
        puts "The car takes off at #{@speed} MPH!"
    end
end

# ==================

car_1 = RaceCars.new
car_2 = RaceCars.new
car_3 = RaceCars.new
car_4 = RaceCars.new

track = RaceTrack.new
track.add_car(car_1)
track.add_car(car_2)
track.add_car(car_3)
track.add_car(car_4)

track.start_race
