require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../food")


class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("John", 100, 40, 0)
    @customer2 = Customer.new("Alex", 20, 17, 25)
    @food = Food.new("Meal", 10, 5)
  end

  def test_customer_name
    assert_equal("John", @customer1.customer_name)
  end

  def test_wallet
    assert_equal(100, @customer1.wallet)
  end

  def test_age
    assert_equal(40, @customer1.age)
  end

  def test_drunkenness_level
    assert_equal(0, @customer1.drunkenness_level)
  end

  def test_eat_meal_rejuvenates
    @customer2.eat_meal(@food)
    assert_equal(20, @customer2.drunkenness_level)
  end

end
