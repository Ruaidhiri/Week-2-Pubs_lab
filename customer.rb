class Customer

attr_accessor(:wallet, :drunkenness_level)
attr_reader(:customer_name, :age)

  def initialize(customer_name, wallet, age, drunkenness_level)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
    @drunkenness_level = drunkenness_level
  end

  def pay_drink(drink, pub)
     @wallet -= drink.price
     pub.till += drink.price
     @drunkenness_level += drink.alcohol_level
  end



end
