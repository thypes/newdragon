class Energy
        attr_reader :energy
    
        #def initialize
            #rand(LOW_ENERGY..HIGH_ENERGY)
        #end
        LOW_ENERGY = 10
        MILD_ENERGY = 25
        MEDIUM_ENERGY = 50
        MUCH_ENERGY = 75
        HIGH_ENERGY = 100
        STEP_ENERGY = -25
    
        def initialize
            @energy = rand(LOW_ENERGY..HIGH_ENERGY)
        end
    
        def result_energy
            case @energy
            when 0..LOW_ENERGY
                "Dragon is exhausted."
            when LOW_ENERGY..MILD_ENERGY
                "Dragon is very tired!"
            when MILD_ENERGY..MEDIUM_ENERGY
                "Dragon is feeling lazy."
            when MEDIUM_ENERGY..MUCH_ENERGY
                "Dragon is jumping aroung."
            when MUCH_ENERGY..HIGH_ENERGY
                "Dragon is not going to sleep anytime soon!"
            end
        end
            def step_energy
                @energy += STEP_ENERGY
             if @energy < 0
                @energy = 0
             end 
             if @fun == 0
                puts "Game over"
            end   
        end
    end 