class CashRegister
  
  attr_accessor :total, :discount
  def initialize( discount = 1)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount
    
    @total *= @discount / 100.0.class
  end
end

cr = CashRegister.new(20)

puts cr.discount