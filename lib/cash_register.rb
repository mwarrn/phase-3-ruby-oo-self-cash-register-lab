class CashRegister
    attr_accessor :total, :items, :discount, :last_transaction

    def initialize (discount = 0)
        @total = 0
        @items = []
        @discount = discount
    end

    def add_item (title, price, quantity = 1)
        quantity.times do
            self.items << title
        end
        self.last_transaction = price * quantity
        self.total += self.last_transaction
    end

    def apply_discount
        if self.discount > 0
            cash_register_with_discount = (100.00 - self.discount.to_f) / 100
            self.total = (self.total * cash_register_with_discount).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end