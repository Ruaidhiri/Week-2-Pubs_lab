require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")


class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("John", 100, 40)
    @customer2 = Customer.new("Alex", 20, 17)
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


end
