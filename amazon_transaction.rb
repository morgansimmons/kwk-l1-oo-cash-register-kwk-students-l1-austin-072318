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
    if discount == 0
      "No discount to apple"
    else
      discount = (100.0 - @discount)*@total
      new_total = @total = discount
      "You're new total is #{@total.to_i}"
    end
  end
  
  
end