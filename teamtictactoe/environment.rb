require 'pry'
require_relative 'computer.rb'
require_relative 'users.rb'
require_relative 'board.rb'

def welcome
  puts "Welcome to Tic-Tac-Toe!"
end
def identify
  puts "Please enter your name:"
  user_name = gets #need a method in Player class for this
  user_name = Users.new
  user_name.name=(user_name)
  return user_name
end
def choose_team
  puts "Would you like to be X's or O's?"
  puts "Enter X or O"
  team_choice = gets.chomp #need method in Player class for this
end
def sides(user, computer)
  user.side = choose_team
  if user.side == "X"
    computer.side = "O"
  else
    computer.side = "X"
  end
end

def rules
  puts "Enter a number between 1-9"
    puts " 1 " "|" " 2 " "|" " 3 "
    puts "-----------"
    puts " 4 " "|" " 5 " "|" " 6 "
    puts "-----------"
    puts " 7 " "|" " 8 " "|" " 9 "
  user_move = gets
end

welcome
player = identify
opponent = Computer.new
sides(player, opponent)
player_firstmove = rules.chomp
game_board = Board.new
game_board = game_board.update(player, player_firstmove)
game_board.display_board
puts "Now it's player 2's move."
#computer's turn
opponent_move = opponent.move(game_board) #will return the square the computer picks 
game_board = game_board.update(opponent, opponent_move)
game_board.display_board
puts "Now it's your turn."
#player's turn
player_move = player.player_move(game_board)
game_board = game_board.update(player, player_move)
game_board.display_board
puts "Now it's player 2's move."
#prompt
#update
#display


