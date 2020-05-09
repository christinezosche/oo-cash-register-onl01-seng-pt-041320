class CashRegister
  attr_accessor :total, :discount, :item_price
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    total_item_price = price*quantity
    @total+=total_item_price
    quantity.times @items << title
    @item_price = total_item_price
  end
  
  def apply_discount
    if @discount != 0
      @total = @total - @total*@discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
    
  def items
    @items
  end
    
end
