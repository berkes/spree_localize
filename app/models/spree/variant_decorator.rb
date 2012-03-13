Spree::Variant.class_eval do
  alias_method :old_price=, :price=

  def price=(value)
    self.old_price = SpreeLocalize.normalize_number(value)
  end

  def cost_price=(value)
    write_attribute(:cost_price, SpreeLocalize.normalize_number(value))
  end
end
