class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item
  def initialize( discount = 1)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    counter = 0
    
    while counter < quantity do
      counter += 1
      @items = @items.push(title)
    end
    
    @last_item = price - ( price * @discount / 100.0 )
    
  end
  
  def apply_discount
    
    if(discount != 1)
      
      @total = @total - ( @total * @discount / 100.0 )
    
      return "After the discount, the total comes to $#{@total.round}."
    end
    
    return "There is no discount to apply."
  end
  
  def void_last_transaction
    @total -= @last_item
    items.pop()
    if(items.count == 0)
      @total = 0
    end
  end
end

cr = CashRegister.new(20)

puts cr.discount