# Code your cash register here!
class AmazonTransaction
  attr_accessor :total, :items, :discount, :quantity
    
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total += price
    @items << title
    @quantity = quantity
  end
  
  def apply_discount
    if @discount == 0
      "No discount to apple"
    else
      a = 100.0 - @discount
      b = a /100.0
      c = b * @total
      
      discount = ( (100.0 - @discount)/100.0 )*@total
      new_total = @total - discount
      @total = new_total.to_i
    end
  end
  
  
end