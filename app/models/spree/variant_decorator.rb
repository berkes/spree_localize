Spree::Variant.class_eval do
  alias_method :old_price=, :price=

  def price=(value)
    normalized_price = value.to_s.gsub(",", ".")
    self.old_price = normalized_price.to_f
  end
end
