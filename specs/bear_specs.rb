require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest <MiniTest::Test

  def setup()
    @bear = Bear.new("Henry","Grizzly")
  end

  def test_bear_has_a_name
    assert_equal("Henry", @bear.name)
  end

  def test_bear_has_a_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_empty_stomach
    assert_equal(0, @bear.fish_count())
  end

  def test_eat_fish
  @bear.eat_fish(@fish1)
  assert_equal(1, @bear.fish_count())
  end
end
