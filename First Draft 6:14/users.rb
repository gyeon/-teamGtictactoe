class User
  attr_accessor :name, :side
  def move(game_board) ##don't need to pass through game_board
    puts "Pick another number"
    square = gets.chomp
  end

end
