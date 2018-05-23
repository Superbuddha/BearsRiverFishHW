require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Cod")
  end

  def test_river_has_a_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_many_fish
    assert_equal(3, @river.fish_count())
end
end
