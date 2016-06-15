require 'pry'

class Computer
  attr_accessor :side, :compboard
  

  def move(board)
    self.compboard=(board)

    square = rand(1..9)-1
    unless self.compboard.board[square] == nil 
      return square
    else
      square = rand(1..9)-1
    end
  end
end

# we weant to return an updated board so that they can choose 