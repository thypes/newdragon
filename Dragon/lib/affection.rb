class Affection
        attr_reader :affection
    
        #def initialize
            #rand(LOW_AFFECTION..HIGH_AFFECTION)
        #end
        LOW_AFFECTION = 10
        MILD_AFFECTION = 25
        MEDIUM_AFFECTION = 50
        MUCH_AFFECTION = 75
        HIGH_AFFECTION = 100
        STEP_AFFECTION = -25
    
        def initialize
            @affection = rand(LOW_AFFECTION..HIGH_AFFECTION)
        end
    
        def result_affection
            case @affection
            when 0..LOW_AFFECTION
                "Dragon doesn't like you anymore."
            when LOW_AFFECTION..MILD_AFFECTION
                "Dragon snubbing his nose at you."
            when MILD_AFFECTION..MEDIUM_AFFECTION
                "Dragon is not feeling cuddly right now."
            when MEDIUM_AFFECTION..MUCH_AFFECTION
                "Dragon is wanting some attention."
            when MUCH_AFFECTION..HIGH_AFFECTION
                "Dragon wants you to pet him!!"
            end  
        end 
        def step_affection
            @affection += STEP_AFFECTION
         if @affection < 0
            @affection = 0
         end 
         if @affection == 0
            puts "Game over"
        end
     end
end 

