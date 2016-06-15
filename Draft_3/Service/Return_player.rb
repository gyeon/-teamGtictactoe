class Return_player
  def initialize(player)
    @player = player
  end
  def run
    check
  end

  def check
    puts "hey"
    #player.name = gina
    #self.player.name = gina

    if Player.all.include?(self.player.name)
      puts "hey"
      ##if array of all_players include grace,
      ##set this grace's stats to that grace
    end
  end


end
