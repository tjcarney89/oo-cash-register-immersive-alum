
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction = price
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total -= @discount
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
