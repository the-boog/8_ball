require "colorize"

@answer_key = ["Yes", "No", "Keep Dreaming Cueball", "You Better Put Your Lucky Socks On", "HAHA! NOOB! Definitely Not", "Yeah, I could see that", "Maybe in another Dimension", "You Win, Everytime, With No Exeption"]
@random_colors = [:red, :green, :yellow, :cyan, :white, :blue,]
def launch
    puts "Welcome to the Scientifically Accurate 8 Ball. Absolutely No Magic Here!".colorize(:cyan)
    puts "Ask me a yes or no question, or type quit to exit the program at any time.".colorize(:green)
    puts "---"
    ask_me
end

def random_pick
    pick = @random_colors.sample
    puts @answer_key.sample.colorize(pick)
end

def ask_me
    question = gets.strip
    case question
    when "quit"
        exit
    when "add_answers"
        add_answers
    when "reset_answers"
        @answer_key.clear
        new_answerkey
    when "print_answers"
        puts "---"
        puts @answer_key
        ask_me
    else
        puts "..."
        sleep(1)
        puts "..."
        sleep(1)
        random_pick
        ask_me
    end
end

def new_answerkey
    @answer_key.push("Yes", "No", "Keep Dreaming Cueball", "You Better Put Your Lucky Socks On", "HAHA! NOOB! Definitely Not", "Yeah, I could see that", "Maybe in another Dimension", "You Win, Everytime, With No Exeption")
    launch
end

def add_answers
    puts "Which answer would you like to add? (or type ask to ask a new question)".colorize(:white)
    nuanswer = gets.strip
    case nuanswer
    when "Yes"; "No"; "Keep Dreaming Cueball"; "You Better Put Your Lucky Socks On"; "HAHA! NOOB! Definitely Not"; "Yeah, I could see that"; "Maybe in another Dimension"; "You Win, Everytime, With No Exeption"
        puts "That answer already exist, try again".colorize(:red)
        puts "---"
        add_answers
    when "ask"
        launch
    when "quit"
        exit
    else
        puts "Your answer has been added to the Scientifcally Accurate 8 Ball.".colorize(:green)
        nuanswer = @answer_key.push(nuanswer)
    ask_me
    end
end

#puts "Yes"
#puts "No"
#puts"Keep Dreaming Cueball"
#puts "You Better Put Your Lucky Socks On"
#puts "HAHA! NOOB! Definitely Not"
#puts "Yeah, I Could See That"
#puts "Maybe In Another Dimension"
#puts "You Win, Every Time, No Exceptions"
#random_pick
launch