class Runner
  def run
    pl = Player_login.new
    player = pl.run
    Return_player.new(player).run

  end
end
    #a service = service.new
    # rp = RegisterPlayer.new

    #result of service = a service.run
    # player = rp.run

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



