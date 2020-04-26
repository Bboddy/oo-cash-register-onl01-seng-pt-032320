class CashRegister
  attr_accessor :total, :discount, :cart
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times {
      cart << title
    }
  end
  
  def apply_discount
    self.total = total*(1-discount*0.01)
    return "After the discount, the total comes to $#{self.total.to_i}."
  end
end