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


def check_win
  winning_combos = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
]
  # self.board is our updated board
  marks = []
  self.board.each_with_index do |mark, mark_index|
    if mark != " "
      marks << mark_index
    end
    marks
  end
  possible_wins = []
  marks.each do |marked|
    winning_combos.each do |combo|
      if combo.include?(marked)
        possible_wins << combo
      end
    end
  end
  possible_wins.each do |pos|
    if pos.all?{|num| marks.include?(num)}
      return true
    end
  end
end


end


  # board.each_with_index do |item, index|
  #   if item[index] != nil
  #     filled_spots << index
  #   end
  # end

  #will return true or false
  #check if current board contains a winning combo
    #current board is self
    #check by seeing if the array is 


#### What have we done...
  # filled_spots = []
  # if self.board[0] != nil
  #   if self.board[0] == self.board[1] && self.board[0] == self.board[2]
  #     return true
  #   elsif self.board[0] == self.board[3] && self.board[0] == self.board[6]
  #     return true
  #   elsif self.board[0] == self.board[4] && self.board[0] == self.board[8]
  #     return true
  #   end
  # elsif self.board[3] != nil
  #   if self.board[3] == self.board[4] && self.board[3] == self.board[5]
  #     return true
  #   end
  # elsif self.board[6] != nil
  #   if self.board[6] == self.board[7] && self.board[6] == self.board[8]
  #     return true
  #   end
  # elsif self.board[1] != nil
  #   if self.board[1] == self.board[4] && self.board[1] == self.board[7]
  #     return true
  #   end
  # elsif self.board[2] != nil
  #   if self.board[2] == self.board[5] && self.board[2] == self.board[8]
  #     return true
  #   elsif self.board[2] == self.board[4] && self.board[2] == self.board[6]
  #     return true
  #   end
  # else
  #   false
  # end
