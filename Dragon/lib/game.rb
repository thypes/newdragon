require_relative 'pet'
class Game

    def start 
        @dragon = Pet.new
        main
    end
    
    def display 
    system 'clear'
    puts "--------------------"
    puts "Dragon Gigapet Game"
    puts "--------------------"
    puts "How would you like to interact with your dragon?"
    puts "Affection: #{@dragon.affection}"
    puts "Energy: #{@dragon.energy}"
    puts "Fun: #{@dragon.fun}"
    puts "Hunger: #{@dragon.hunger}"
    end
     
    def main
        loop do
            display
            get_input
        end
    end

    def get_input
        puts "1. I would like to pet my dragon."
        puts "2. I would like to feed my dragon."
        puts "3. I would like to explore with my dragon."
        puts "4. I would like to put my dragon to sleep"
        puts "5. Quit"
        print ">"
         @input = gets.chomp
        if @input == "2"
            @dragon.step_hunger
        elsif @input == "1"
            @dragon.step_affection
        elsif @input == "3"
            @dragon.step_fun
        elsif @input == "4"
            @dragon.step_energy
        elsif @input == "5"
            exit! 
        end 
    end 
 end
