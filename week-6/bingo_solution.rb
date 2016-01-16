# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 7 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Choose random letter 'b', 'i', 'n', 'g', or 'o'.
  # Choose random number from 1-100.
  # Returns letter/number pair to screen.

# Check the called column for the number called.
  # Assign the first column of the board to 'B', the second to 'I', etc.
  # When the letter/number pair is called, check the corresponding column. 
  # (If the letter is 'B', check the first column for the number, etc.) 

# If the number is in the column, replace with an 'x'
  # Do this by checking if the called number == the given index of the associated array.
  # Destructively replace the number with 'X'.

# Display a column to the console
  # For EACH row (nested array), display the associated index that matches the letter to be displayed;
  # The first index for 'B', the second for 'I', etc.

# Display the board to the console (prettily)
  # Print the letters 'B', 'I', 'N', 'G', 'O', spaced to line up with columns of board.
  # Print a line. e.g. "___________________"
  # Print the rows (nested arrays) with a linebreak after each one.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letter = ['B', 'I', 'N', 'G', 'O'].sample
#     @number = rand(1..100)
#     p "#{@letter}#{@number}"
#   end

#   def check

#     if @letter == 'B'
#       counter = 0
#       while counter < @bingo_board.size
#         if @bingo_board[counter][0] == @number
#           @bingo_board[counter][0] = 'X'
#         end
#         counter += 1
#       end
#     elsif @letter == 'I'
#       counter = 0
#       while counter < @bingo_board.size
#         if @bingo_board[counter][1] == @number
#           @bingo_board[counter][1] = 'X'
#         end
#         counter += 1
#       end
#     elsif @letter == 'N'
#       counter = 0
#       while counter < @bingo_board.size
#         if @bingo_board[counter][2] == @number
#           @bingo_board[counter][2] = 'X'
#         end
#         counter += 1
#       end
#     elsif @letter == 'G'
#       counter = 0
#       while counter < @bingo_board.size
#         if @bingo_board[counter][3] == @number
#           @bingo_board[counter][3] = 'X'
#         end
#         counter += 1
#       end
#     elsif @letter == 'O'
#       counter = 0
#       while counter < @bingo_board.size
#         if @bingo_board[counter][4] == @number
#           @bingo_board[counter][4] = 'X'
#         end
#         counter += 1
#       end
#     end
#   end

#   def display
#     puts "|B| |I| |N| |G| |O|"
#     puts "-------------------"
#     @bingo_board.each do |row|
#       puts row.each {|x| x }.join("  ")
#       puts
#     end
#   end

# end

# Refactored Solution/Release 5

class BingoBoard

  def initialize
    @bingo_board = official_board
  end

  def official_board
    board = Array.new(5) { Array.new(5) }
    until board.flatten.length == board.flatten.uniq.length
      board.each do |row|
        row[0] = rand(1..15)
        row[1] = rand(16..30)
        row[2] = rand(31..45)
        row[3] = rand(46..60)
        row[4] = rand(61..75)
      end
    end
    board[2][2] = 'X'
    board
  end

  def call
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
    case @letter
    when 'B'
      @number = rand(1..15)
    when 'I'
      @number = rand(16..30)
    when 'N'
      @number = rand(31..45)
    when 'G'
      @number = rand(46..60)
    when 'O'
      @number = rand(61..75)
    end
    p "#{@letter}-#{@number}"
  end

  def play

    call

    @bingo_board.each{ |row|
      case @letter
      when 'B'
        if row[0] == @number
          row[0] = 'X'
        end
      when 'I'
        if row[1] == @number
          row[1] = 'X'
        end
      when 'N'
        if row[2] == @number
          row[2] = 'X'
        end
      when 'G'
        if row[3] == @number
          row[3] = 'X'
        end
      when 'O'
        if row[4] == @number
          row[4] = 'X'
        end
      end
    }

    display
    winner?

  end

  def display
    puts "|B|  |I|  |N|  |G|  |O|"
    puts "-----------------------"
    @bingo_board.each do |row|
      row.each do |x| 
        if x.to_s.length == 1 
          print " #{x}   "
        else
          print "#{x}   "
        end
      end
      puts
    end
    puts "-----------------------"
  end

  def winner?
    win = false
    b = @bingo_board
    b.each { |row| @win = true if row.uniq == ['X'] }
    b.transpose.each { |row| @win = true if row.uniq == ['X']}
    @win = true if b[0][0] == 'X' && b[1][1] == 'X' && b[2][2] == 'X' && b[3][3] == 'X' && b[4][4] == 'X'
    @win = true if b[4][0] == 'X' && b[3][1] == 'X' && b[2][2] == 'X' && b[1][3] == 'X' && b[0][4] == 'X'
    if @win == true
      puts
      puts "         BINGO!"
      true
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

game = BingoBoard.new
game.play
until game.winner? == true
  game.play
end



#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

    It was very difficult for me to effectively pseudocode for this challenge. I am bad enough as it is
    at psuedocoding, and this was a very complex challenge. I definitely still need to work on my 
    pseudocoding style. I end up still having to do a bunch of the logic while coding.

What are the benefits of using a class for this challenge?

  Since a lot of variables are used in multiple methods for this challenge, a class allowed me to 
  define instance variables that I could reuse in multiple methods. Also, a class allows for me to call
  my created methods onto the class itself. This allows for ease in functionality of the program.

How can you access coordinates in a nested array?
  
  By first iterating over the entire array (e.g. with #each or #map), then by specifying indexes.
  Each time you specify an index (e.g. array[1][2][0]), you get to the next nested array. 

What methods did you use to access and modify the array?
  
  I ended up using a counter to iterate through indexes in my initial solution, but this ended up being
  very messy. I don't know why I didn't just think to use #each until refactoring; I definitely
  explored some rabbit holes! Once I used #each, all I had to do was do a 'case' statement to identify
  which letter was called, then I just accessed values by their indexes (array[index]).

Give an example of a new method you learned while reviewing the Ruby docs. 
Based on what you see in the docs, what purpose does it serve, and how is it called?

  In my refactored version, I used #flatten to combine all the nested arrays into one big array. 
  I combined this with #length to count the number of elements and #uniq to make sure all the values were 
  unique before a new, official board was accepted. It took some trial and error to get this working properly.
  I also found #transpose, which essentially swaps an array's columns and rows. This was very helpful in the
  #winner? method, which I created for fun! 
  

How did you determine what should be an instance variable versus a local variable?

  I made an instance variable when I knew I would want to access it in other methods. I used local variables
  when I knew they were only going to be used in the method they were created.

What do you feel is most improved in your refactored solution?

  I think just how much I was able to condense the code from my initial solution. This is especially true for 
  the #check method, which I changed to #play in my refactored version. Doing this allowed me to just call all the
  other methods within #play, thus making it easier for the user. I also ended up making a #winner? method that, 
  prints "BINGO!" under the board when you've won! I also decided to make the official board for Release 5, which
  made the game go quicker and feel more authentic. I really went all out during the refactoring stage, and it is
  reflected in the hours I spent on this challenge. I know, I know, Timeboxing! I was having fun with this one. :)

=end
