class Pub

attr_accessor(:till, :stock)
attr_reader(:pub_name, :drinks)

  def initialize(pub_name, till, drinks)
    @pub_name = pub_name
    @till = till
    @drinks = drinks
    @stock =
    drinks.inject(Hash.new(0)) { |total, drink| total[drink] += 1 ;total}
#
  end

  def check_age(customer)
    if customer.age < 18
      return "Not allowed"
    else
      return "Allowed"
    end
  end

  def sell_drink(customer, drink, pub)
    if check_age(customer) == "Allowed"
      customer.pay_drink(drink, pub)
    else return
    end
  end

  def give_or_refuse_service(customer, drink, pub)
    if customer.drunkenness_level < 20
      customer.sell_drink
    else return
    end
  end

  def check_stock(pub, drink)
    return pub.stock[drink]
  end

  def stock_value
    value = 0
    for drink in @drinks
      value += drink.price
    end
    return value
  end

end
