require 'pry'

require_relative 'Service/Player_login.rb'
require_relative 'Service/Return_player.rb'
require_relative 'Model/PlayerClass.rb'
require_relative 'runner.rb'


game = Runner.new
game.run
