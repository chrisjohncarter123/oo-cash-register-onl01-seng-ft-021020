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
    
    @total = @total - ( @total * @discount / 100.0 )
    
    return "After the discount, the total comes to $#{@total.round}."
  end
end

cr = CashRegister.new(20)

puts cr.discount