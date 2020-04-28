require_relative './player'
require_relative './question'

class Game
  
  def initialize
    @player1 = Player.new("Player1", "P1")
    @player2 = Player.new("Player2", "P2")
    @turn_number = 1

  end


  def next_turn
    puts "----- NEW TURN -----"
    @turn_number += 1    
  end


  def display_turn_status
    # puts "P1: #/3 vs. P2: #/3"
    puts "-- #{@player1.abbrv}: #{@player1.lives}/#{@player1.full_lives} \
    vs.#{@player2.abbrv}: #{@player2.lives}/#{@player2.full_lives} -- "
  end


  def game_over?
    @player1.dead?|| @player2.dead?
  end


  def display_winner()
    if (@player1.dead?) 
      looser = @player1
      winner = @player2
    else 
      looser = @player2
      winner = @player1
    end 
    puts "#{winner.name} wins with a score of #{winner.wins}/#{looser.wins}" #
    puts "----- GAME OVER -----"
    puts "Good bye !"
  end



  def play
    puts "let's play!"
    puts "-----------"
    until (game_over?) do

      question1 = Question.new
      question1.pose_addition_question(@player1.name)
      question1.correct? ? @player1.wins += 1 : @player1.takes_life

      question2 = Question.new
      question2.pose_addition_question(@player2.name)
      question2.correct? ? @player2.wins += 1 : @player2.takes_life

      display_turn_status()
      next_turn()
            
    end
    
    display_winner()
    
    
  end
end
