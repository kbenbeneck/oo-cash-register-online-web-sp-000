class CashRegister


  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.last_tansaction_price = 0
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

  def items=(list)
    @items = list
  end

  def apply_discount
    if
      discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      puts "After the discount, the total comes to $#{self.total}."
    else
      puts "There is no discount to apply."
    end

    end

  def last_tansaction_price=(price)
    @last_tansaction_price = price
  end

  def last_tansaction_price
    @last_tansaction_price
  end

end
