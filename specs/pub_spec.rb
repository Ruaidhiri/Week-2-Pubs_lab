require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Beer", 5, 1)
    @drink2 = Drink.new("Wine", 4, 2)
    @pub = Pub.new("Black Horse", 0, [@drink1, @drink2])
    @customer1 = Customer.new("John", 100, 40, 0)
    @customer2 = Customer.new("Alex", 20, 17, 0)
    @customer3 = Customer.new("Mary", 100, 23, 25)
  end

  def test_name
    assert_equal("Black Horse", @pub.pub_name)
  end

  def test_till_amount
    assert_equal(0, @pub.till)
  end

  def test_drinks
    assert_equal([@drink1, @drink2], @pub.drinks)
  end

  def test_pays_for_drink
    @customer1.pay_drink(@drink1, @pub)
    assert_equal(95, @customer1.wallet)
  end

  def test_pub_got_money
    @customer1.pay_drink(@drink2, @pub)
    assert_equal(4, @pub.till)
  end

  def test_check_age__old_enough
    assert_equal("Allowed", @pub.check_age(@customer1))
  end

  def test_check_age__too_young
    assert_equal("Not allowed", @pub.check_age(@customer2))
  end

  def test_sell_drink__legal_age
    @pub.sell_drink(@customer1, @drink1, @pub)
    assert_equal(95, @customer1.wallet)
  end

  def test_sell_drink__illegal_age
    @pub.sell_drink(@customer2, @drink1, @pub)
    assert_equal(20, @customer2.wallet)
  end

  def test_gets_drunk
    @customer1.pay_drink(@drink1, @pub)
    assert_equal(1,@customer1.drunkenness_level)
  end

  def test_give_or_refuse_service
    @pub.give_or_refuse_service(@customer3, @drink1, @pub)
    assert_equal(100, @customer1.wallet)
  end

end
