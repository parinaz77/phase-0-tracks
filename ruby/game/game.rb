#create game class
class Game
  attr_accessor :guess_word, :game_over
  attr_reader :name, :count, :word
  def initialize (word)  # a word is given to the class as a parameter for the game
    puts"initializing..."
    @word=word
    @count = @word.length
    @guess_word=""
    @guessed_words=[]
    @repeat=true
    @game_over=false
    @result="-"*@word.length
  end
  #create a method to see if any letter of the guesed word is included in the original word
  def feedback(guess_word)
    guessword_array=guess_word.split("")
    word_array=@word.split("")
    guessword_array.each do |letter|
      if word_array.include?(letter)
        @result[word.index(letter)]=letter
      end
    end
    puts "here is your feedback: #{@result}"
  end

  def repeated_word(guess_word)
    if @guessed_words.include?(guess_word)
      puts "word was put before. try another one"
      @repeat=false
    else
      @repeat=true
      @guessed_words << guess_word
    end
  end

  def game_over(guess_word)
    if guess_word == @word
      @game_over=true

      @game_over
    end
    @game_over
  end
end

i = 1
game = Game.new("welcome")
while i < game.word.length+1
  if !game.game_over(@guess_word)
    puts "This is try # #{i}"
    puts" Enter your guess word: "
    @guess_word=gets.chomp
    if game.repeated_word(@guess_word)
      if !game.game_over(@guess_word)
        game.feedback(@guess_word)
      end
    end
  else
    p "You Wone!!"
    return
  end
  i+=1
end
if !game.game_over(@guess_word)
  puts "You Lost!"
end
