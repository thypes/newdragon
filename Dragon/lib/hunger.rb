class Hunger

    LOW_HUNGER = 10
    MILD_HUNGER = 25
    MEDIUM_HUNGER = 50
    MUCH_HUNGER = 75
    HIGH_HUNGER = 100
    STEP_HUNGER = -25

    def initialize
        @hunger = rand(LOW_HUNGER..HIGH_HUNGER)
    end

    def result_hunger
        case @hunger
        when 0..LOW_HUNGER
            "Dragon is very full."
        when LOW_HUNGER..MILD_HUNGER
            "Dragon is full!"
        when MILD_HUNGER..MEDIUM_HUNGER
            "Dragon is not very hungry"
        when MEDIUM_HUNGER..MUCH_HUNGER
            "Dragon is pushing his bowl towards you."
        when MUCH_HUNGER..HIGH_HUNGER
            "Dragon's stomach is growling!"
        end
    end
        def step_hunger
            @hunger += STEP_HUNGER
         if @hunger <= 0
            puts "Game over"
     end  
    end
end

