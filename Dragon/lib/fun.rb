class Fun
        attr_reader :fun
    
        #def initialize
            #rand(LOW_FUN..HIGH_FUN)
        #end
        LOW_FUN = 10
        MILD_FUN = 25
        MEDIUM_FUN = 50
        MUCH_FUN = 75
        HIGH_FUN = 100
        STEP_FUN = -25
    
        def initialize
            @fun= rand(LOW_FUN..HIGH_FUN)
        end
    
        def result_fun
            case @fun
            when 0..LOW_FUN
                "Dragon is not having fun"
            when LOW_FUN..MILD_FUN
                "Dragon is not in a good mood."
            when MILD_FUN..MEDIUM_FUN
                "Dragon is not wanting to have fun."
            when MEDIUM_FUN..MUCH_FUN
                "Dragon is wanting to explore close to home."
            when MUCH_FUN..HIGH_FUN
                "Dragon wants to go on an adventure!"
            end
        end
        def step_fun
                @fun += STEP_FUN
             if @fun < 0
                @fun = 0
             end 
             if @fun ==0
                puts "Game Over"
         end  
        end
    end