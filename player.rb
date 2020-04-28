class Player 
  attr_reader :name, :abbrv, :full_lives, :MAX_LIVES
  attr_accessor :lives, :wins

  MAX_LIVES = 3

  # abbrv is a name shortening e.g. Player 1 => P1
  def initialize(name, abbrv, lives = MAX_LIVES)
    @name = name
    @abbrv = abbrv
    @lives = lives
    @full_lives = lives
    @wins = 0
    # puts "Player's name is '#{@name}' and has #{@lives} lives" # TEST
  end
  
  def takes_life
    @lives -= 1
    # puts "player (#{@name}) has now #{@lives} remaining lives" # TEST
  end

  def dead?
    @lives <= 0
  end

end


# TEST CODE
# player1 = Player.new('Player1', 'P1', 5)
# player1.takes_life
# puts "player one dead ? -> #{player1.dead?}"
# player1.takes_life
# player1.takes_life
# player1.takes_life
# puts "player one dead ? -> #{player1.dead?}"
# player1.takes_life
# puts "player one dead ? -> #{player1.dead?}"
