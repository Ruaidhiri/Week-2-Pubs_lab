require("minitest/autorun")
require("minitest/rg")
require_relative("../food")


class TestFood < MiniTest::Test

  def setup
    @food = Food.new("Meal", 10, 5)
  end

  def test_name
    assert_equal("Meal", @food.name)
  end

  def test_price
    assert_equal(10, @food.price)
  end

  def test_rejuvenation_level
    assert_equal(5, @food.rejuvenation_level)
  end



end
