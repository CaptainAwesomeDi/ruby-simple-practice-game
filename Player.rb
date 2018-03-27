require 'pry'

#Each Player have 3 life and a name
class Player 
    attr_accessor :current_life
    attr_reader :name
    def initialize (name)
        @current_life = 3
        @max_life = 3
        @name = name
    end

    def reduce_life
        @current_life -= 1
    end
end


