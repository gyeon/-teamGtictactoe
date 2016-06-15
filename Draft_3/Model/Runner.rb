require_relative 'services/Player_login.rb'
require_relative 'models/PlayerClass.rb'
require 'pry'

class Runner
  def run
    all_players
    pl = Player_login
    pl.login
    binding.pry

    #a service = service.new
    rp = RegisterPlayer.new

    #result of service = a service.run
    player = rp.run

  # new player
  # new stats 
  # player logs in
  #   store stats
  # player access or player play
  # if player access 
  #   Stats_display
  # if player play
  #   Player_side
  # new game
  # new board
  # game played
  # winner declared
  # stats stored
  # end
end

game = Runner.new
game.run
