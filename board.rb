require 'pry'
class Board
 attr_accessor :board
   
  def initialize
    @board = [" "," "," ",
              " "," "," ",
              " "," "," "]

  end

  def update(team, square)
    mark = team.side
    self.board[square.to_i - 1] = "#{mark}"
    return self
  end

 def display_board
   puts " #{self.board[0]} " "|"  " #{self.board[1]} " "|" " #{self.board[2]} "
   puts "-----------"
   puts " #{self.board[3]} " "|"  " #{self.board[4]} " "|" " #{self.board[5]} "
   puts "-----------"
   puts " #{self.board[6]} " "|"  " #{self.board[7]} " "|" " #{self.board[8]} "
 end


end


#winning combos as arrays - then loop through them 
self.board[0..2]
self.board[3..5]
self.board[6..8]
self.board[0, 3, 6] 
