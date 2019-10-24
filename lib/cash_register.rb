class CashRegister


  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
  end

  def total=(value)
    @total = value
  end

  def discount=(value)
    @discount = value
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << title
    end

    self.last_tansaction_price = price * quantity
  end

  def items
    @items
  end


end
