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
    
    if(discount != 1)
      
      @total = @total - ( @total * @discount / 100.0 )
    
      return "After the discount, the total comes to $#{@total.round}."
    end
    
    return "There is no discount to apply."
  end
end

cr = CashRegister.new(20)

puts cr.discount