# Code your cash register here!
class AmazonTransaction
  attr_accessor :total, :items, :discount, :quantity
    
  def initialize(discount = 0)
    @total = 0
    @items = []
    @@discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total += price
    @items << title
    @quantity = quantity
  end
  
  def apply_discount
    total = price*@@discount
  end
  
  
end