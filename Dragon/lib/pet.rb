require_relative 'affection'
require_relative 'energy'
require_relative 'fun'
require_relative 'hunger'
require 'byebug'

class Pet
    def initialize 
        @affection = Affection.new
        @energy = Energy.new
        @fun = Fun.new
        @hunger = Hunger.new
    end 
    def hunger
        @hunger.result_hunger
    end
    def affection
        @affection.result_affection
    end
    def fun
        @fun.result_fun
    end
    def energy
        @energy.result_energy
    end
    def step_hunger
        @hunger.step_hunger
    end
    def step_fun
        @fun.step_fun
    end 
    def step_affection
        @affection.step_affection
    end
    def step_energy
        @energy.step_energy
    end
    def step
        @hunger.step_hunger
        @energy.step_energy
        @affection.step_affection
        @fun.step_fun
    end
end


