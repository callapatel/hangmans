class Game
  attr_accessor :word, :guess, :wrong

  def initialize
    @word = Game.pick_a_word_random
    puts @word.inspect
    @guess = " "
    @done = []
    @wrong = 0
  end

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

  def self.pick_a_word_random #picks a word at random from the array
    words = ['squirrel', 'camel', 'cow', 'dog', 'cat', 'piglet']
    words.sample
  end

  def dashes
    a = @word.length
    #b = a.to_i
    puts "this is the no of letters:"
    puts ('*' * a)
  end

  def userinput
	  puts ("Please enter your guess: ")
    @guess = gets.chomp
    @guess = @guess.downcase
  end


  def ui
  @done << guess
  @done.join("")
  puts @word.tr("^#{@done.join("")}", '*')
  puts "Heres a history of your guesses!"
  be_wrong
  end

  def be_wrong

    if !@word.include?(@guess)
      then @wrong +=1
      puts 'i am wrong'

    end

    if @wrong == 0

    elsif @wrong == 1
      puts "
            |     _________
            |     |/      |
            |     |      (_)
      "
    elsif @wrong == 2
      puts "
            |     _________
            |     |/      |
            |     |      (_)
            |     |      \|/

      "
    elsif @wrong == 3
      puts "
          |     _________
          |     |/      |
          |     |      (_)
          |     |      \|/
          |     |       |

      "
    else
      puts "
          |     _________
          |     |/      |
          |     |      (_)
          |     |      \|/
          |     |       |
          |     |      / \
          |     |
          | ____|___

      "
      abort("no more playing games")
    end
  end
end

c = Game.new
c.draw_hang
  while c.wrong<4
  c.dashes
  c.userinput
  c.ui
  end
