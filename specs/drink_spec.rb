require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")


class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 5, 1)
  end

  def test_name
    assert_equal("Beer", @drink1.drink_name)
  end

  def test_price
    assert_equal(5, @drink1.price)
  end

  def test_alcohol_level
    assert_equal(1, @drink1.alcohol_level)
  end

end
