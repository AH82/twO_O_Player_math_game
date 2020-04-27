class Question 
  

  def pose_question
    num1 = rand(20)
    num2 = rand(20)
    puts "what does #{num1} plus #{num2} equal? "
    print "answer: "
    player_answer = gets.chomp.to_i
    puts response_message = player_answer == num1 + num2 ? "YES! You are correct!" : "Seriously? No! Incorrect!"
    player_answer == num1 + num2
  end

end

question1 = Question.new
puts question1.pose_question()
