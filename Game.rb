class Game
    attr_accessor :state
    attr_accessor :current_turn_player
    def initialize (player_one,player_two)
    @state = true
    @current_turn_player = player_one
    end

end