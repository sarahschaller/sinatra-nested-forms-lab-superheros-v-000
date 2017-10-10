class SuperHero
  attr_reader :name, :power, :biography

  SUPERHEROES = []

  def initialize(params)
    @name = params[:name]
    @grade = params[:power]
    @biography = params[:biography]
    SUPERHEROES << self 
  end 

  def self.all 
    SUPERHEROES
  end


end
