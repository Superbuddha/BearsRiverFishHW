class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @fish = []
  end

  def empty_stomach(fish)
    return @fish.length()
end

def eat_fish (fish)
  @fish << fish
end


end
