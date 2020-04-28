class Question 
  
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    
  end

  def pose_addition_question(player)
    puts "#{player}: what does #{@num1} plus #{@num2} equal? "
    print "#{player}'s answer: "
    @player_answer = gets.chomp.to_i
    puts response_message = @player_answer == @num1 + @num2 ? "#{player}: YES! You are correct!" : "#{player}: Seriously? No! Incorrect!"
  end
  
  def correct?
    @player_answer == @num1 + @num2
  end
end


# TEST CODE
# question1 = Question.new
# question1.pose_addition_question("Mohsen")
# puts "is the answer correct?"
# puts question1.correct?
