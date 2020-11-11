class CashRegister
<<<<<<< HEAD

  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(item_name, price, quantity = 1)
    @total += quantity * price
    quantity.times { @items.push(item_name) }
    @last_transaction.push([item_name, price, quantity])
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total -= (@total *(@discount / 100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    last_transaction = @last_transaction.pop
    @total -= last_transaction[1] * last_transaction[2]
  end

=======
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    
  end
  
  
  
>>>>>>> af7e8af157fd019d5a158c25ac173ca150eea64e
end
