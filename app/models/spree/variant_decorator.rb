Spree::Variant.class_eval do
  alias_method :old_price=, :price=

  def price=(value)
    self.old_price = SpreeLocalize.normalize_number(value)
  end

  [:cost_price, :weight, :height, :width, :depth].each do |attribute|
    define_method("#{attribute}=") do |value|
      write_attribute(attribute, SpreeLocalize.normalize_number(value))
    end
  end
end
