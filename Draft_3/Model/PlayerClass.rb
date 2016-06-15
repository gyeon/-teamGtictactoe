class Player
  attr_accessor :name, :side
  attr_reader :stats
  @@all_players = []
  
  def initialize(name)
    @name = name
    @stats = []
    @side = " "
    @@all_players << self
  end
end