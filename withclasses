require 'colorize' 
class Board
  def draw_hang
  puts "

    |     _________
    |     |/      |
    |     |
    |     |
    |     |
    |     |
    |     |
    | ____|___


        "
  end
end


class Game
  attr_accessor :word, :guess, :wrong

  def initialize
    @word = Game.pick_a_word_random
    puts @word.inspect
    @guess = " "
    @done = []
    @wrong = 0
  end

#   def draw_hang
#   puts "
# 
#     |     _________
#     |     |/      |
#     |     |
#     |     |
#     |     |
#     |     |
#     |     |
#     | ____|___
# 
# 
#         "
#   end

  def self.pick_a_word_random #picks a word at random from the array
    words = ['squirrel', 'camel', 'cow', 'dog', 'cat', 'piglet']
    words.sample
  end

  def dashes
    a = @word.length
    #b = a.to_i
    puts "here are the letters:"
    puts ('*' * a)
  end

  def userinput
	  puts ("Please enter your guess: ")
    @guess = gets.chomp
    @guess = @guess.downcase
  end

   def samesies
   	  if @word == @guess 
   	  	abort("yay! you got it! smartie") 
   	  end 
   end

  def ui
  @done << guess
  @done.join("")
  puts @word.tr("^#{@done.join("")}", '*')
  puts "Heres a history of your guesses"
  puts @done
  be_wrong
  end

  def be_wrong

    if !@word.include?(@guess)
      then @wrong +=1
      puts 'wrong'
      

    end

    if @wrong == 0
		puts "correct" 
		samesies
    elsif @wrong == 1
      samesies
      puts " 
       
            |     _________
            |     |/      |
            |     |      (_)
      		".red
      
    elsif @wrong == 2
      samesies
      puts "
      
          |     _________
          |     |/      |
          |     |      (_)
          |     |      \\\|/
          |     |

      ".yellow
    elsif @wrong == 3
      samesies
      puts "
    
          |     _________
          |     |/      |
          |     |      (_)
          |     |      \\\|/
          |     |       |
          
      ".green
    else
      samesies
      puts "
          |     _________
          |     |/      |
          |     |      (_)
          |     |      \\\|/
          |     |       |
          |     |      / \\\

      ".cyan
      abort("no more guesses allowed")
    end
  end
end

c = Game.new
Board.new.draw_hang
  while c.wrong<4
  c.dashes
  c.userinput
  c.ui
  end
