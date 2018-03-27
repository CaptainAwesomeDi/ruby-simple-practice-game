require 'pry'
require './Player'
require './Game'
require './Question'

#
#binding.pry

player1 = Player.new("Player One")
player2 = Player.new("Player Two")

game = Game.new(player1,player2)

while game.state == true do
    question = Question.new()
    question.make_new_question(game.current_turn_player)
    print 'Input your answer here: '
    answer = gets.chomp
    question.check_answer(game.current_turn_player, answer)

    puts "#{player1.name}: #{player1.current_life}/3 and #{player2.name}: #{player2.current_life}/3"
    

    if game.current_turn_player == player1 
        game.current_turn_player = player2
    else
        game.current_turn_player = player1
    end

    if (player1.current_life == 0 || player2.current_life == 0)
        game.state = false
        puts "--------- GAME OVER --------"
        puts "Good Bye!"
        break
    end

    puts "-------- NEW TURN -----------"

end