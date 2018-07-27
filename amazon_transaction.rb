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
      "No discount to apply"
    else
      b = @discount /100.0
      c = b * @total
      @total = (@total - c).to_i
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  
end