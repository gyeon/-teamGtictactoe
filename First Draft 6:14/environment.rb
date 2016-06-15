require 'pry'
require_relative 'computer.rb'
require_relative 'users.rb'
require_relative 'board.rb'

def welcome
  puts "Welcome to Tic-Tac-Toe!"
end

def identify(user)
  ask_for_name
  get_user_name(user)
end

def get_user_name(user)
  user_name = gets 
  user.name=(user_name)
  return user_name
end

def ask_for_name
  puts "Please enter your name:"
end

def choose_team
  puts "Would you like to be X's or O's?"
  puts "Enter X or O"
  team_choice = gets.chomp 
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
  rules_board
  user_move = gets
end

def rules_board
  puts "Enter a number between 1-9"
  puts " 1 " "|" " 2 " "|" " 3 "
  puts "-----------"
  puts " 4 " "|" " 5 " "|" " 6 "
  puts "-----------"
  puts " 7 " "|" " 8 " "|" " 9 "
end


# def game_play(user, computer, board)
#   computer_move = computer.move(board) #will return the square the computer picks 
#   board = board.update(computer, computer_move)
#   board.display_board
#   puts "Now it's your turn."
# #player's turn
#   user_move = user.player_move(board)
#   board = board.update(user, user_move)
#   board.display_board
#   puts "Now it's player 2's move."
# end




welcome
user = User.new
player = identify(user)
opponent = Computer.new
sides(player, opponent)
player_firstmove = rules.chomp
game_board = Board.new
#player's first move
game_board = game_board.update(player, player_firstmove)
game_board.display_board

until game_board.check_win == true
  puts "game not won yet"
  opponent_move = opponent.move(game_board)
  game_board = game_board.update(opponent, opponent_move)
  puts "Now it's player 2's move."
  game_board.display_board
  player_move = player.move(game_board)
  game_board = game_board.update(player, player_move)
  game_board.display_board
end
puts "Game Over!"

#prompt
#update
#display


