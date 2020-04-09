class Team

  attr_reader :name, :motto, :heros

  TEAMS = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @heros = params[:heros]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end